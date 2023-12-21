class API {
  static const baseUrl = "https://apijobpilot.templatecookie.com/api";
  static const posts = "/posts";
  static const about = "/about";
  static const contacts = "/contact";
  static const faq = "/faq";
  static const refundPolicy = "/refund-policy";
  static const privacyPolicy = "/privacy-policy";
  static const termCondition = "/terms-condition";

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
  static const candidateAppliedJob = "/candidate/applied-jobs";
  static const candidateJobAlerts = "/candidate/job-alert";
  static const candidateJobApply = "/candidate/jobs/apply";
  static const jobTypes = "/job-types";
  static const jobCategories = "/categories";
  static const jobBookmarkSuffix = "/bookmark";

  //Companies
  static const company = "/companies";

  //Settings
  static const languages = "/languages";
  static const resumeList = "/candidate/resumes";

  static const candidateSettings = "/candidate/settings";
  static const uploadCandidateResume = "/candidate/upload-resume";
  static const updateCandidateResume = "/candidate/update-resume";
  static const deleteCandidateResume = "/candidate/delete-resume";

  //Others
  static const popularTag = "/popular-tags";
}
