import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import { useState } from 'react';

export default function UseStyles() {
  const Component = () => {
    const [isDisabled, setDisabled] = useState(true);
    const estilos = UseStyles([isDisabled])



    const styles = StyleSheet.create({
      container: {
        flex: 1,
        backgroundColor: '#fff',
        alignItems: 'center',
        justifyContent: 'center',
        Text: {
          fontSize: 20,
          fontWeight: 'bold',
        }
      },
    });

  }
}