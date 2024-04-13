// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyMapping {
    // Mapping

    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;

    constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    struct Book {
        string title;
        string author;
    }

    function addBooks(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    // Nested Mapping 

    mapping (address => mapping (uint => Book)) public myBooks;
    function addMyBooks(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}
