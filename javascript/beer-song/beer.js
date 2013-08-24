function Beer(){
}

Beer.verse = function(number){
    "use strict";

    var nextNumber = number - 1;

    return number + " bottles of beer on the wall, " +
    number + " bottles of beer.\n" +
    "Take one down and pass it around, " +
    nextNumber + " bottles of beer on the wall.\n";
};

module.exports = Beer;
