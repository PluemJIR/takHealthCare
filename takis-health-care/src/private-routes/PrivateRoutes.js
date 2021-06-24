import { Switch, Redirect, Route } from 'react-router-dom'
import React from 'react'
import ConfigRoutes from '../config/routes'

export default function PrivateRoutes(props) {
    const role = props.role || 'guest'

    const allowedRoutes = ConfigRoutes[role].allowedRoutes;
    const redirectRoute = ConfigRoutes[role].redirectRoutes;

    return (
        <Switch>
            {allowedRoutes.map(route => 
            (<Route
                path = {route.url}
                key = {route.url}
                exact
            >
                <route.component setRole={props.setRole}></route.component>
            </Route>
            ))}
            <Redirect to={redirectRoute}></Redirect>
        </Switch>
    )
}

