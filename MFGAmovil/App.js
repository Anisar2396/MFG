import React, { Component } from 'react';
import { View } from 'react-native';
import Login from '../MFGAmovil/Login/Login.js';

class App extends Component {
  render() {
    return (
      <View style={{ flex: 1 }}>
        <Login />
      </View>
    );
  }
}

export default App;
