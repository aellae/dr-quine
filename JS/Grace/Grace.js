/*
  the aim of this program is to write it's own source code into a file named Grace_kid.c
*/

const str = "/*\n  the aim of this program is to write it's own source code into a file named Grace_kid.c\n*/\n\nconst str = {0};\nconst file = require('fs').createWriteStream('Grace_kid.js');\nconst Grace = () => { file.write(str.replace(/\\{0\\}/g, JSON.stringify(str))); }\n\nGrace();\n";
const file = require('fs').createWriteStream('Grace_kid.js');
const Grace = () => { file.write(str.replace(/\{0\}/g, JSON.stringify(str))); }

Grace();
