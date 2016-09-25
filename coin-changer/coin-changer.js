
function coinChanger(amount) {
  var original = amount
  var coins = []
  var types = [25, 10, 5, 1]
  for (var i = 0; i < types.length; i++) {
    while (amount >= types[i]) {
      coins.push("" + types[i]);
      amount -= types[i];
    };
  };
  console.log(original + ":\t" + coins.join(", "));
}

coinChanger(25);
coinChanger(10);
coinChanger(5);
coinChanger(1);
coinChanger(39);
coinChanger(99);
coinChanger(64);
