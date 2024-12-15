/*
  The aim of this program is to print the source code
*/

function print_code() {
  console.log("/*\n  The aim of this program is to print the source code\n*/\n\n" + print_code.toString() + "\n\n" + main.toString() + "\n\nmain();");
}

function main() {
  /*
    This function will print the code
  */
  print_code();
}

main();
