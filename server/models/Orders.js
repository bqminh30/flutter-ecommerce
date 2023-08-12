const mongoose = require("mongoose");

const OrderSchema = new mongoose.Schema(
  {
    userId: {type: String, required: true},
    customerId: {type: String, required: true},
    productId : {
        type: mongoose.Schema.Types.ObjectId,
        ref: "Cart"
    },
    quantity: {type: Number, required: true},
    subtotal: {type: Number, required: true},
    delivery_status: {type: String, required: true, default: "peding"},
    payment_status: {type: String, required: true, },
    total: {type: Number, required: true}
  },
  { timestamps: true }
);

module.exports = mongoose.model("Order", OrderSchema);