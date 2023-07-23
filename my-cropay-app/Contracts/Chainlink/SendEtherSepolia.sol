// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract SendEtherSepolia {
    using SafeCast for int256;
    using SafeMath for uint256;

    AggregatorV3Interface internal eth_usd_price_feed;
    AggregatorV3Interface internal jpy_usd_price_feed;
    AggregatorV3Interface internal gbp_usd_price_feed;
    AggregatorV3Interface internal eur_usd_price_feed;
    AggregatorV3Interface internal aud_usd_price_feed;

    /**
     * Network: Kovan
     */
    constructor() {
        eth_usd_price_feed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        jpy_usd_price_feed = AggregatorV3Interface(0x8A6af2B75F23831ADc973ce6288e5329F63D86c6);
        gbp_usd_price_feed = AggregatorV3Interface(0x91FAB41F5f3bE955963a986366edAcff1aaeaa83);
        eur_usd_price_feed = AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910);
    }
	
    function getEthUsd() public view returns (uint) {
        (
            , int price, , , 
        ) = eth_usd_price_feed.latestRoundData();

        return price.toUint256();
    }


    function getEthJpy() public view returns (uint) {
        (
            , int price, , , 
        ) = jpy_usd_price_feed.latestRoundData();

        uint EthUsd = getEthUsd();
        uint JpyUsd = price.toUint256();

        return EthUsd.mul(10 ** 8).div(JpyUsd);
    }

    function getEthEur() public view returns (uint) {
        (
            , int price, , , 
        ) = eur_usd_price_feed.latestRoundData();

        uint EthUsd = getEthUsd();
        uint EurUsd = price.toUint256();

        return EthUsd.mul(10 ** 8).div(EurUsd);
    }

    function getEthGbp() public view returns (uint) {
        (
            , int price, , , 
        ) = gbp_usd_price_feed.latestRoundData();

        uint EthUsd = getEthUsd();
        uint GbpUsd = price.toUint256();

        return EthUsd.mul(10 ** 8).div(GbpUsd);
    }

    function convertEthUsd(uint _amountInUsd) public view returns (uint) {

        uint EthUsd = getEthUsd();

        return _amountInUsd.mul(10 ** 16).div(EthUsd);

    }
    
    function convertEthJpy(uint _amountInJpy) public view returns (uint) {

        uint EthJpy = uint(getEthJpy());

        return _amountInJpy.mul(10 ** 16).div(EthJpy);

    }

     function convertEthAud(uint _amountInAud) public view returns (uint) {

        uint EthAud = uint(getEthAud());

        return _amountInAud.mul(10 ** 16).div(EthAud);

    }   

     function convertEthEur(uint _amountInEur) public view returns (uint) {

        uint EthEur = uint(getEthEur());

        return _amountInEur.mul(10 ** 16).div(EthEur);

    }   

     function convertEthGbp(uint _amountInGbp) public view returns (uint) {

        uint EthGbp = uint(getEthGbp());

        return _amountInGbp.mul(10 ** 16).div(EthGbp);

    }   

}