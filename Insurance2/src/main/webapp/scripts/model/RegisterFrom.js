function CustomerRegisterFrom(name,email,password,mobile,address,ssn,dob,occupation,salary,education) {
		this.name=name;
		this.email=email;
		this.password=password;
		this.mobile=mobile;
		this.address=address;
		this.ssn=ssn;
		this.dob=dob;
		this.occupation=occupation;
		this.salary=salary;
		this.education=education;
};

function CustomerApplicationFrom(name,email,mobile,address,ssn,dob,occupation,salary,education) {
	this.name=name;
	this.email=email;
	this.mobile=mobile;
	this.address=address;
	this.ssn=ssn;
	this.dob=dob;
	this.occupation=occupation;
	this.salary=salary;
	this.education=education;
};

function ReviewFrom(username,email,status) {
		this.username=username;
		this.email=email;
		this.status=status
};

/*function User(userName,password) {
	this.userName=userName;
	this.password=password;
};*/