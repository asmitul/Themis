const path = require("path");

module.exports = {
  i18n: {
    defaultLocale: "cn",
    locales: ["cn", "en"],
  },
  localePath: path.resolve("./public/locales"),
};
