// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract together {

    // public variables here

string public Token_Name= "CELYO";
string public Token_Abbrv= "CEY";
uint public Total_Supply= 2000;


    // mapping variable here

mapping(address => uint) public balances;

    // mint function

function mint(address payable Addr1, uint Amt1) public returns (uint, uint){
  return  (Total_Supply += Amt1, balances[Addr1] += Amt1);
}
    // burn function

function burn(address Addr2, uint Amt2) public  returns (uint, uint) {
    if (balances[Addr2] >= Amt2){
        return (Total_Supply -= Amt2, balances[Addr2]-= Amt2);
    } else {
        return (Total_Supply, balances[Addr2]);
    }
    
}
}
