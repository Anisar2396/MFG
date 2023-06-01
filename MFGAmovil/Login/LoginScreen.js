import React, { Component } from 'react';
import { View } from 'react-native';
import LoginPH from './LoginPH.js';
import ButtonLogin from './ButtonLogin.js';

class LoginScreen extends Component {
    render() {
        return (
           <View>
                <View >
                    <LoginPH />
                    <ButtonLogin />
                </View>
           </View> 
        );
    };
};

export default LoginScreen;