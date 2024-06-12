
# BANK(project1)

This project is a Solidity-based smart contract designed to provide bank like functionality like account creation and transfer of money or funds

## Description

This project is a Solidity-based smart contract designed to provide bank like functionality like account creation and transfer of money or funds and also one account is blocked if you try to use this account the contract will fail.



## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., project1.sol). Copy and paste the following code into the file:
```javascript

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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile project1.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "bank" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it . you will scroll down till you see name of your contract and then click on the downwards arrow the you will be provided with many fuction 

![Screenshot (34)](https://github.com/paaras2004/module1-ETH-AVAX-PROOF-Intermediate-EVM-Course-/assets/90059820/5b6c2bb2-4a9a-4626-a918-60aad42d51c2)



## Authors
Paaras

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

