const db = require('../models')

const getAllItems = async (req, res) => {
    const allItems = await db.advicelist.findAll()
    res.status(200).send(allItems)
}

const getAllItemsById = async (req, res) => {
    const targetId = req.params.id;
    const allItems = await db.advicelist.findAll({ where: { itemid: targetId } })
    res.status(200).send(allItems)
}

const getAdviceByHospcode = async (req, res) => {
    const targetHorpcode = req.params.hospcode
    const targetUser = await db.advicelist.findAll({ where: {hospcode: targetHorpcode} });
    res.status(200).send(targetUser);
};

const addAdvice = async (req, res) => {
    const newAdvice = await db.advicelist.create({
        itemid : req.body.itemid,
        hospcode : req.body.hospcode,
        desc : req.body.desc,
    })

    res.status(201).send(newAdvice);
};

const deleteAdviceByid = async (req, res) => {
    const targetId = req.params.id;
    const targetAdvice = await db.advicelist.findOne({ where: { id: targetId } });
    if (targetAdvice) {
        await targetAdvice.destroy();
        res.status(204).send()
    }
}

module.exports = {
    getAllItems,
    addAdvice,
    deleteAdviceByid,
    getAllItemsById,
    getAdviceByHospcode
}