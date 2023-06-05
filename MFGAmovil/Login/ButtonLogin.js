import React, { Component } from 'react';
import { View, Button } from 'react-native';
import styles from '../Styles/Styles.js';



class ButtonLogin extends Component {
        render()
        { 
            return(
            <View  style={styles.container}>
                <Button
                   
                    title="Iniciar sesión"
                    onPress={(event) => {
                    // Lógica de inicio de sesión
                    }}
                />

            </View>
        );
    };

};

export default ButtonLogin;