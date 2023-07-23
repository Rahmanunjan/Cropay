# Cropay
An on  and off chain payment system using a Paymaster smart contract

DESCRIPTION

Cropay is aiming to address the challenge of small scale farmers delivering quality products to market on time. Small Scalwe farmers face the following difficulties:
1. Inadequate funds to pay for produce transportation to market.
2. Selling off harvest at uncompetitive prices to transport crops to market.
3. Unawareness of local market prices regarding crops.
4. Lack of mobile transport or access to transport crops to market
5. Lack of transparency regarding collaborating Large Scale Farlers delivering produce on behalf of Small Scale Farmers. 

Cropay will address these challenges by the following methods:
1. Formation of a local DAO (WorldCoin) with 'Proof' of reputation for Large Scale Farmers (LSF) and Small Scale Farmers (SSF).
2. Assigning a number of SCF to a minimum number of LSF. The LSF will deliver the produce of the SSF for a 20% of the sold produce. 
3. Development of a paymaster smart contract (ERC-4337) that can sponsor payments on behalf of SSF. 
4. Setting up of an Escrow smart contract in which appointed LSF will lock the USDC equivalent of the SSF's estimate market produce.
5. Introduction of a messaging service (Axelar) that will provide verification along several points of the journey.
6. A use of an oracle (Chainlink) to provide cuurent market prices in real time to LSF and SSF.
7. An attestation service (EAS) to confirm ownership of produce and permission to LSF to sell at current prices or not.
8. A Fiat to Crypto (UN BAAS) paymemt system for potential non domestic buyers or buyers that would like to transact in crypto.
9. The use of two wallets (Rainbow and Wallet Connect) to provide access to the Blockchain and connect with Paymaster Smart Contract

CONTRIBUTION GUIDELINES

Pull requests are the best way to propose changes to the codebase (we use Github Flow). We actively welcome your pull requests:

1.Fork the repository and create your branch from main.
2.If you've added code that should be tested, add tests.
3.If you've changed APIs, update the documentation.
4.Ensure the test suite passes.
5.Make sure your code lints.
6.Issue that pull request!
7.Always add a README and/or requirements.txt to your added code.

GETTING STARTED

DEVELOPER INSTRUCTIONS

KNOWN ISSUES
1. Project initially attempted to use Pimlico Paymaster, Bundler (Alto) and Entry Point Plug and Play service. There was a discrepancy between the Ether Js version on Pimlico and Hardhat. Ensure they are the most updated versions or the same.
2. Trampoline, an ERC-4337 COMPATIBLE wallet was initially tested as the wallet provider. There was a discrepancy between the test net provider on the Trampoline READme (Goerli) and in the ex/config.ts file (Sepolia).
3. Be aware that Candide, an ERC-4337 wallet  can only be tested on Sepolia and not on Goerli. This may change in near the future.
4. Soul Wallet, another ERC-4337 wallet isnt ready for use and there is a waiting list.
5.  The Biconomy SDK Bundler is compatible with Trampoline wallet but not the Biconomy Paymaster smart contract.
6.  In order to use the Stack Bundler, Go1.19 is the preferred version.
7.  the Trampoline default wallet requires a builder folder in the browser extension. Despite installing 'yarn build' this wasnt present. However, this was tested on Windows.
8.  In the absence of using Trampoline, there are limited wallets that are ERC-4337 compatible. A Smart contract wallet could suffice. However, there may be challenges in using the Paymaster Smart contract. 




