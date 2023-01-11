// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.17;

contract variabes {
    string public String;
    int public Int;
    uint256 public Uint;
    bool public Bool;


    function setUint(uint256 _newUint)  public {
       Uint= _newUint;
    }

    function setInt(int _newInt) public {
        Int = _newInt;
    }

   function setString(string memory _newString) public {
    String = _newString;
   }

   function setBool(bool _newBool) public {
    Bool = _newBool;
   }

  //getter
   function getUint() public view returns(uint256){
    return Uint;
   }

   function getInt() public view returns(int) {
    return Int;
   }

   function getString() public view returns(string memory){
    return String;
   }

   function getBool() public view returns(bool){
    return Bool;
   }



}