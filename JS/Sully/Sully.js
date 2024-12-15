let n = 5;

const main = () => {
  const data = () => {
      return `let n = ${n - 1};\n\nconst main = ${main.toString()};\nmain();\n`;
  };
  const filename = `Sully_${n}.js`;
  require('fs').createWriteStream(filename).write(data());
  if (n > 0) {
      require('child_process').fork(filename);
  }
};
main();
