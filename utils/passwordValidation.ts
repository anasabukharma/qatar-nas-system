// Password validation utility
export interface PasswordValidation {
  hasLower: boolean;
  hasUpper: boolean;
  hasNumber: boolean;
  hasLength: boolean;
  hasSymbol: boolean;
}

export const validatePassword = (password: string): PasswordValidation => {
  return {
    hasLower: /[a-z]/.test(password),
    hasUpper: /[A-Z]/.test(password),
    hasNumber: /[0-9]/.test(password),
    hasLength: password.length >= 8,
    hasSymbol: /[%$#@&/\-_]/.test(password),
  };
};

export const getPasswordErrors = (validations: PasswordValidation): string[] => {
  const errors: string[] = [];
  
  if (!validations.hasLower) errors.push('حرف صغير واحد على الأقل');
  if (!validations.hasUpper) errors.push('حرف كبير واحد على الأقل');
  if (!validations.hasNumber) errors.push('رقم واحد على الأقل');
  if (!validations.hasLength) errors.push('الحد الأدنى لطول كلمة المرور 8 أحرف');
  if (!validations.hasSymbol) errors.push('رمز واحد على الأقل (% $ # @ & / - _)');
  
  return errors;
};

export const isPasswordValid = (validations: PasswordValidation): boolean => {
  return Object.values(validations).every(Boolean);
};

export const getPasswordErrorMessage = (validations: PasswordValidation): string => {
  const errors = getPasswordErrors(validations);
  if (errors.length === 0) return '';
  
  return `يجب أن تحتوي كلمة المرور على: ${errors.join('، ')}`;
};
