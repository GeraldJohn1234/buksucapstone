const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js').postCss('resources/css/app.css', 'public/css', [
    require('postcss-import'),
    require('tailwindcss'),
    require('autoprefixer'),
]);
mix.js('resources/js/student.js', 'public/js/student.js')
    .js('resources/js/faculty.js', 'public/js/faculty.js')
    .js('resources/js/archiver.js', 'public/js/archiver.js')
    .js('resources/js/administrator.js', 'public/js/administrator.js')
    .vue();

    module.exports = {
        resolve: {
            fallback:{
                "path": require.resolve("path-browserify")  },
        },
    };

    mix.webpackConfig({
        stats: {
            children: true,
        },});