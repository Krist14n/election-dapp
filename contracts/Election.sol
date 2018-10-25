pragma solidity ^0.4.2;


contract Election {

    //Model a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    //Store Candidates
    mapping(uint => Candidate) public candidates;

    //Fetch Candidate
    //Store Candidates Count
    uint public candidatesCount;

    //Constructor
    constructor() public {
        addCandidate("Kristian");
        addCandidate("Giovana");
        addCandidate("Guillermo");
    }

    //Add candidate
    function addCandidate (string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
