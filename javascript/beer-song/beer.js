function Beer(){
}

Beer.verse = function(number) {
    "use strict";

    var currentBottle = new Bottle(number);
    var nextBottle = new Bottle(number - 1);

    var onTheWall = (currentBottle.bottlesOfBeer() +
        " on the wall, " +
        currentBottle.bottlesOfBeer() + ".\n").capitalize();

    var drinkOne = (function() {
        var result = "";
        if (currentBottle.lastBottle()){
            result += "Go to the store and buy some more, ";
        } else {
            result += "Take " +
            currentBottle.takeItOrOne() +
            " down and pass it around, ";
        }

        result += nextBottle.bottlesOfBeer() + " on the wall.\n";
        return result;
    })();

    return onTheWall + drinkOne;
};

Beer.sing = function(start, end) {
    "use strict";
    end = end || 0;
    var result = "";
    for(var i=start; i >= end; i--){
        result += this.verse(i);
        if (i != end){
            result += "\n";
        }
    }
    return result;

};

function Bottle(number) {
    "use strict";
    if (number < 0){
        this.number = 99;
    } else {
        this.number = number;
    }
}

Bottle.prototype.lastBottle = function() {
    "use strict";
    return this.number === 0;
};

Bottle.prototype.takeItOrOne = function() {
    "use strict";
    return this.number === 1 ? "it" : "one";
};

Bottle.prototype.bottlesOfBeer = function() {
    "use strict";
    if (this.number == 1){
       return "1 bottle of beer";
    } else if (this.number === 0) {
        return "no more bottles of beer";
    } else {
        return this.number + " bottles of beer";
    }
};

if(!String.prototype.capitalize){
    Object.defineProperty(String.prototype, 'capitalize',
    {
        value: function()
        {
            return this.charAt(0).toUpperCase() + this.slice(1);
        },
        enumerable: false
    });
}

module.exports = Beer;
