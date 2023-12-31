term = Term.find(2)

course_offering3 = CourseOffering.create(
  typeKey: "course",
  stateKey: "active",
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  name: "Sample Course Offering 3",
  descr: { "notes": "Sample course offering" },
  courseId: "PHYS101",
  term: term,
  courseCode: "PHY101",
  courseOfferingCode: "PHY101_F23",
  subjectAreaId: "PHYS",
  courseNumberSuffix: "101",
  courseOfferingTitle: "Physics I",
  isHonorsOffering: false,
  maximumEnrollment: 60,
  minimumEnrollment: 15,
  gradingOptionId: "A-F",
  studentRegistrationGradingOptionIds: ["A-F"],
  creditOptionId: "4-credits",
  instructors: [{ "name": "Prof. White" }],
  unitsDeploymentOrgIds: ["PhysicsDept"],
  requisiteIds: ["MATH101"],
  restrictionIds: ["registration_restriction_789"],
  campusLocations: ["Main Campus"],
  isEvaluated: true,
  courseOfferingUrl: "https://example.com/phy101",
  meta: { "key": "value" }
)

# Create sample Activity Offerings for CourseOffering 3
activity_offering3_1 = ActivityOffering.create(
  typeKey: "activity",
  stateKey: "active",
  name: "Sample Activity Offering 3-1",
  descr: { "notes": "Sample activity offering" },
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  formatOfferingId: "format789",
  formatOfferingName: "Lecture",
  activityId: "lecture789",
  term: term,
  termCode: "FA23",
  activityCode: "LEC301",
  scheduleIds: ["schedule789"],
  isHonorsOffering: false,
  instructors: [{ "name": "Prof. White" }],
  weeklyInclassContactHours: 3.0,
  weeklyOutofClassHours: 2.0,
  weeklyTotalContactHours: 5.0,
  maximumEnrollment: 60,
  minimumEnrollment: 15,
  isEvaluated: true,
  activityOfferingUrl: "https://example.com/lec301",
  course_offering: course_offering3,
  courseOfferingTitle: "Physics I",
  courseOfferingCode: "PHY101_F23",
  unitsDeploymentOrgIds: ["PhysicsDept"],
  requisiteIds: ["MATH101"],
  restrictionIds: ["registration_restriction_789"],
  meta: { "key": "value" }
)
course_offering4 = CourseOffering.create(
  typeKey: "course",
  stateKey: "active",
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  name: "Sample Course Offering 4",
  descr: { "notes": "Sample course offering" },
  courseId: "ENG101",
  term: term,
  courseCode: "ENG101",
  courseOfferingCode: "ENG101_F23",
  subjectAreaId: "ENG",
  courseNumberSuffix: "101",
  courseOfferingTitle: "English Composition",
  isHonorsOffering: false,
  maximumEnrollment: 45,
  minimumEnrollment: 20,
  gradingOptionId: "A-F",
  studentRegistrationGradingOptionIds: ["A-F"],
  creditOptionId: "3-credits",
  instructors: [{ "name": "Prof. Davis" }],
  unitsDeploymentOrgIds: ["EnglishDept"],
  requisiteIds: [],
  restrictionIds: [],
  campusLocations: ["Main Campus"],
  isEvaluated: true,
  courseOfferingUrl: "https://example.com/eng101",
  meta: { "key": "value" }
)

activity_offering4_1 = ActivityOffering.create(
  typeKey: "activity",
  stateKey: "active",
  name: "Sample Activity Offering 4-1",
  descr: { "notes": "Sample activity offering" },
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  formatOfferingId: "format101",
  formatOfferingName: "Lecture",
  activityId: "lecture101",
  term: term,
  termCode: "FA23",
  activityCode: "LEC401",
  scheduleIds: ["schedule101"],
  isHonorsOffering: false,
  instructors: [{ "name": "Prof. Davis" }],
  weeklyInclassContactHours: 3.0,
  weeklyOutofClassHours: 2.0,
  weeklyTotalContactHours: 5.0,
  maximumEnrollment: 45,
  minimumEnrollment: 20,
  isEvaluated: true,
  activityOfferingUrl: "https://example.com/lec401",
  course_offering: course_offering4,
  courseOfferingTitle: "English Composition",
  courseOfferingCode: "ENG101_F23",
  unitsDeploymentOrgIds: ["EnglishDept"],
  requisiteIds: [],
  restrictionIds: [],
  meta: { "key": "value" }
)
activity_offering3_2 = ActivityOffering.create(
  typeKey: "activity",
  stateKey: "active",
  name: "Sample Activity Offering 3-2",
  descr: { "notes": "Sample activity offering" },
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  formatOfferingId: "format789",
  formatOfferingName: "Lab",
  activityId: "lab789",
  term: term,
  termCode: "FA23",
  activityCode: "LAB302",
  scheduleIds: ["schedule789"],
  isHonorsOffering: false,
  instructors: [{ "name": "Prof. Williams" }],
  weeklyInclassContactHours: 2.0,
  weeklyOutofClassHours: 3.0,
  weeklyTotalContactHours: 5.0,
  maximumEnrollment: 25,
  minimumEnrollment: 5,
  isEvaluated: true,
  activityOfferingUrl: "https://example.com/lab302",
  course_offering: course_offering3,
  courseOfferingTitle: "Introduction to Physics",
  courseOfferingCode: "PHY101_F23",
  unitsDeploymentOrgIds: ["PhysicsDept"],
  requisiteIds: ["PHY100"],
  restrictionIds: [],
  meta: { "key": "value" }
)

