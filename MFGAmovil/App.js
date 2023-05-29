import { useState } from 'react';
import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import UseStyles  from './Styles/Styles.js';
import  Login  from './Login/Login.js';



export default function App() {
  return (
    <View>
      <Login />
      <UseStyles />
    </View>
  );
}

