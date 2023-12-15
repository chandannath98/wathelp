class API {
  static const baseUrl = "https://apijobpilot.templatecookie.com/api";

  //Authentication
  static const login = "/login";
  static const register = "/register";
  static const forgetPassword = "/password/email";
  static const resetPassword = "/password/reset";

  //Home
  static const homeBrowse = "/home";
  static const candidateDashboard = "/candidate/dashboard";

  //Jobs
  static const job = "/jobs";
  static const candidateJob = "/candidate/jobs";
  static const candidateJobApply = "/candidate/jobs/apply";
  static const jobTypes = "/job-types";
  static const jobCategories = "/categories";
  static const jobBookmarkSuffix = "/bookmark";

  //Companies
  static const company = "/companies";

  //Settings
  static const resumeList = "/candidate/resumes";

  //Others
  static const popularTag = "/popular-tags";
}
