import React, {Component} from 'react';
import {StyleSheet, View, requireNativeComponent, Text} from 'react-native';
const Switch = requireNativeComponent('Switch');
export default class App extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Switch style={styles.nativeBtn} isOn={false} />
      
      </View>
    );
  }
}
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'pink',
    alignItems: 'center',
    justifyContent: 'center',
  },
  nativeBtn: {
    height: 100,
    width: 300,
    backgroundColor: 'yellow',
  },
});
