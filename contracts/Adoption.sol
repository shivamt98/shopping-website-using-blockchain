pragma solidity >=0.4.21 <0.7.0;


contract Adoption{

    address[16] public adopters;
    uint public petPrice = put your own price here;
    address payable public dealer = put your own address here[;

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


