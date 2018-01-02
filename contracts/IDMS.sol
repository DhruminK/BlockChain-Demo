pragma solidity ^0.4.17;
contract IDMS {
	
	// Student Structure
	struct Student {
		string name;
		string GPA;
		bool isInitialized;
	}

	// To map a particular student's roll number to struct
	mapping(uint => Student) StudentIdentity;

	// College Structure
	struct College {
		string name;
	}

	// To map a particular college's ID(given randomly) to struct
	mapping(uint => College) CollegeIdentity;

	// Function to Get Student from StudentIdentity
	function getStudent(uint rollNo) public returns (string, string) {
		if(!StudentIdentity[rollNo].isInitialized) {
			revert();
		} else {
			return (StudentIdentity[rollNo].name, StudentIdentity[rollNo].GPA);
		}
	}
	// Function to Add Student to StudentIdentity
	function addStudent(uint rollNo, string nm, string gp) public {
		var std = StudentIdentity[rollNo];
		if(std.isInitialized) {
			revert();
		} else {
			std.name = nm;
			std.GPA = gp;
			std.isInitialized = true;
		}
	}
}