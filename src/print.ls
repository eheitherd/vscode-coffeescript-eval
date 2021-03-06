#------------------------------------------------------------------------------
# Print to output channel

'use strict'

require! {
  util
  'prelude-ls': {is-type}
}

# OutputChannel -> String -> undefined
module.exports = (output-channel, output) -->
  if is-type \String output
    output-channel
      ..clear!
      ..append-line output
      ..show true
