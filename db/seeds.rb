# Create sample People
person1 = Person.create(
  typeKey: "student",
  stateKey: "active",
  name: "John Doe",
  descr: { "notes": "Sample student" },
  pictureDocumentId: "abc123",
  meta: { "key": "value" }
)
person2 = Person.create(
  typeKey: "faculty",
  stateKey: "active",
  name: "Jane Smith",
  descr: { "notes": "Sample faculty" },
  pictureDocumentId: "def456",
  meta: { "key": "value" }
)

# Create sample Terms
term1 = Term.create(
  typeKey: "academic",
  stateKey: "active",
  name: "Spring 2023",
  descr: { "notes": "Sample term" },
  code: "SP23",
  startDate: Date.new(2023, 1, 15),
  endDate: Date.new(2023, 5, 15),
  meta: { "key": "value" }
)
term2 = Term.create(
  typeKey: "academic",
  stateKey: "active",
  name: "Fall 2023",
  descr: { "notes": "Sample term" },
  code: "FA23",
  startDate: Date.new(2023, 8, 15),
  endDate: Date.new(2023, 12, 15),
  meta: { "key": "value" }
)

# Create sample Registration Requests
request1 = RegistrationRequest.create(
  typeKey: "course",
  stateKey: "pending",
  effectiveDate: Date.new(2023, 1, 10),
  expirationDate: Date.new(2023, 1, 20),
  name: "Sample Request 1",
  descr: { "notes": "Sample request" },
  person: person1,
  term: term1,
  submittedDate: Date.new(2023, 1, 5),
  processResults: { "status": "processing" },
  itemStudentIds: "123,456",
  itemStudentPopulationId: "population123",
  meta: { "key": "value" }
)
request2 = RegistrationRequest.create(
  typeKey: "course",
  stateKey: "approved",
  effectiveDate: Date.new(2023, 8, 1),
  expirationDate: Date.new(2023, 8, 15),
  name: "Sample Request 2",
  descr: { "notes": "Sample request" },
  person: person2,
  term: term2,
  submittedDate: Date.new(2023, 7, 20),
  processResults: { "status": "completed" },
  itemStudentIds: "789,101",
  itemStudentPopulationId: "population456",
  meta: { "key": "value" }
)

# Create sample Registration Request Items
RegistrationRequestItem.create(
  typeKey: "item",
  stateKey: "pending",
  effectiveDate: Date.new(2023, 1, 10),
  expirationDate: Date.new(2023, 1, 20),
  name: "Item 1",
  descr: { "notes": "Sample item" },
  registration_request: request1,
  person: person1,
  requestedEffectiveDate: Date.new(2023, 1, 10),
  existingRegistrationId: "reg123",
  existingActivityOfferingId: "activity123",
  preferredActivityOfferingIds: "activity456,activity789",
  preferredFormatOfferingIds: "format123",
  preferredRegistrationGroupIds: "group123,group456",
  preferredCredits: 3.0,
  preferredGradingOptionIds: "grading123",
  processResults: { "status": "processing" },
  resultingRegistrationId: "reg456",
  courseWaitlistEntryId: "waitlist123",
  processingPriority: 1,
  lastAttendanceDate: Date.new(2023, 1, 15),
  notificationDate: Date.new(2023, 1, 8),
  meta: { "key": "value" }
)