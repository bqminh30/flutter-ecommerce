const router = require('express').Router();
const usersController = require('../controllers/usersControllers')
const {verifyToken} = require('../middleware/verifyToken')

router.get("/",verifyToken, usersController.getUser)
router.delete("/",verifyToken, usersController.delete)

module.exports = router;