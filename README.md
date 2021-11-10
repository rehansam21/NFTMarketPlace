# NFTMarketPlace
A NFT Market Place to buy NFT from ERC20 Standard Token.
I have tested it in remix with the following steps
Steps ....
1. Deployed ERC20 Contract & Minted ERC20 Token 
2. Transfer some of the Minted ERC20 tokens to Buyer(another account on the remix)
3. Deployed NFT Contract & Minted NFT 
4. Deployed NFT Market Place by giving the constructor Argument.
5. Buyer Approved some tokens to spender(which is MarketPlace SC deployed address ).
6. Buyer Bought NFT by transferring the ERC20 token to owner of NFT(Deployed EOA is owner of NFT).
