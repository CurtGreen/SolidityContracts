pragma solidity ^0.4.0;



contract SignUp {
    
    struct Person {
        uint Age;
        string  Name;
    }

    uint membercount = 0;
    mapping (address => uint) userMap;
    Person[] people;
    
    function AddPerson(uint age, string name) public returns (bool) {
        
        if(userMap[msg.sender] == 0){
            membercount++;
            userMap[msg.sender] = membercount;
            people.push(Person(age, name));
            return true;
        } else {
            return false;
        }
    }
    
    function GetName() public view returns (string) {
        return people[userMap[msg.sender]-1].Name;
    }
    
    function GetAge() public view returns (uint) {
        return people[userMap[msg.sender]-1].Age;
    }
    
    function GetAvgAge() public view returns (uint) {
        uint totalYears = 0;
        for(uint i = 0; i < membercount; i++) {
            totalYears += people[i].Age;
        }
        return totalYears / membercount;
    }
}