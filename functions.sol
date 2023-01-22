// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract FunctionLab{

  uint a;
  uint b;

  constructor(uint _a, uint _b) {
      a = _a;
      b = _b;
  }

   function summation() private view  returns(uint c) {
     return a+b;
   }
    function Add() external view returns(uint){
       uint d = summation();
       return d;
    } 

   function summation2() private view  returns (uint d) {
       return a-b;
   }
    function Substract() external view returns (uint){
      uint f = summation2();
      return f;
    } 

   function summation3() private view returns(uint e) {
       return a*b; 
   } 
   function Multiply() external view returns(uint){
      uint m = summation3();
      return m;
   }

   function summation4() private view returns(uint p) {
       return a/b;
   }
   function Divide() external view returns (uint) {
      uint K = summation4();
      return K;
   } 
}