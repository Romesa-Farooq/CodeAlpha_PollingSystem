// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PollingSystem {

    // Candidate names
    string[] public candidates;

    // Votes for each candidate
    mapping(uint => uint) public votes;

    // Constructor runs once when the contract is deployed
    constructor() {
        candidates.push("aLex");
        candidates.push("ella");
        candidates.push("tewksbury");
    }

    // Vote for a candidate
    function vote(uint candidateIndex) public {
        require(candidateIndex < candidates.length, "Invalid candidate");
        votes[candidateIndex]++;
    }

    // Total number of candidates
    function getCandidateCount() public view returns (uint) {
        return candidates.length;
    }
}