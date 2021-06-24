import Home from '../pages/Home/Home'
import Landing from '../pages/Landing/Landing'

const components = {
    Home : {
        url: '/',
        component: Home
    },
    Landing : {
        url: '/landing',
        component: Landing
    }
}

export default {
    guest: {
        allowedRoutes : [components.Home],
        redirectRoutes : "/"
    },
    user: {
        allowedRoutes : [components.Landing],
        redirectRoutes : '/landing'
    }
}