function Beer(){
}

Beer.verse = function(number){
    "use strict";

    var nextNumber = number - 1;

    var bottlesOfBeer = function(number){
        if (number == 1){
            return "1 bottle of beer";
        } else if (number === 0) {
            return "no more bottles of beer";
        } else {
            return number + " bottles of beer";
        }
    };

    return bottlesOfBeer(number) + " on the wall, " +
    bottlesOfBeer(number) + ".\n" +
    "Take " +
    (number === 1 ? "it" : "one") +
    " down and pass it around, " +
    bottlesOfBeer(nextNumber) + " on the wall.\n";
};

module.exports = Beer;
