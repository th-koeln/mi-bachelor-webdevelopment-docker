const path = require('path');
const glob = require("glob");

module.exports = {
  entry: glob.sync("./src/js/*.js"),
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'static')
  },
  module: {
   rules: [
     {
       test: /\.css$/,
       use: [
         'style-loader',
         'css-loader'
       ]
     }
   ]
 }
};