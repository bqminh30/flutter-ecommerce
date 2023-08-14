const router = require('express').Router();
const productController = require("../controllers/productsController");

router.post('/', productController.createProduct);
router.get('/', productController.getAllProduct);
router.get('/:id', productController.getProduct);
router.get('/search/:key', productController.searchProducts);

module.exports = router;