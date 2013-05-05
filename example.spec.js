var example = require('./example').example;
describe('silly example', function() {
    it('should return the first irregular prime', function() {
        expect(example.silly()).toBe(37);
    });
});
