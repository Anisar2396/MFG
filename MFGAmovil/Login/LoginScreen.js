import React, { Component } from 'react';
import { View } from 'react-native';
import LoginPH from './LoginPH.js';
import ButtonLogin from './ButtonLogin.js';
import Logo from './Logo.js';

class LoginScreen extends Component {
    render() {
        return (
           <View>
                <View >
                    <Logo />
                    <LoginPH />
                    <ButtonLogin />
                </View>
           </View> 
        );
    };
};

export default LoginScreen;