class LocalizationMap {
  static Map<String, String> get codesEN => {
    "please_enter_your_email": "Please enter your email",
    "enter_a_valid_email": "Enter a valid email",
    "emojis_are_not_allowed": "Emojis are not allowed",
    "please_enter_your_password": "Please enter your password",
    "password_consists_minimum_6_character":
        "Password consists minimum 6 character",
    "please_enter_your_name": "Please enter your name",
    "leading_trailing_space_not_allowed": "Leading trailing space not allowed",
    "invalid_name": "Invalid name",
    "password_must_be_at_least": "Password must be at least 6 characters long.",
    "password_must_contains_at_least_one_number":
        "Password must contain at least one number.",
    "password_must_contains_at_least_one_special_character":
        "Password must contain at least one special character.",
    "password_must_contains_at_least_one_upper_case":
        "Password must contain at least one upper case letter.",
    "password_must_contains_at_least_one_lower_case":
        "Password must contain at least one lower case letter.",
    "please_re_enter_your_password": "Please re-enter your password",
    "password_did_not_match": "Password did not match",
    "please_select_your_date_of_birth": "Please select your date of birth",
    "please_enter_your_otp": "Please enter your OTP",
    "invalid_otp": "Invalid OTP",
    "field_required": "Field required",
    "press_again_to_exit": "Press again to exit",
    "temp_mail_pw": "TempMail.PW",
    "temp_mail": "TempMail",
    "copy": "Copy",
    "excellent": "Excellent",
    "good": "Good",
    "best": "Best",
    "free_Days_trials": "Free 3 Days Trials!",
    "just_search_for_sessions_you_love_and_hit_play":
        "Just Search for sessions you love and hit play",
    "go_premium": "Go Premium",
    "listen_to_any_sessions": "Listen to any Sessions",
    "about_us": "About us",
    "rate_us": "Rate us",
    "privacy_policy": "Privacy Policy",
    "follow_on_page": "Follow on Page",
    "contact_us": "Contact us",
    "inbox": "Inbox",
    "save_changes": "Save Changes",
    "user_name": "Username",
    "select_domain": "Select domain...",
    "change_mail": "Change Mail",
    "random_mail": "Random Mail",
    "get_your_instant_temp_mail_address": "Get Your Instant Temp Mail Address.",
  };

  static String getTranslatedValues(String key) {
    return codesEN[key] ?? "Text not found";
  }
}

extension Localize on String {
  String L() {
    return LocalizationMap.getTranslatedValues(this);
  }
}
