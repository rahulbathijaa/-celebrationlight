import { IInputProps, Input, Text, View } from "native-base";
import { StyleSheet } from "react-native";

interface FormInputProps extends IInputProps {
  errorMsg?: string;
}

export function FormInput(props: FormInputProps) {
  return (
    <View style={styles.formInputContainer}>
      <Input style={styles.formInputInner} {...props} />
      {props.errorMsg && (
        <Text style={styles.errorText} color="danger.300">
          {props.errorMsg}
        </Text>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  formInputContainer: {
    marginTop: 40,
    marginBottom: 40,
    width: 280,
  },
  formInputInner: {
    fontSize: 24,
    height: 60,
  },
  errorText: {
    marginTop: 16,
    fontWeight: "bold",
    fontSize: 16,
  },
});
