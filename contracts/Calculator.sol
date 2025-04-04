// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./AbstractCalculator.sol";

contract Calculator is AbstractCalculator {
   


 function calculate(uint _a, uint _b, string memory _operation) public pure returns (uint) {
        if(keccak256(abi.encodePacked(_operation)) == keccak256(abi.encodePacked("add"))) {
            return add(_a, _b);
        }
        if(keccak256(abi.encodePacked(_operation)) == keccak256(abi.encodePacked("subtract"))) {
            return subtract(_a, _b);
        }
        if(keccak256(abi.encodePacked(_operation)) == keccak256(abi.encodePacked("multiply"))) {
            return multiply(_a, _b);
        }
        if(keccak256(abi.encodePacked(_operation)) == keccak256(abi.encodePacked("divide"))) {
            return divide(_a, _b);
        }
        revert("Invalid operation");
    }

    // function add(uint256 a, uint256 b) public pure override returns (uint256) {
    //     return a + b;
    // }

    // function subtract(uint256 a, uint256 b) public pure override returns (uint256) {
    //     require(b <= a, "Underflow error");
    //     return a - b;
    // }

    // function multiply(uint256 a, uint256 b) public pure override returns (uint256) {
    //     return a * b;
    // }

    // function divide(uint256 a, uint256 b) public pure override returns (uint256) {
    //     require(b > 0, "Division by zero");
    //     return a / b;
    // }

    // function calculate(uint _a, uint _b, string memory _operation) public pure returns (uint) {
    //     if(keccak256(abi.encodePacked(_operation)) == keccak256(abi.encodePacked("add"))){
    //         return add(_a, _b);
    //     }
    //     if(keccak256(abi.encodePacked(_operation)) == keccak256(abi.encodePacked("subtract"))){
    //         return subtract(_a, _b);
    //     }
    //     if(keccak256(abi.encodePacked(_operation)) == keccak256(abi.encodePacked("multiply"))){
    //         return multiply(_a, _b);
    //     }
    //     if(keccak256(abi.encodePacked(_operation)) == keccak256(abi.encodePacked("divide"))){
    //         return divide(_a, _b);
    //     }
    //     revert("Invalid operation");
    }

   

    
    

