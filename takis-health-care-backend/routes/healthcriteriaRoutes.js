const express = require('express')
const router = express.Router()
const healthcriteriaController = require('../controllers/healthcriteriaController')
const passport = require('passport')

const authentication = passport.authenticate('jwt', {session: false})

router.get("/" , authentication, healthcriteriaController.getAllItems)
router.get("/:id" , authentication, healthcriteriaController.getCriteriaById)
router.put('/:id', authentication, healthcriteriaController.updateCriteriaById)
router.post('/', authentication, healthcriteriaController.addCriteria)
router.get("/hospcode/:hospcode" , authentication, healthcriteriaController.getCriteriaByHospcode)

module.exports = router