import { View, Text, Heading, Button, Input } from "native-base";
import { StyleSheet } from "react-native";
import { Routes } from "../constants/Routes";
import { useAuthContext } from "../context/AuthContext";

const HomeScreen = ({ navigation }) => {
  const { form, setFormFields } = useAuthContext();
  console.log(form);
  return (
    <View style={styles.root}>
      <Heading>Sup {form.displayName}, you're in boi</Heading>
      <Button
        disabled={!form.displayName}
        shadow={2}
        onPress={() => {
          setFormFields({
            displayName: undefined,
            email: undefined,
            password: undefined,
          });
          navigation.navigate(Routes.WELCOME);
        }}
      >
        Logout
      </Button>
    </View>
  );
};

const styles = StyleSheet.create({
  root: {
    alignItems: "center",
    padding: 40,
    gap: 20,
  },
});

export default HomeScreen;
