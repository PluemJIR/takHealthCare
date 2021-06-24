const db = require('../models')

const getAllItems = async (req, res) => {
    const allItems = await db.co_office.findAll()
    res.status(200).send(allItems)
}

module.exports = {
    getAllItems
}