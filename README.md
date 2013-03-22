# randomize

Helper for generating random values in your code

### Usage

```javascript
var random = require('randomize');

// Generate random boolean
var randomBoolean = random(); // --> true

// Generate random number between 0 and 100
var randomNumber = random(100); // --> 52

// Return random member of an array
var arr = ['foo', 'bar', 'baz'];
var randomMember = random(arr); // --> 'baz'

// Return random property of an object
var obj = {foo: 'bar', baz: 'qux', qux: 'foo', bar: 'baz'};
var randomProperty = random(obj); // --> 'foo'
```

