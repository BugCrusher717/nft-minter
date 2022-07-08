pragma solidity ^0.8.0;
contract Store{
    event ValueStore(uint256 oldValue, uint256 newValue);
    event ValueDeleted(uint256 oldValue);
    uint256 public secretHash;
    function store(uint256 value) public{
        requre(value!=0, "Can not store zero value");
        emit ValueStored(secretHash, value);
        secretHash=value;
    }
    function deleteHash() public returns (bool)
    {
        if(secretHash>0)
        {
            emit ValueDeleted(secretHash);
            secretHash=0;
            return true;
        }
        return false;
    }
}