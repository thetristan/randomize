# randomize

Helper for generating random values in your code

### Usage

```javascript
random = require('randomize');

// Generate random boolean
randomBoolean = random(); // --> true

// Generate random number between 0 and 100
randomNumber = random(100); // --> 52

// Return random member of an array
var arr = ['foo', 'bar', 'baz'];
randomMember = random(arr); // --> 'baz'

// Return random property of an object
var obj = {foo: 'bar', baz: 'qux', qux: 'foo', bar: 'baz'};
randomProperty = random(obj); // --> 'foo'
```

