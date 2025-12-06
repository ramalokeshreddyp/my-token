// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title MyToken
 * @dev Simple ERC-20 style token for learning and project submission.
 */
contract MyToken {
    // --- Token Metadata ---
    string public name = "MyToken";      // Token Name
    string public symbol = "MTK";        // Token Symbol
    uint8 public decimals = 18;          // Standard ERC-20 Decimals
    uint256 public totalSupply;          // Total token supply

    // Tracks the token balance of each address
    mapping(address => uint256) public balanceOf;

    // Tracks how much an owner allows a spender to use
    mapping(address => mapping(address => uint256)) public allowance;

    // --- Events ---
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // --- Constructor ---
    /**
     * @dev Mints the full supply to the deployer (msg.sender)
     */
    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;

        // Log the minting as a transfer from address(0)
        emit Transfer(address(0), msg.sender, _initialSupply);
    }

    // --- ERC-20 Functions ---

    /**
     * @dev Transfers `_value` tokens from caller to `_to`
     */
    function transfer(address _to, uint256 _value) public returns (bool) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        // Update balances
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        // Emit event
        emit Transfer(msg.sender, _to, _value);

        return true;
    }

    /**
     * @dev Approves `_spender` to spend `_value` tokens on caller's behalf
     */
    function approve(address _spender, uint256 _value) public returns (bool) {
        require(_spender != address(0), "Cannot approve zero address");

        allowance[msg.sender][_spender] = _value;

        // Emit event
        emit Approval(msg.sender, _spender, _value);

        return true;
    }

    /**
     * @dev Transfers `_value` tokens from `_from` to `_to` using allowance
     */
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[_from] >= _value, "Insufficient balance");
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance");

        // Update balances
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;

        // Reduce the spender's allowance
        allowance[_from][msg.sender] -= _value;

        // Emit event
        emit Transfer(_from, _to, _value);

        return true;
    }
}
