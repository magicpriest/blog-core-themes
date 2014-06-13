# blog-core-themes

A collection of flat minimal monochrome responsive themes for simple blogs.

Available colors:

 * Blue: <http://themes.blog-core.net/blue/>
 * Green: <http://themes.blog-core.net/green/>
 * Orange: <http://themes.blog-core.net/orange/>
 * Red: <http://themes.blog-core.net/red/>
 * White: <http://themes.blog-core.net/white/>
 * Pink: <http://themes.blog-core.net/pink/>
 * White (alternative): <http://themes.blog-core.net/white-alt/>

Each demo comes with two pages: the front page and a post page. Themes
are tested with IE8+ and modern browsers.

## Important files

Each theme refers the following files:

 * style.css in theme directory
 * html5shiv-printshiv.min.js in the project root directory, it is needed
   for [HTML5 elements support on IE8](https://github.com/aFarkas/html5shiv).
 * print.css in the project root directory (common for all)

## Print support

Print support is provided by the `print.css` in the project root. It switches
fonts to `serif`, removes the main menu, comment form and removes colored decorations.
The fixed page width is also removed.

## Building

The [Less CSS compiler](http://lesscss.org/) and a Makefile is used for producing these themes.
Each color variation comes with a setting file in `<color>/<color>_settings.less`.
The build process can be invoked with `make all`.

## License

The Creative Commons Attribution 4.0 License. See the LICENSE file. Providing
attribution in markup comments is enough. Copyright (c) 2014 Raivo Laanemets.
