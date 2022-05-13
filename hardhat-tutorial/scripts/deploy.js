const {ether, ethers} = require ("hardhat");



async function main(){

    
   const whitelistContract = await ethers.getContractFactory('whitelist')

//this sets the total maximum whitelistable address to 10
   const deployedWhitelistContract = await whitelistContract.deploy(10);


   //wait for the deployment
   await deployedWhitelistContract.deployed()


   //print the address of the deployed contract
   console.log("whitelist Contract Address:",
   deployedWhitelistContract.address);

}

//call the main function and catch if there is any error
main()
.then(()=>process.exit(0))
.catch(()=>{
    console.error(error);
    process.exit(1);
});