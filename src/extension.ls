#------------------------------------------------------------------------------
# CoffeeScript Eval

'use strict'

require! {
  vscode: {window, workspace, commands}
  './coffee-eval'
}

export activate = (context) ->
  output-channel = window.create-output-channel 'CoffeeScript Eval'
  command-reg = register-command command, -> coffee-eval output-channel
  context.subscriptions.push output-channel, command-reg

register-command = commands.register-command

command = \extension.coffeescript-eval
