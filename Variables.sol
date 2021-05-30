pragma solidity ^0.6.0;

contract Smartcontract{
    
    //State Variables
    //stored in the blockchain
    uint public Svar = 1;
    
    
    //Local Variables
    //store a variable locally  

    function getValue() public pure returns(uint) {
        uint Lvar = 1;
        return Lvar;
    }

    //uint = unsigned integer -> can't be negative (by default uint = uint256)
    //uint256 or uint8 or ... = uint with limited space
    //int = integer
    //string = "Hello, World!!"
    //bytes32 = "Hello, World!!"
    //address = anEtheriumBlockchainAddressWithoutQuotationMarks
    
    //DATA STRUCTURES//

    struct Person {
        uint id;
        string name;
    }
    
    Person public person1 = Person (1, "Mario");
}