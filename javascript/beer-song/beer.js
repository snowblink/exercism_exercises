function Beer(){
}

Beer.verse = function(number){
    "use strict";

    var nextNumber = number - 1;
    if (nextNumber < 0){
        nextNumber = 99;
    }

    var bottlesOfBeer = function(number){
        if (number == 1){
            return "1 bottle of beer";
        } else if (number === 0) {
            return "no more bottles of beer";
        } else {
            return number + " bottles of beer";
        }
    };

    var onTheWall = bottlesOfBeer(number).capitalize() +
        " on the wall, " +
        bottlesOfBeer(number) + ".\n";

        var drinkOne = function(){
            var result = "";
            if (nextNumber === 99){
                result += "Go to the store and buy some more, ";
            } else {
            result += "Take " +
            (number === 1 ? "it" : "one") +
            " down and pass it around, ";
            }

            result += bottlesOfBeer(nextNumber) + " on the wall.\n";
            return result;
        };

    return onTheWall + drinkOne();


};

String.prototype.capitalize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
};

module.exports = Beer;
