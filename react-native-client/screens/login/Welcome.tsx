import { StyleSheet } from "react-native";
import { Heading } from "native-base";
import { Routes } from "../../constants/Routes";
import AuthScreen from "../../components/AuthScreen";

function WelcomeScreen({ navigation }) {
  return (
    <AuthScreen
      primary={{
        onPress: () => navigation.navigate(Routes.DISPLAY_NAME),
        children: "Get started",
      }}
      secondary={{
        onPress: () => {},
        children: "I already have an account",
      }}
    >
      <Heading style={styles.heading}>Ready to start celebrating?</Heading>
    </AuthScreen>
  );
}

const styles = StyleSheet.create({
  heading: {
    textAlign: "center",
    fontSize: 48,
    lineHeight: 64,
    fontWeight: "700",
    marginTop: 100,
    marginBottom: 48,
  },
});

export default WelcomeScreen;
