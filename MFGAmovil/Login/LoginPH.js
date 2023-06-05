import React, { Component } from 'react';
import { View, Text, TextInput, Button} from 'react-native';
import styles from '../Styles/Styles.js';
import HomeScreen from '../Home/Homescreen.js';

class LoginPH extends Component {
    //+++++++++++++++++++++++++ inicio de sección agregada
    constructor(props){
        super(props);
        this.state = {
            iniciar : false
        }
        //++++++++++++++++++++++++++++++fin de sección agregada
    }
    render() {
        return (
            (!this.state.iniciar) ? 
            <View style={styles.container}>
                <View>
                    <Text style={styles.title}> Iniciar Sesión </Text>
                    <TextInput
                        style={styles.input}
                        placeholder='Usuario'
                        required

                    />
                    <TextInput
                        style={styles.input}
                        placeholder='Contraseña'
                        required
                    />
{/*inicio de sección agregada */}
                    <View style={styles.button}>
                <Button
                    
                    title="Iniciar sesión"
                    onPress={(event) => {
                    // Lógica de inicio de sesión
                    {this.setState({iniciar: true})};
                    }}
                />

            </View>

                </View>

            </View>:
            <View>
                <HomeScreen />
            </View>
            //fin de sección agregada
        )
    };
};

export default LoginPH;