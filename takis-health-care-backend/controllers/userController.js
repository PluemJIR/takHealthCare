const db = require('../models')
const bcryptjs = require('bcryptjs')
const jwt = require('jsonwebtoken')

const getAllItems = async (req, res) => {
    const allItems = await db.user.findAll()
    res.status(200).send(allItems)
}

const loginUser = async (req, res) => {
    const { username, password } = req.body
    const targetUser = await db.user.findOne({where: {username : username} })
    if (!targetUser) {
        res.status(400).send({ message : 'Username or Password is wrong'})
    } else {
        const isCorrectPassword  = bcryptjs.compareSync(password, targetUser.passwords)
        if (isCorrectPassword){
            const payload = {
                username : targetUser.username,
                hospcode : targetUser.hospcode,
                email : targetUser.email,
                id : targetUser.id
            }
            const token = jwt.sign(payload, '1234', {expiresIn: 5400})
            res.status(200).send({
                token: token,
                message: 'Login Successful'
            })
        } else {
            res.status(400).send({ message : 'Username or Password is wrong'})
        }
    }
}

const registerUser = async (req, res) => {
    const { username, email, passwords, hospcode, fullname } = req.body
    const targetUser = await db.user.findOne({ where : { username: username }})
    if (targetUser) {
        res.status(400).send({message: 'Username already taken.'})
    } else {
        const salt = bcryptjs.genSaltSync(12);
        const hashedPassword = bcryptjs.hashSync(passwords, salt)

        await db.user.create({
            username: username,
            passwords: hashedPassword,
            email: email,
            hospcode: hospcode,
            fullname : fullname,
            password_hash: hashedPassword
        })

        res.send('User created')
    }

}

module.exports = {
    getAllItems,
    loginUser,
    registerUser
}