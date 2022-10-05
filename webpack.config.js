module.exports = {
    resolve: {
        fallback:{
            "path": require.resolve("path-browserify") },
    },
    node: {
        fs: 'empty'
      }
};
// {
//     // rest of the webpack config
//     resolve: {
//       // ... rest of the resolve config
//       fallback: {
//         "path": require.resolve("path-browserify")
//       }
//     },
//   }
// const { defineConfig } = require('@vue/cli-service')
// const NodePolyfillPlugin = require("node-polyfill-webpack-plugin")
// module.exports = defineConfig({
//   transpileDependencies: true,
//   configureWebpack: {
//     plugins: [
//       new NodePolyfillPlugin()
//     ]
//   }

// })