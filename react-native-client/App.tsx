import { StatusBar } from "expo-status-bar";
import { SafeAreaProvider } from "react-native-safe-area-context";

import useCachedResources from "./hooks/useCachedResources";
import useColorScheme from "./hooks/useColorScheme";
import Navigation from "./navigation";
import { SafeAreaView, StyleSheet, Text } from "react-native";
import WelcomeScreen from "./screens/login/Welcome";
import { NativeBaseProvider } from "native-base";
import { useState } from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import DisplayNameScreen from "./screens/login/DisplayName";
import { Routes } from "./constants/Routes";
import { AuthProvider } from "./context/AuthContext";
import EmailScreen from "./screens/login/Email";
import PasswordScreen from "./screens/login/Password";
import HomeScreen from "./screens/Home";
import ConfirmPasswordScreen from "./screens/login/ConfirmPassword";

const Stack = createNativeStackNavigator();

export default function App() {
  const isLoadingComplete = useCachedResources();
  const [stage, setStage] = useState();
  // const colorScheme = useColorScheme();

  if (!isLoadingComplete) {
    return null;
  } else {
    return (
      <NativeBaseProvider>
        <SafeAreaProvider>
          <NavigationContainer>
            <AuthProvider>
              <Stack.Navigator
                initialRouteName={Routes.WELCOME}
                screenOptions={{
                  headerShown: false,
                }}
              >
                <Stack.Screen name={Routes.WELCOME} component={WelcomeScreen} />
                <Stack.Screen
                  name={Routes.DISPLAY_NAME}
                  component={DisplayNameScreen}
                />
                <Stack.Screen name={Routes.EMAIL} component={EmailScreen} />
                <Stack.Screen
                  name={Routes.PASSWORD}
                  component={PasswordScreen}
                />
                <Stack.Screen
                  name={Routes.CONFIRM_PASSWORD}
                  component={ConfirmPasswordScreen}
                />
                <Stack.Screen name={Routes.HOME} component={HomeScreen} />
              </Stack.Navigator>
              {/* <Onboarding
          pages={[
            {
              backgroundColor: "#fff",
              image: (
                <img
                  src={require("./assets/images/celebration-light-icon.png")}
                />
              ),
              title: "Welcome! Let’s set up bluetooth.",
              subtitle:
                "Make sure the light is turned on. Connect through ‘Celebration Light’ through blueooth.",
            },
            {
              backgroundColor: "#fff",
              // image: <img src={require('./assets/images/celebration-light-icon.png')} />,
              title: "Tell us a bit about yourself",
              subtitle: <input type="input" placeholder="Enter your name" />,
            },
          ]}
        /> */}
            </AuthProvider>
          </NavigationContainer>
        </SafeAreaProvider>
      </NativeBaseProvider>
    );
  }
}
