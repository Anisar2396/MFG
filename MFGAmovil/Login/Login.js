import React, { Component } from 'react';
import { View, Text, TextInput, Button } from 'react-native';
import styles from '../Styles/Styles.js';

class Login extends Component {
    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.title}> Iniciar Sesión </Text>
                <TextInput
                    style={styles.input}
                    placeholder='Usuario'


                />
                <TextInput
                    style={styles.input}
                    placeholder='Contraseña'
                />
                <Button
                    title="Iniciar sesión"
                    onPress={() => {
                        // Lógica de inicio de sesión
                    }}
                />


            </View>
        );
    };
};

export default Login;