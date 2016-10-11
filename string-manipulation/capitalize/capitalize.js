function capitalize(string) {
  let sentenceArr = string.split(' ');
  return sentenceArr.map(function(entry, i) {
    return entry[0].toUpperCase() + entry.slice(1, entry.length);
  }).join(' ');
};

console.log(capitalize("bats are fat"));
console.log(capitalize("dogs are skinny"));
console.log(capitalize("this lunch is going to be delicious!"));
console.log(capitalize("wHAT iS yOUR dEAL!?!?!?!"));
console.log(capitalize("this is your wrap"));

// shannon rocks
