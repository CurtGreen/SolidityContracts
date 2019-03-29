pragma solidity ^0.4.0;

contract Identity {
    string name;
    uint8 age;
    
    function setName(string n) public returns (bool) {
        name = n;
        return true;
    }
    
    function setAge(uint8 a) public returns (bool) {
        age = a;
        return true;
    }
    
    function getName() public view returns (string) {
        return name;
    }
    
    function getAge() public view returns (uint8) {
        return age;
    }
}