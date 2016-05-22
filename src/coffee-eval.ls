#------------------------------------------------------------------------------
# Eval selection of CoffeeScript code

'use strict'

require! {
  './get-selection'
  './evaluate'
  './print'
}

module.exports = (output-channel) ->
  print-out = print output-channel
  get-selection!
    .then evaluate
    .then print-out, (.message |> print-out)
