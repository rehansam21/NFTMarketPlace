pragma solidity ^0.8.0;



import "./NFT.sol";
import "./Token.sol";


contract NFTMarketPlace {
    
    YourToken token;
    NFTToken  NFT;
   
    
   
  
    //keep the record for tokenID is listed on sale or not
    mapping(uint256 => bool) public tokenIdForSale;
    
    
    
    //keep the address of the nft buyer
    mapping(uint256 => address) public nftBuyers;
    
    
    constructor (address tokenAddress, address NFTAddress)  {
        token = YourToken(tokenAddress);
        NFT = NFTToken(NFTAddress);
       
    
    }
    
    function nftSale(uint256 _tokenId,bool forSale) external {
        require(msg.sender == NFT.ownerOf(_tokenId),"Only owners can change this status");
        tokenIdForSale[_tokenId] = forSale;
    }
    
   
    function nftBuy(uint256 _tokenId) public {
        require(tokenIdForSale[_tokenId],"Token must be on sale first");
        // uint nftPrice = NFT.tokenIdToValue(_tokenId);
        
        
        uint nftPrice = NFT.tokenPrice(_tokenId);
        // require(msg.value >= nftPrice, "Insufficient balance.");
        
        require(token.allowance(msg.sender, address(this)) >= nftPrice, "Insufficient allowance.");
        require(token.balanceOf(msg.sender) >= nftPrice, "Insufficient balance.");
        token.transferFrom(msg.sender, NFT.ownerOf(_tokenId), nftPrice);
        
        // token.transfer(payable(NFT.ownerOf(_tokenId)),nftPrice);
        // payable(msg.sender).transfer(nftPrice);
        
        nftBuyers[_tokenId] = msg.sender;
        
    }
    

}