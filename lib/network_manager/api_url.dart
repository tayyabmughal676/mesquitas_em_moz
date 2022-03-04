// api urls
// https://quicktow.jinnbytedev.com
const String kGoogleApiKey = "AIzaSyB20XGkT-LGQV7DexxbA5_q_HQrss1moSQ";

// BaseUrl
const String baseUrl = "http://34.221.104.212:81";
// Auth
const String loginApiUrl = "$baseUrl/api/Account/LoginUser";
const String signUpApiUrl = "$baseUrl/api/Account/RegisterUser";
const String forgotPasswordApiUrl = "$baseUrl/api/Account/ForgotPassword";
const String getCaseManagerApiUrl = "$baseUrl/api/Users/GetCaseManagers";
const String getTherapistApiUrl = "$baseUrl/api/Users/GetTherapists";
const String getTodayLessonApiUrl = "$baseUrl/api/Lessons/GetTodayLesson/";

const String getMyLessonHistoryApiUrl =
    "$baseUrl/api/Lessons/GetMyLessonHistory/";

const String getSoberCounterApiUrl = "$baseUrl/api/Users/GetSoberCounter/";
const String getMyProgramApiUrl = "$baseUrl/api/Lessons/GetMyProgram/";
const String getAssessmentApiUrl =
    "$baseUrl/api/Lessons/GetAssessmentQuestionsByLessonId/";

//Note
const String getNotesApiUrl = "$baseUrl/api/Notes/GetNotes/";
const String savedNoteApiUrl = "$baseUrl/api/Notes/SaveNote/";
const String deleteNoteApiUrl = "$baseUrl/api/Notes/DeleteNote/";

//Payment Intent
const String getPaymentIntentApiUrl = "$baseUrl/api/Users/GetPaymentIntent/";

const String saveManagerAndTherapistApiUrl =
    "$baseUrl/api/Users/SaveManagerAndTherapist/";
const String updateSoberCounterApiUrl =
    "$baseUrl/api/Users/UpdateSoberCounter/";

const String signUpPhotoApiUrl =
    "$baseUrl/api/user/account/UploadProfilePicture/";
const String editProfileApiUrl = "$baseUrl/api/Account/UpdateUser";
const String editProfilePhotoUploadApiUrl =
    "$baseUrl/api/Account/UploadProfile/";
const String discountedShopsApiUrl =
    "$baseUrl/api/user/QrCode/GetDiscountedShops/";
const String verifyQRCodeScanApiUrl = "$baseUrl/api/user/QrCode/QrCodeScan/";
