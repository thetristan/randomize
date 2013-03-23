{isObject, isNumber, isArray, isString} = require('underscore')

module.exports = (args...) ->
  return randomArrayMember(args) if args.length > 1

  arg = args[0]
  return randomBoolean() unless arg?
  return randomArrayMember(arg) if isArray(arg) or isString(arg)
  return randomRange(arg) if isNumber(arg)
  return randomProperty(arg) if isObject(arg)
  null

randomRange = (rangeOrArray) ->
  rangeOrArray = rangeOrArray.length if isArray(rangeOrArray)
  Math.floor(Math.random()*rangeOrArray)

randomBoolean = ->
  !!!randomRange(2)

randomArrayMember = (arr) ->
  idx = randomRange(arr)
  arr[idx]

randomProperty = (obj) ->
  keys = Object.keys(obj)
  return null unless keys.length > 0
  return obj[keys[0]] if keys.length == 1
  idx = randomRange(keys)
  obj[keys[idx]]

