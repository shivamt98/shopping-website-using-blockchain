pragma solidity >=0.4.21 <0.7.0;


contract Adoption{

    address[16] public adopters;
    uint public petPrice = 50000000000000000000;
    address payable public dealer = 0x3ce40352eEa107917704Fb2F769e96B26c68bc6f;

    function adopt(uint petId) public payable returns (uint){
        if(petId >= 0 && petId<=15)
        require(msg.value == petPrice, "PRICE DIDNT MATCH");
        dealer.send(msg.value);
        adopters[petId] = msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[16] memory){
        return adopters;
    }
}


