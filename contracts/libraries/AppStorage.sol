// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./Counter.sol";

struct AppStorage {
    string _name;

    // Token symbol
    string _symbol;

    // Mapping from token ID to owner address
    mapping(uint256 => address) _owners;

    // Mapping owner address to token count
    mapping(address => uint256) _balances;

    // Mapping from token ID to approved address
    mapping(uint256 => address) _tokenApprovals;

    // Mapping from owner to operator approvals
    mapping(address => mapping(address => bool)) _operatorApprovals;
    
    mapping(uint256 => string) _tokenURIs;

    Counters.Counter _myCounter;
    
    uint256 MAX_SUPPLY;
}