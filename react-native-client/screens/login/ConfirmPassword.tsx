import { View, Text, Heading, Button, Input } from "native-base";
import { useState } from "react";
import { StyleSheet } from "react-native";
import { FormInput } from "../../components/AuthComponents";
import AuthScreen from "../../components/AuthScreen";
import { Routes } from "../../constants/Routes";
import { useAuthContext } from "../../context/AuthContext";

const ConfirmPasswordScreen = ({ navigation }) => {
  const { form } = useAuthContext();
  const [confirmPassword, setConfirmPassword] = useState("");

  const isError = !!confirmPassword && form.password !== confirmPassword;

  return (
    <AuthScreen
      primary={{
        isDisabled: !confirmPassword || isError,
        onPress: () => navigation.navigate(Routes.HOME),
      }}
      secondary={{
        onPress: () => navigation.navigate(Routes.PASSWORD),
      }}
    >
      <Heading>Confirm your password</Heading>
      <FormInput
        onChangeText={setConfirmPassword}
        secureTextEntry
        value={confirmPassword}
        placeholder="Confirm your password"
        errorMsg={isError ? "Passwords must match" : undefined}
      />
    </AuthScreen>
  );
};

export default ConfirmPasswordScreen;
