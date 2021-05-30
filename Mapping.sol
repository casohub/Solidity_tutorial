pragma solidity ^0.6.0;

contract MyContract {
    //Mapping : a key based value storage
    //mapping(keyValueType => valuesValueType) public myMapping;
    mapping(uint => string) public names;
    
    constructor() public {
        names[1] = "Pippo";
        names[2] = "Pluto";
        names[3] = "Pallino";
    }
    
    //the cool thing about mapping is that we can create a mapping of our own costumed data structures
    // mapping(uint => DataStructure) public myMapping;
    mapping(uint => Book) public books;
    
    struct Book {
        string title;
        string author;
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    //Nasted mapping => a mapping that return a mapping
    //mapping(key => mapping(key2 => value2)) public myMapping;
    //we can use the address as a key to assign the values referred to a specific user, like the books that someone have
    mapping(address => mapping(uint => Book)) public myBooks;

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        //msg.sender catch the address of the person that call that function
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}