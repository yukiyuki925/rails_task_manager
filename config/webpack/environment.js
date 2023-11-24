const { environment } = require("@rails/webpacker");

environment.config.node = {
  global: false,
  __filename: false,
  __dirname: false,
};

module.exports = environment;
