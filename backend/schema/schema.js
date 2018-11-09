const graphql = require('graphql');
const _ = require('lodash');
const mongoose = require('mongoose');
const Book = require('../models/book');
const Author = require('../models/author');
const Product = require('../models/product');
const Manufacturer = require('../models/manufacturer');

const {GraphQLObjectType, GraphQLString, GraphQLSchema, GraphQLID, GraphQLInt, GraphQLList, GraphQLNonNull} = graphql;

/*
mongoose.connect('mongodb://localhost/graphqldb');
mongoose.connection.once('open', function(){
    console.log('Connection has been made, now make fireworks.');
}).on('error', function(error){
    console.log('Connection error: ', error);
});
*/

const mockProducts = [{
    name: "Mjölk",
    score: Math.round(Math.random()*5+1),
    manufacturerId: "1"
},
{
    name: "Köttfärs",
    score: Math.round(Math.random()*5+1),
    manufacturerId: "3"
},
{
    name: "Godis",
    score: Math.round(Math.random()*5+1),
    manufacturerId: "2"
}
];

const mockManufacturers = [{
    id: "1",
    name: "LearningWell",
},
{
    id: "2",
    name: "MachineFood",
},{
    name: "StarMeat Inc",
}
];


const BookType = new GraphQLObjectType({
    name: 'Book',
    fields: () => ({
        id: {type: GraphQLID},
        name: {type: GraphQLString},
        genre: {type: GraphQLString},
        author: {
            type: AuthorType,
            resolve(parent, args){
               return Author.findById(parent.authorId);          
           }
        }
    })
});
const AuthorType = new GraphQLObjectType({
   name: 'Author',
   fields: () => ({
       id: {type: GraphQLID},
       name: {type: GraphQLString},
       age: {type: GraphQLInt},
       books: {
           type: GraphQLList(BookType),
           resolve(parent, args){
               return Book.find({authorId: parent.id});
           }
       }
   })
});

const ProductType = new GraphQLObjectType({
    name: 'Product',
    fields: () => ({
        id: {type: GraphQLID},
        name: {type: GraphQLString},
        score: {type: GraphQLInt},
        manufacturer:  {
            type: ManufacturerType,
            resolve(parent, args){
                return mockManufacturers.find(x => x.id === parent.manufacturerId)
            }
        }
    })
});


const ManufacturerType = new GraphQLObjectType({
    name: 'Manufacturer',
    fields: () => ({
        id: {type: GraphQLID},
        name: {type: GraphQLString},
        products: {
            type: GraphQLList(ProductType),
            resolve(parent, args){
                return Product.find({manufacturerId: parent.id});
            }
        }
    })
});





 const RootQuery = new GraphQLObjectType({
     name: 'RootQueryType',
     fields: {
         product: {
             type: ProductType,
             args: {id: {type: GraphQLID}},
             resolve(parent, args){
                 return mockProducts.find(x => x.id === args.id);
             }
         },
         products: {
             type: GraphQLList(ProductType),
             resolve(parent, args){
                 return mockProducts;
             }
         },
         searchProducts: {
             type: GraphQLList(ProductType),
             args: {name: {type: GraphQLString}},
             resolve(parent, args){
                 return mockProducts.filter(x => x.name.includes(args.name));
             }
         },
         manufacturer: {
             type: ManufacturerType,
             args: {id: {type: GraphQLString}},
             resolve(parent, args){
                 return mockManufacturers.find(x => x.id === args.id);
             }
         },
         manufacturers: {
            type: GraphQLList(ManufacturerType),
            resolve(parent, args){
                return mockManufacturers;
            }
         },
         book: {
             type: BookType,
             args: {id: {type: GraphQLID}},
             resolve(parent, args){
                return Book.findById(args.id);
            } 
         },
         books: {
             type: GraphQLList(BookType),
             resolve(parent, args){
                 return Book.find({});
             }
            },
         author: {
            type: AuthorType,
            args: {id: {type: GraphQLID}},
            resolve(parent, args){
              return Author.findById(args.id);
            }
        },
        authors: {
            type: GraphQLList(AuthorType),
            resolve(){
                return Author.find({});
            }
        }
     }
 })


const Mutation = new GraphQLObjectType({
    name: 'Mutation',
    fields: {
        addAuthor: {
            type: AuthorType,
            args: {
                name: { type: new GraphQLNonNull(GraphQLString) },
                age: { type: new GraphQLNonNull(GraphQLInt) }
            },
            resolve(parent, args){
                let author = new Author({
                    name: args.name,
                    age: args.age
                });
                return author.save();
            }
        },
        addBook: {
            type: BookType,
            args: {
                name: {type: new GraphQLNonNull(GraphQLString)},
                genre: {type: new GraphQLNonNull(GraphQLString)},
                authorId: {type: new GraphQLNonNull(GraphQLID)}
            },
            resolve(parent, args){
                let book = new Book({
                    name: args.name,
                    genre: args.genre,
                    authorId: args.authorId
                });
                return book.save();
            }
        }
    }
})




module.exports = new GraphQLSchema({
    query: RootQuery,
    mutation: Mutation
})