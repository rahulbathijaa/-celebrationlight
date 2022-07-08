import { View, StyleSheet, ImageBackground } from "react-native";
import { Text, Image, Button, IButtonProps, ITextProps } from "native-base";
import logo from "../assets/images/celebration-light-icon.png";
import background from "../assets/images/text-background.png";
import { KeyboardAwareScrollView } from "react-native-keyboard-aware-scroll-view";

interface AuthScreenProps {
  children: React.ReactNode;
  primary: IButtonProps;
  secondary: ITextProps;
}

const AuthScreen = ({ children, primary, secondary }: AuthScreenProps) => {
  return (
    <KeyboardAwareScrollView>
      <ImageBackground
        imageStyle={styles.background}
        source={background}
        resizeMode="cover"
      >
        <View style={styles.root}>
          <Image
            source={logo}
            alt="helmet-background"
            style={styles.backgroundIcon}
          />
          {children}
          <Button {...primary} style={styles.submitButton}>
            <Text fontSize={24} fontWeight={700} color="white">
              {primary.children ?? "Next"}
            </Text>
          </Button>
          <Text {...secondary} style={styles.secondary}>
            {secondary.children ?? "Back"}
          </Text>
        </View>
      </ImageBackground>
    </KeyboardAwareScrollView>
  );
};

const styles = StyleSheet.create({
  root: {
    alignItems: "center",
    fontFamily: "Scout",
    paddingTop: 80,
    justifyContent: "space-between",
  },
  background: {
    width: "100%",
    height: "100%",
    opacity: 0.3,
  },
  secondary: {
    fontSize: 24,
    lineHeight: 72,
  },
  backgroundIcon: {
    height: 240,
  },
  submitButton: {
    backgroundColor: "rgba(60, 100, 177, 1)",
    borderRadius: 5,
    width: 290,
    height: 56,
  },
});

export default AuthScreen;
