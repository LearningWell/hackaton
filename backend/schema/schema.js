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
      information: { type: GraphQLString },
      quantity: { type: GraphQLString },
      barcode: { type: GraphQLString },
      certification: {
        type: GraphQLList(CertificationType),
        async resolve(parent, args) {
          const res = await client.query(
            "SELECT * from certification where certificationid = ANY($1)",
            [parent.certifications]
          );
          return res.rows.map(certification => ({
            ...certification,
            id: certification.certificationid
          }));
        }
      },
      manufacturer: {
        type: ManufacturerType,
        async resolve(parent, args) {
          const res = await client.query(
            "SELECT * from manufacturer where manufacturerId=$1",
            [parent.manufacturerid]
          );
          return res.rows[0];
        }
      }
    })
  });

  const CertificationType = new GraphQLObjectType({
    name: "Certification",
    fields: () => ({
      id: { type: GraphQLInt },
      name: { type: GraphQLString },
      img: { type: GraphQLString },
      information: { type: GraphQLString }
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
          console.log(res.rows[0]);
          return { ...res.rows[0], id: res.rows[0].productid };
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
          return res.rows.map(product => ({
            ...product,
            id: product.productid
          }));
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
          return res.rows.map(manufacturer => ({
            ...manufacturer,
            id: manufacturer.manufacturerid
          }));
        }
      },
      manufacturers: {
        type: GraphQLList(ManufacturerType),
        async resolve(parent, args) {
          const res = await client.query("SELECT * from manufacturer");
          return res.rows.map(manufacturer => ({
            ...manufacturer,
            id: manufacturer.manufacturerid
          }));
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
          img: { type: GraphQLString },
          information: { type: GraphQLString },
          quantity: { type: GraphQLString },
          manufacturerid: { type: new GraphQLNonNull(GraphQLInt) },
          barcode: { type: GraphQLString }
        },
        async resolve(parent, args) {
          const score = Math.max(Math.min(args.score, 5), 0);
          const res = await client.query(
            "INSERT INTO product (name, score, img, information, manufacturerid, quantity, barcode) VALUES($1, $2, $3, $4, $5, $6, $7) RETURNING productId",
            [
              args.name,
              score,
              args.img,
              args.information,
              args.manufacturerid,
              args.quantity,
              args.barcode
            ]
          );
          console.log(res.rows[0].productid);
          return { id: res.rows[0].productid };
        }
      }
    }
  });
  return new GraphQLSchema({
    query: RootQuery,
    mutation: Mutation
  });
}

module.exports = main;
