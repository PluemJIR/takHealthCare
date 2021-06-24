const express = require('express')
const router = express.Router()
const advicelistController = require('../controllers/advicelistController')
const passport = require('passport')

const authentication = passport.authenticate('jwt', {session: false})

router.get("/" , authentication, advicelistController.getAllItems)
router.get("/:id" , authentication, advicelistController.getAllItemsById)
router.post('/', authentication, advicelistController.addAdvice)
router.delete('/:id', authentication, advicelistController.deleteAdviceByid)
router.get("/hospcode/:hospcode" , authentication, advicelistController.getAdviceByHospcode)

module.exports = router