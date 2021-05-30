pragma solidity ^0.6.0;

contract MyContract {
    //Arrays
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["Pippo", "Pluto"];
    
    //we can create an empty array and fill it with variables later on
    string[] public values;
    
    function addValue(string memory _value) public {
        values.push(_value);
    }
    
    function valueCount() public view returns (uint) {
        return values.length;
    }
    
    //we can create an Array of Arraies better known as matrix or 2DArray
    uint[][] public array2D = [[1,2,3], [4,5,6]];
    
}