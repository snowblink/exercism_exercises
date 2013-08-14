var Bob = function(){
    this.hey = function(noise){
        var noise = new Noise(noise);

        if (noise.shouting()){
            return "Woah, chill out!";
        } else if (noise.question()) {
            return "Sure.";
        } else {
            return "Whatever.";
        }
    }
}

var Noise = function(noise){
    var noise = noise;

    this.shouting = function(){
        return (noise.toUpperCase() == noise);
    }

    this.question = function(){
        return (noise.match(/\?$/));
    }
}

module.exports = Bob;
