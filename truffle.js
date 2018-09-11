module.exports = {
  migrations_directory: "./migrations",
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
      //host: "127.0.0.1",
      //port: 9545,
      //network_id: "5777" // Match any network id
    }
  }
};

