const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const manufacturerSchema = new Schema({
    name: String,
});


const ManufacturerModel = mongoose.model('Manufacturer', manufacturerSchema);
module.exports = ManufacturerModel;