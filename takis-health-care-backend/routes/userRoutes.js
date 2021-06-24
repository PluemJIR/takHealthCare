const express = require('express')
const router = express.Router()
const userController = require('../controllers/userController')

router.get("/" , userController.getAllItems)
router.post('/login', userController.loginUser)
router.post('/register', userController.registerUser)

module.exports = router