require('dotenv').config();
const HDWalletProvider = require("truffle-hdwallet-provider");

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 7545,
      network_id: "*"
    },
    ropsten: {
        provider: () => {
          new HDWalletProvider(process.env.PRIVATE_KEY, "https://ropsten.infura.io/" + process.env.INFURA_API_KEY)
        },
        network_id: 3
    },
  }
};
