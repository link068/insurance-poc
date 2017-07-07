function NewApplicationForm(name,email,mobile,address,ssn,dob,occupation,salary,education) {
	this.name=name;
	this.email=email;
	this.mobile=mobile;
	this.address=address;
	this.ssn=ssn;
	this.dob=dob;
	this.occupation=occupation;
	this.salary=salary;
	this.education=education;
	this.status="new";
};

function NewApplicationForm(applicationId,name,email,mobile,address,ssn,dob,occupation,salary,education,status,policy) {
	this.applicationId=applicationId;
	this.name=name;
	this.email=email;
	this.mobile=mobile;
	this.address=address;
	this.ssn=ssn;
	this.dob=dob;
	this.occupation=occupation;
	this.salary=salary;
	this.education=education;
	this.status=status;
	this.policy=policy;
};