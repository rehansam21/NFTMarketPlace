
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract YourToken is ERC20 {
    
    mapping (address => uint256) public  _balanceOf;
    // I Account A approving Account B to spend amount N token
    // mapping (address => mapping(address => uint256)) public  _allowance;
    constructor() ERC20("Solulab", "SOLU") {
        _mint(msg.sender, 1000 * 10 ** 18);
    }
    
  
}