const express = require('express')
const router = express.Router()
const healthitemlistController = require('../controllers/healthitemlistController')
const passport = require('passport')

const authentication = passport.authenticate('jwt', {session: false})


router.get("/" , authentication, healthitemlistController.getAllItems)
router.get("/:id" , authentication, healthitemlistController.getGroupItems)

module.exports = router