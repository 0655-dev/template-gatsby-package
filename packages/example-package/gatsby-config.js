
const extras = require('./gatsby-config.extras.js');

module.exports = {
  siteMetadata: {
    title: "@0655-dev/template-gatsby-package",
    ...(extras.siteMetadata || {})
  },
  plugins: [
    ...(extras.plugins || {})
  ],
};
