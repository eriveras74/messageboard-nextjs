const hre = require("hardhat");

async function main() {
  // Contract deployen
  const messageBoard = await hre.ethers.deployContract("MessageBoard");

  // Auf Deployment warten
  await messageBoard.waitForDeployment();

  // Adresse ausgeben
  console.log("MessageBoard deployed to:", await messageBoard.getAddress());
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
