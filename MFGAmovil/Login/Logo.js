import React, {Component} from 'react';
import { View, Image } from 'react-native';
import styles from '../Styles/Styles';


class Logo extends Component {
    render(){
        return(
            <View>
                <Image
                    style={styles.img}
                    source={require('../assets/destino.png')}
                />  
            </View>
        );
    };
};


export default Logo;