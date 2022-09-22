// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "./ERC721URIstorage.sol";
import "../libraries/AppStorage.sol";

contract NFTToken is ERC721URIStorage {
    using Counters for Counters.Counter;

    function safeMint(address to, string memory uri) public{

        uint256 tokenId = s._myCounter.current();
        require(tokenId <= s.MAX_SUPPLY, "Sorry, all NFTs have been minted!");
        s._myCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }


}