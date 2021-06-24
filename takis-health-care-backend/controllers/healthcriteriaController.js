const db = require('../models')

const getAllItems = async (req, res) => {
    const allItems = await db.healthcriteria.findAll()
    res.status(200).send(allItems)
}

const getCriteriaById = async (req, res) => {
    const targetId = (req.params.id);
    const targetUser = await db.healthcriteria.findAll({ where: { listid: targetId } });
    res.status(200).send(targetUser);
};

const getCriteriaByHospcode = async (req, res) => {
    const targetHorpcode = req.params.hospcode
    const targetUser = await db.healthcriteria.findAll({ where: {hospcode: targetHorpcode} });
    res.status(200).send(targetUser);
};

const addCriteria = async (req, res) => {
    const newCriteria = await db.healthcriteria.create({
        vcenter : req.body.vcenter,
        hospcode : req.body.hospcode,
        listid: req.body.listid
    })

    res.status(201).send(newCriteria);
};

const updateCriteriaById = async (req, res) => {
    const targetId = req.params.id;
    const targetHorpcode = req.body.hospcode
    const targetCriteria = await db.healthcriteria.findOne({ where: { listid: targetId, hospcode: targetHorpcode} });
    const newCriteria = req.body.vcenter
    if (targetCriteria) {
        await targetCriteria.update({
            vcenter: newCriteria
        })
        res.status(200).send()
    }
}

module.exports = {
    getAllItems,
    getCriteriaById,
    updateCriteriaById,
    addCriteria,
    getCriteriaByHospcode
}