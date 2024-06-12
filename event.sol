// SPDX-License-Identifier: MIT
/*arre bascically tu direct blockchain mai bhej rha hai data toh isi liye terminal mai logs mai jaa kr dehna
padega isse aur ye sb daaps vagera mai kaam aayega jb direct user ko interact krana hai*/

pragma solidity >=0.8.9;
contract Event{
    event balance (address _address, uint value, string message);

    function setdata(uint value)public{
        emit balance(msg.sender,value,"goch ya");
    }
}
