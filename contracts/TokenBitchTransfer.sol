pragma solidity ^0.4.24;
import './SafeMath.sol';

contract ERC20Abstract {
      function totalSupply() public view returns (uint256);
      function balanceOf(address who) public view returns (uint256);
      function transfer(address to, uint256 value) public returns (bool);
      function transferFrom(address from, address to, uint256 value) public returns (bool);
}
    
contract Airdropdemo{
    using SafeMath for uint256;
    ERC20Abstract token;
    
    /**
     * @dev 代币批量转账(代币分发)
     * @param from 账户地址（代币合约授信主体的账户）
     * @param tokenAddress 代币合约地址
     * @param _tos 批量转账地址(数组)
     * @param value 转账数量
     * @return bool
     */    
          
    function transfer(address from,address tokenAddress,address[] _tos,uint256 vaule,uint8 decimals)
        public 
        returns (bool)
    {
        require(_tos.length > 0);
        token = ERC20Abstract(tokenAddress);
        for(uint i=0;i<_tos.length;i++){
         token.transferFrom(from,_tos[i],vaule.mul(10**decimals);
        }
        return true;
    }
}