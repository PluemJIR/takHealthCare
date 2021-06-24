const db = require('./models')
const express = require('express')
const app = express()
const healthitemlistRoutes = require('./routes/healthitemlistRoutes')
const healthcriteriaRoutes = require('./routes/healthcriteriaRoutes')
const advicelistRoutes = require('./routes/advicelistRoutes')
const co_officeRoutes = require('./routes/co_officeRoutes')
const userRoutes = require('./routes/userRoutes')
const cors = require('cors')

require('./config/passport/passport')

app.use(cors())
app.use(express.json())
app.use(express.urlencoded({extended:false}))

app.use('/item', healthitemlistRoutes)
app.use('/criteria', healthcriteriaRoutes)
app.use('/advice', advicelistRoutes)
app.use('/office', co_officeRoutes)
app.use('/user', userRoutes)

app.listen(8000, ()=> {
    console.log('Server is running at 8000')
})