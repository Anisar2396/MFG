import { useState } from 'react';
import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import  UseStyles from '../Styles/Styles.js';

export default function Login() {
    const Component = () => {
        const [isDisabled, setDisabled] = useState(true);


        return (
            <View style={UseStyles.container}>
                <View>
                    <Text> Bienvenidx </Text>
                    <View>
                        <Text> Inicia Sesión para Continuar</Text>
                    </View>
                </View>
            </View>
        )
    }
}