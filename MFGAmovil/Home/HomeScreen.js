import React, { Component } from 'react';
import { View, Text, Button } from 'react-native';
import styles from '../Styles/Styles.js';
import LoginScreen from '../Login/LoginScreen.js';

class HomeScreen extends Component {
    constructor(props){
        super(props);
        this.state = {
            cerrar : false
        }
    }
    render() {
        return (
            
            !this.state.cerrar?
           <View>
                <View style = {styles.container}>
                    <Text>Bienvenidx a MFGA</Text>
                </View>
                <View style={styles.button}>
                <Button
                    
                    title="Cerrar sesion"
                    onPress={(event) => {
                    // Lógica de inicio de sesión
                    {this.setState({cerrar: true})};
                    }}
                />

            </View>
           </View> :

           <View>
            
            <View>
                <LoginScreen />
            </View>
           </View>
        );
    };
};

export default HomeScreen;