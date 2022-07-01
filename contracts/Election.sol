pragma solidity ^0.4.2;

contract Election
{
    struct Candidate 
    {
        uint id;
        string name;
        uint votes;
    }

    mapping(uint => Candidate) public candidates;

    uint public candidateCount;


    function Election () public
    {
        addCandidate("Candy 1");
        addCandidate("Candy 2");
    }
    function addCandidate(string _name) private
    {
        candidateCount++;
        candidates[candidateCount]= Candidate(candidateCount, _name, 0);
    }
}