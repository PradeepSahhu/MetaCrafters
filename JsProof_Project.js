/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

const arrays = ["pradeep", "ritik", 21, 12.5];
// create a variable to hold your NFT's
const ALLNTS = [];
// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata,
// and store it in the variable above.
function mintNFT(
  nameVariable,
  ageVariable,
  haveGirlFriendVariable,
  haveFriendVariable,
  isMarriedVarible,
  numberOfFriendsVarialbe,
  heightVariable,
  weightVariable
) {
  const NFT = {
    name: nameVariable,
    age: ageVariable,
    haveGirlFriend: haveGirlFriendVariable,
    haveFriends: haveFriendVariable,
    isMarried: isMarriedVarible,
    numberOfFriends: numberOfFriendsVarialbe,
    height: heightVariable,
    weight: weightVariable,
  };
  ALLNTS.push(NFT);
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs() {
  for (var i = 0; i < ALLNTS.length; i++) {
    console.log(ALLNTS[i]);
  }
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
  if (ALLNTS.length == 1) {
    console.log("Total NFT is : " + ALLNTS.length);
  } else {
    console.log("Total NFTs are : " + ALLNTS.length);
  }
}

// call your functions below this line

mintNFT("Pradeep Sahu", 20, false, true, false, 1, 172, 60.2);
mintNFT("Ritik Sahu", 22, true, true, false, 6, 180, 72.5);
mintNFT("Sumit Sahu", 25, true, true, true, 10, 175, 67);
mintNFT("Roshan Sahu", 18, true, true, false, 3, 170, 65.5);

listNFTs();

getTotalSupply();
