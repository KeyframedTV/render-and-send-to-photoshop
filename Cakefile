fs = require "fs"
{print} = require "util"
{spawn, exec} = require "child_process"

filename = "Render and Send to Photoshop"

task "build", "Build project from src/*.coffee to lib/#{filename}.jsx", ->
  exec "coffee --join lib/\"#{filename}.js\" -cb src/", (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
    renameToJSX()

task "watch", "Watch project to compile src/*.coffee to lib/*.js on save", ->
  exec "coffee --join lib/\"#{filename}.js\" -cwb src/", (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
    

renameToJSX = () ->
  fs.rename "lib/#{filename}.js", "lib/#{filename}.jsx", (err) ->
    throw err if err
