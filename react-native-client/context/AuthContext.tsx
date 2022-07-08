import { preventAutoHideAsync } from "expo-splash-screen";
import React, { createContext, useContext, useState } from "react";

type FormType = {
  email?: string;
  displayName?: string;
  password?: string;
};

type AuthContextType = {
  form: FormType;
  setFormFields: (formFields: Partial<FormType>) => void;
};

const AuthContext = createContext<AuthContextType>(undefined!);

type AuthProviderProps = {
  children: React.ReactNode;
};

export const AuthProvider = ({ children }: AuthProviderProps) => {
  const [form, setForm] = useState<FormType>({});
  return (
    <AuthContext.Provider
      value={{
        form,
        setFormFields: (formFields) =>
          setForm((prev) => ({
            ...prev,
            ...formFields,
          })),
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};

export const useAuthContext = () => useContext(AuthContext);
