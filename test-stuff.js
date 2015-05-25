var tap = require("tap");
tap.test("A test suite", (function(suite) {
  return suite.test("should be able to assert", (function(t) {
    t.ok(true);
    return t.equal((1 + 1), 2);
  }));
}));

tap.mochaGlobals();

var assert = require("assert");
describe("A test suite", (function() {
  it("should be able to tell the truth", (function() {
    return assert.ok(true, "true");
  }));
  return it("should be able to add up", (function() {
    return assert.equal((1 + 1), 2, "can add");
  }));
}));

