// # Explorer Mode
//   #
//   # Write a method called check_age that is called every time the script is run.
//   # When I run bouncer.rb I would like it to ask my age. It then tells me what I can do based on my age.
//   # If I am younger than 18, I can do nothing.
//   # If I am older than 18, I can vote.
//   # If I am older than 18, I can smoke.
//   # If I am older than 21, I can drink.
//   # If I am older than 25, I can rent a car.
//

// # Adventurer Mode
  //   #
  //   # Modify the program to run in a loop constantly asking my age until the user asks to quit.
  //
  //

// # Epic Mode
  //   #
  //   # Modify the program to first ask your country (US or UK).
  //   # If you are in the US, the rules stay the same.
  //   # If you are in the UK, the rules will change slightly.
  //   # If you are 18 you can drink
  //   # if you are 16 or 17 ask the user if their parents are there, if the answer is yes, then they can drink
  //   # Allow the user to change their country, age, or quit
  //

// #_________________________________________________________________

function checkAge(age) {
  var permissions = [];
  givePermissions(age, permissions)
  bounce(age, permissions)
};

function givePermissions(age, permissions) {
  if (age >= 18) {
    permissions.push("vote", "smoke")
  };
  if (age >= 21) {
    permissions.push("drink")
  };
  if (age >= 25) {
    permissions.push("rent a car")
  };
};

function bounce(age, permissions) {
  if (!permissions[0]) {
    console.log("Age: " + age + ". You can't do anything!")
  } else {
    var last_permission = permissions.pop();
    console.log("Age: " + age + ". You can " + permissions.join(", ") + ", and " + last_permission + ".")
  };
};

checkAge(17)
checkAge(18)
checkAge(21)
checkAge(25)
