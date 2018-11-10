const graphql = require("graphql");
const { Client } = require("pg");
const {
  GraphQLObjectType,
  GraphQLString,
  GraphQLSchema,
  GraphQLInt,
  GraphQLList,
  GraphQLNonNull
} = graphql;

async function main() {
  const client = new Client({
    user: "postgres",
    host: "localhost",
    database: "postgres",
    password: "postgres",
    port: 5432
  });

  await client.connect();

  const ProductType = new GraphQLObjectType({
    name: "Product",
    fields: () => ({
      id: { type: GraphQLInt },
      name: { type: GraphQLString },
      score: { type: GraphQLInt },
      img: { type: GraphQLString },
      manufacturer: {
        type: ManufacturerType,
        async resolve(parent, args) {
          console.log(parent);
          const res = await client.query(
            "SELECT * from manufacturer where manufacturerId=$1",
            [parent.manufacturerid]
          );
          return res.rows[0];
        }
      }
    })
  });

  const ManufacturerType = new GraphQLObjectType({
    name: "Manufacturer",
    fields: () => ({
      id: { type: GraphQLInt },
      name: { type: GraphQLString },
      products: {
        type: GraphQLList(ProductType),
        async resolve(parent, args) {
          console.log(parent.manufacturerId);
          const res = await client.query(
            "SELECT * from product where manufacturerId=$1",
            [parent.manufacturerid]
          );
          return res.rows;
        }
      }
    })
  });

  const RootQuery = new GraphQLObjectType({
    name: "RootQueryType",
    fields: {
      product: {
        type: ProductType,
        args: { id: { type: GraphQLInt } },
        async resolve(parent, args) {
          const res = await client.query(
            "SELECT * from product where productId=$1",
            [args.id]
          );
          return res.rows[0];
        }
      },
      products: {
        type: GraphQLList(ProductType),
        async resolve(parent, args) {
          const res = await client.query("SELECT * from product");
          return res.rows.map(product => ({
            ...product,
            id: product.productid
          }));
        }
      },
      searchProducts: {
        type: GraphQLList(ProductType),
        args: { name: { type: GraphQLString } },
        async resolve(parent, args) {
          const res = await client.query(
            "SELECT * from product where name ilike $1",
            ["%" + args.name + "%"]
          );
          return res.rows;
        }
      },
      manufacturer: {
        type: ManufacturerType,
        args: { id: { type: GraphQLInt } },
        async resolve(parent, args) {
          const res = await client.query(
            "SELECT * from manufacturer where manufacturerId=$1",
            [args.id]
          );
          return res.rows;

          //return mockManufacturers.find(x => x.id === args.id);
        }
      },
      manufacturers: {
        type: GraphQLList(ManufacturerType),
        async resolve(parent, args) {
          const res = await client.query("SELECT * from manufacturer");
          return res.rows;
        }
      }
    }
  });

  const Mutation = new GraphQLObjectType({
    name: "Mutation",
    fields: {
      addProduct: {
        type: ProductType,
        args: {
          name: { type: new GraphQLNonNull(GraphQLString) },
          score: { type: new GraphQLNonNull(GraphQLInt) },
          img: { type: new GraphQLNonNull(GraphQLString) },
          manufacturerid: { type: new GraphQLNonNull(GraphQLInt) }
        },
        async resolve(parent, args) {
          const res = await client.query(
            "INSERT INTO product (name, score, img, manufacturerid) VALUES($1, $2, $3, $4)",
            [args.name, args.score, args.img, args.manufacturerid]
          );
          return res.rows[0];
        }
      }
      /*
      addBook: {    
        type: BookType,
        args: {
          name: { type: new GraphQLNonNull(GraphQLString) },
          genre: { type: new GraphQLNonNull(GraphQLString) },
          authorId: { type: new GraphQLNonNull(GraphQLID) }
        },
        resolve(parent, args) {
          let book = new Book({
            name: args.name,
            genre: args.genre,
            authorId: args.authorId
          });
          return book.save();
        }
      }*/
    }
  });
  return new GraphQLSchema({
    query: RootQuery,
    mutation: Mutation
  });
}

module.exports = main;
