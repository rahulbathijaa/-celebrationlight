import { View, Text, Heading, Button, Input } from "native-base";
import { useState } from "react";
import { StyleSheet } from "react-native";
import { FormInput } from "../../components/AuthComponents";
import AuthScreen from "../../components/AuthScreen";
import { Routes } from "../../constants/Routes";
import { useAuthContext } from "../../context/AuthContext";

const PasswordScreen = ({ navigation }) => {
  const { form, setFormFields } = useAuthContext();

  return (
    <AuthScreen
      primary={{
        isDisabled: !form.password,
        onPress: () => navigation.navigate(Routes.CONFIRM_PASSWORD),
      }}
      secondary={{
        onPress: () => navigation.navigate(Routes.EMAIL),
      }}
    >
      <Heading>Let's finish up by creating a password</Heading>
      <FormInput
        onChangeText={(text) => setFormFields({ password: text })}
        secureTextEntry
        value={form.password}
        placeholder="Enter your password"
      />
    </AuthScreen>
  );
};

const styles = StyleSheet.create({
  root: {
    alignItems: "center",
    padding: 40,
    gap: 20,
  },
});

export default PasswordScreen;
