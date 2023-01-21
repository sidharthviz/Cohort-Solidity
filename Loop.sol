// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Loop {
    function foo() public pure {
       for(uint i =0;i<1000;i++){
         if(i==3)
           continue;
          else {
           if(i==5)
             break;
           
         }
       }
       uint K;

       while (K < 1000){
         K++;
       } 
       do 
        K = K * 2;    
       while(K < 2000);     
    }
}
    

    

