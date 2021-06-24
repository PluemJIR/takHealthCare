const express = require('express')
const router = express.Router()
const co_officeController = require('../controllers/co_officeController')

router.get("/" , co_officeController.getAllItems)

module.exports = router