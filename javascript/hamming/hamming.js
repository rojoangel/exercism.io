var Hamming = {
    compute: function(strandA, strandB) {
        if (strandA.length !== strandB.length) {
            throw new Error('DNA strands must be of equal length.');
        }
        distance = 0;
        for (var i = 0; i < strandA.length; i++) {
            if (strandA[i] !== strandB[i]) distance++;
        }
        return distance;
    }
};

module.exports = Hamming;