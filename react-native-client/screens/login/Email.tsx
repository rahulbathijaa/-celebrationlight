import { View, Text, Heading, Button, Input } from "native-base";
import { StyleSheet } from "react-native";
import { FormInput } from "../../components/AuthComponents";
import AuthScreen from "../../components/AuthScreen";
import { Routes } from "../../constants/Routes";
import { useAuthContext } from "../../context/AuthContext";

const EmailScreen = ({ navigation }) => {
  const { form, setFormFields } = useAuthContext();
  return (
    <AuthScreen
      primary={{
        isDisabled: !form.email,
        onPress: () => navigation.navigate(Routes.PASSWORD),
      }}
      secondary={{
        onPress: () => navigation.navigate(Routes.DISPLAY_NAME),
      }}
    >
      <Heading>Hi {form.displayName}! What's your email?</Heading>
      <FormInput
        onChangeText={(value) => setFormFields({ email: value })}
        value={form.email}
        placeholder="Enter your email"
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

export default EmailScreen;
