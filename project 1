// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;
contract bank{
    mapping(address=>uint) public balance;
    address public constant blocked = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    modifier onlyBlockedAddress() {
    assert(msg.sender != blocked);
    _;
    }

    function account_creation(address _address, uint value) onlyBlockedAddress public {
        balance[_address]+=value;
    }
    function transfer(address _address1, address _address2,uint amount) onlyBlockedAddress public{
        require(msg.sender==_address1,"you silly boy");
        if (balance[_address1] <= amount){
            revert("insufficient balance");
        }
    
        balance[_address1] -= amount;
        balance[_address2] += amount;
    }

}
