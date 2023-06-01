import React, { Component } from 'react';
import { View, Text, TextInput, } from 'react-native';
import styles from '../Styles/Styles.js';

class LoginPH extends Component {
    render() {
        return (
            <View style={styles.container}>
                <View>
                    <Text style={styles.title}> Iniciar Sesión </Text>
                    <TextInput
                        style={styles.input}
                        placeholder='Usuario'


                    />
                    <TextInput
                        style={styles.input}
                        placeholder='Contraseña'
                    />

                </View>

            </View>
        )
    };
};

export default LoginPH;