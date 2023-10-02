

import 'package:riverpod_boilerplate/src/app_pkg.dart';

import 'storage_constant.dart';

class ApiUrl {
  ApiUrl._();

  static const String login = '/user/login/';
  static const String googleSignInOrSignUpPostUrl = '/user/api/social/google/';
  static const String registerUrl = '/customer/register/';
  static const String profileGetUrl = '/user/profile/';
  static const String changePasswordPostUrl = '/user/change-password/';
  static const String forgetPasswordPostUrl = '/user/forget-password/';
  static const String newsLetterGetUrl = '/user/news-letter/';
  static const String googleLoginPostUrl = '/sellers/google-login/';
  static const String otpSendUrl = '/user/otp_login_save_data/';
  static String verifyOTPPostUrlForAfterReg(String code, String userName) =>
      '/user/otp_login_match_data_return_token/?otp_code=$code&user_name=$userName';
  static const String resetPasswordPutUrl = '/user/reset_password_for_mobile/';
  static String verifyOTPForResetPasswordGetUrl(
      String otpCode, String userName) =>
      '/user/otp_login_match_data_return_token_for_reset/?otp_code=$otpCode&user_name=$userName';
  static const getCountryList =
      '/country_managers/country_list_from_db_without_authorization/';
  static String getHome(int id) => "/products/home-product/?country_id=$id";
  static String getProductDetailsUrl(String productId) =>
      "/products/product-detail/$productId/?country_id=${SharedPreferencesService.instance.getString(StorageConstants.countryId)}";
  static const String getFollowed = "/promoter/get-promoter/";
  static const String getFollowedAndRecommendedUrl =
      "/promoter/follow-recommended/";
  static const String postSubmitReview = "/products/productReview/";
  //e2b
  static const String getDivisions = "/settings/divisions";
  static const String getDistricts = "/settings/districts";
  static const String sendOTP = "/settings/send-otp";
  static const String verifyOTP = "/settings/verify-otp";
}