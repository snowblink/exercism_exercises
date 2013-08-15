var Bob = function(){
    this.hey = function(noise){
        var noise = new Noise(noise);

        if (noise.silence()){
            return "Fine. Be that way!";
        }

        if (noise.shouting()){
            return "Woah, chill out!";
        }

        if (noise.question()) {
            return "Sure.";
        }

        return "Whatever.";
    }
};

var Noise = function(noise){
    var noise = noise;

    this.shouting = function(){
        return (noise.toUpperCase() == noise);
    }

    this.question = function(){
        return (noise.slice(-1) == "?");
    }

    this.silence = function(){
        return (noise.trim() == false);
    }
}

module.exports = Bob;
