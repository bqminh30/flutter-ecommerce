const Orders = require('../models/Orders')

module.exports = {
    getUserOrders: async (req, res) => {
        const userId = req.user.id;
        try{
            const userOrders = await Orders.find({userId}).populate(
                {
                    path: "productId",
                    select : '-sizes -oldPrice -description -category'
                }
            ).exec();
            res.status(200).json(userOrders)
        }catch(err){
            res.status(500).json({message: "faild to get orders"})
        }
    }
}