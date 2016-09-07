// The verify age function will take a single argument 'age' and it will check if that age is less than 21. If it is less than 21 than the function will print 'too young' otherwise it'll print 'proceed'.

function ageVerifier(age) {
  if (age < 21) {
    console.log("Your age is " + age + ". You are too young.")
  } else {
    console.log("Your age is " + age + ". You may proceed.")
  }
};

ageVerifier(22)
ageVerifier(18)

function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
};

n = 1
while (n <= 10) {
  ageVerifier(getRandomInt(1, 35));
  n++;
};
