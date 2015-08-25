var HelloWorld = function() {};

HelloWorld.prototype.hello = function(name) {
        return 'Hello, ' + (name || 'world') +'!';
};

module.exports = HelloWorld;
