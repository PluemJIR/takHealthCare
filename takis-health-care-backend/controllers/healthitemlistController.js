const db = require('../models')

const getAllItems = async (req, res) => {
    const allItems = await db.healthitemlist.findAll()
    const listName = allItems
    res.status(200).send(listName)
}

const getGroupItems = async (req, res) => {
    const targetGroup = (req.params.id);
    const targetUser = await db.healthitemlist.findAll({ where: { groupid: targetGroup } });
    res.status(200).send(targetUser);
};


module.exports = {
    getAllItems,
    getGroupItems
}