activity_offering3_3 = ActivityOffering.create(
  typeKey: "activity",
  stateKey: "active",
  name: "Sample Activity Offering 3-3",
  descr: { "notes": "Sample activity offering" },
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  formatOfferingId: "format890",
  formatOfferingName: "Discussion",
  activityId: "discussion890",
  term: term,
  termCode: "FA23",
  activityCode: "DISC303",
  scheduleIds: ["schedule890"],
  isHonorsOffering: false,
  instructors: [{ "name": "Prof. Williams" }],
  weeklyInclassContactHours: 1.0,
  weeklyOutofClassHours: 2.0,
  weeklyTotalContactHours: 3.0,
  maximumEnrollment: 20,
  minimumEnrollment: 5,
  isEvaluated: true,
  activityOfferingUrl: "https://example.com/disc303",
  course_offering: course_offering3,
  courseOfferingTitle: "Introduction to Physics",
  courseOfferingCode: "PHY101_F23",
  unitsDeploymentOrgIds: ["PhysicsDept"],
  requisiteIds: ["PHY100"],
  restrictionIds: [],
  meta: { "key": "value" }
)

# ... (Code for CourseOffering 4)

activity_offering4_2 = ActivityOffering.create(
  typeKey: "activity",
  stateKey: "active",
  name: "Sample Activity Offering 4-2",
  descr: { "notes": "Sample activity offering" },
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  formatOfferingId: "format202",
  formatOfferingName: "Lab",
  activityId: "lab202",
  term: term,
  termCode: "FA23",
  activityCode: "LAB402",
  scheduleIds: ["schedule202"],
  isHonorsOffering: false,
  instructors: [{ "name": "Prof. Davis" }],
  weeklyInclassContactHours: 2.0,
  weeklyOutofClassHours: 3.0,
  weeklyTotalContactHours: 5.0,
  maximumEnrollment: 30,
  minimumEnrollment: 5,
  isEvaluated: true,
  activityOfferingUrl: "https://example.com/lab402",
  course_offering: course_offering4,
  courseOfferingTitle: "English Composition",
  courseOfferingCode: "ENG101_F23",
  unitsDeploymentOrgIds: ["EnglishDept"],
  requisiteIds: [],
  restrictionIds: [],
  meta: { "key": "value" }
)
course_offering5 = CourseOffering.create(
  typeKey: "course",
  stateKey: "active",
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  name: "Sample Course Offering 5",
  descr: { "notes": "Sample course offering" },
  courseId: "HIST301",
  term: term,
  courseCode: "HIS301",
  courseOfferingCode: "HIS301_F23",
  subjectAreaId: "HIST",
  courseNumberSuffix: "301",
  courseOfferingTitle: "History of Ancient Civilizations",
  isHonorsOffering: false,
  maximumEnrollment: 40,
  minimumEnrollment: 5,
  gradingOptionId: "A-F",
  studentRegistrationGradingOptionIds: ["A-F"],
  creditOptionId: "3-credits",
  instructors: [{ "name": "Prof. Wilson" }],
  unitsDeploymentOrgIds: ["HistoryDept"],
  requisiteIds: ["HIST200"],
  restrictionIds: [],
  campusLocations: ["Main Campus"],
  isEvaluated: true,
  courseOfferingUrl: "https://example.com/his301",
  meta: { "key": "value" }
)

activity_offering5_1 = ActivityOffering.create(
  typeKey: "activity",
  stateKey: "active",
  name: "Sample Activity Offering 5-1",
  descr: { "notes": "Sample activity offering" },
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  formatOfferingId: "format567",
  formatOfferingName: "Lecture",
  activityId: "lecture567",
  term: term,
  termCode: "FA23",
  activityCode: "LEC501",
  scheduleIds: ["schedule567"],
  isHonorsOffering: false,
  instructors: [{ "name": "Prof. Wilson" }],
  weeklyInclassContactHours: 2.0,
  weeklyOutofClassHours: 2.0,
  weeklyTotalContactHours: 4.0,
  maximumEnrollment: 40,
  minimumEnrollment: 5,
  isEvaluated: true,
  activityOfferingUrl: "https://example.com/lec501",
  course_offering: course_offering5,
  courseOfferingTitle: "History of Ancient Civilizations",
  courseOfferingCode: "HIS301_F23",
  unitsDeploymentOrgIds: ["HistoryDept"],
  requisiteIds: ["HIST200"],
  restrictionIds: [],
  meta: { "key": "value" }
)

activity_offering5_2 = ActivityOffering.create(
  typeKey: "activity",
  stateKey: "active",
  name: "Sample Activity Offering 5-2",
  descr: { "notes": "Sample activity offering" },
  effectiveDate: Date.new(2023, 8, 15),
  expirationDate: Date.new(2023, 12, 15),
  formatOfferingId: "format678",
  formatOfferingName: "Discussion",
  activityId: "discussion678",
  term: term,
  termCode: "FA23",
  activityCode: "DISC502",
  scheduleIds: ["schedule678"],
  isHonorsOffering: false,
  instructors: [{ "name": "Prof. Wilson" }],
  weeklyInclassContactHours: 1.0,
  weeklyOutofClassHours: 1.0,
  weeklyTotalContactHours: 2.0,
  maximumEnrollment: 30,
  minimumEnrollment: 5,
  isEvaluated: true,
  activityOfferingUrl: "https://example.com/disc502",
  course_offering: course_offering5,
  courseOfferingTitle: "History of Ancient Civilizations",
  courseOfferingCode: "HIS301_F23",
  unitsDeploymentOrgIds: ["HistoryDept"],
  requisiteIds: ["HIST200"],
  restrictionIds: [],
  meta: { "key": "value" }
)