require('dotenv').config();
const HDWalletProvider = require("truffle-hdwallet-provider");

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 9545,
      network_id: "*"
    },
    ropsten: {
        provider: () => {
          return new HDWalletProvider(process.env.MNEMONIC, "https://ropsten.infura.io/" + process.env.INFURA_API_KEY)
        },
        network_id: 3
    },
  }
};
