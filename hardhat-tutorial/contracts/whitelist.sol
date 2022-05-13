pragma solidity ^0.8.0;


contract whitelist {

   //Max number of whitelisted address allowed 
    uint8 public maxWhitelistedAddresses;


    //create a mapping of whitelistedAddresses 
    //if an address is whitelisted set to true or else set it by default to false

    mapping(address => bool) public whitelistedAddresses;


    // this is used to track amount of whitelisted addresses
    uint8 public numAddressWhitelisted;

    //

    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses =_maxWhitelistedAddresses;
    }



    function addAddressToWhitelist() public {
         //this checks if the user is already whitelisted
        require(!whitelistedAddresses[msg.sender],"Sender already whitelisted");
        

        //check if the numAddressWhitelisted is ablove the maximum allowed whitelist
        require(numAddressWhitelisted<maxWhitelistedAddresses,"More addresses cannot be added");
    
        //add an address which caled the function
        whitelistedAddresses[msg.sender]=true;

        //increase the number of whitelisted address
        numAddressWhitelisted +=1;
    
    }










}