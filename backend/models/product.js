const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const productSchema = new Schema({
  name: String,
  img: String,
  manufacturerId: String
});

const ProductModel = mongoose.model("Product", productSchema);
module.exports = ProductModel;
