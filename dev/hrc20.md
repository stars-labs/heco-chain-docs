# HRC20 Token 标准

HECO 完全兼容以太坊 [ERC20](https://eips.ethereum.org/EIPS/eip-20) 标准，interface 和 event 如下：

```
// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md
// ----------------------------------------------------------------------------
contract ERC20Interface {
    function totalSupply() public constant returns (uint);
    function balanceOf(address tokenOwner) public constant returns (uint balance);
    function allowance(address tokenOwner, address spender) public constant returns (uint remaining);
    function transfer(address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}
```

标准请参考：

[eip-20](https://eips.ethereum.org/EIPS/eip-20)

实现请参考：

[openzeppelin-contracts](https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20)
