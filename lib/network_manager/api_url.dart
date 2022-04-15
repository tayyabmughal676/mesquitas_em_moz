// api urls
const String kGoogleApiKey = "AIzaSyB20XGkT-LGQV7DexxbA5_q_HQrss1moSQ";

// BaseUrl
const String baseUrl = "https://mesquitasapi.jinnbytedev.com";
// Auth
const String getProvinceApiUrl = "$baseUrl/api/lookups/GetProvinces";

const String getMasjidApiUrl = "$baseUrl/api/user/mosque/GetMosques";
const String getMasjidByProvinceIdApiUrl =
    "$baseUrl/api/user/mosque/GetMosquesByProvinceId?";

const String getMasjidDetailApiUrl = "$baseUrl/api/user/mosque/GetMosque/";
//Duas
const String getDuasTypeApiUrl = "$baseUrl/api/lookups/GetDuaTypes/";
const String getDuaDetailApiUrl = "$baseUrl/api/user/dua/GetDua/";
const String getDuasByTypeIdApiUrl =
    "$baseUrl/api/user/dua/GetDuasByDuaTypeId?";
