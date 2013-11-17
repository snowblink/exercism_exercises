function DNA(dnaString){
    "use strict";

    this.dnaString = dnaString;
}

DNA.prototype.toRNA = function(){
    return this.dnaString.replace(/T/g, 'U');
};

module.exports = DNA;
