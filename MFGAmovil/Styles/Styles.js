import { StatusBar } from 'expo-status-bar';
import { StyleSheet } from 'react-native';






    const styles = StyleSheet.create({
      container: {
       
        backgroundColor: '#fff',
        alignItems: 'center',
        justifyContent: 'center',
        marginBottom: 50,
        width: 350,
        
      },
      title: {
        fontSize: 20,
        fontWeight: 'bold',
        marginBottom: 50,
        marginTop: 300
      },
      input: {
        borderBottomWidth : 1,
        borderColor: 'black',
        paddingVertical: 10,
        paddingHorizontal: 20,
        fontSize:16,
        width: 200,

      },
      img: {
        width: 50,
        height: 50,
        alignItems: 'center',
      },
    
    });

  
export default styles;