import { View, Text, Heading, Button, Input } from "native-base";
import { StyleSheet } from "react-native";
import { FormInput } from "../../components/AuthComponents";
import AuthScreen from "../../components/AuthScreen";
import { Routes } from "../../constants/Routes";
import { useAuthContext } from "../../context/AuthContext";

const DisplayNameScreen = ({ navigation }) => {
  const { form, setFormFields } = useAuthContext();
  return (
    <AuthScreen
      primary={{
        onPress: () => navigation.navigate(Routes.EMAIL),
        isDisabled: !form.displayName,
      }}
      secondary={{
        onPress: () => navigation.navigate(Routes.WELCOME),
      }}
    >
      <Heading>Let's start with your name</Heading>
      <FormInput
        onChangeText={(value) => setFormFields({ displayName: value })}
        value={form.displayName}
        placeholder="Name"
      />
    </AuthScreen>
  );
};

export default DisplayNameScreen;
