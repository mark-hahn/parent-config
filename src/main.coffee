
fs = require 'fs'
path = require 'path'
findParentDir = require 'find-parent-dir'

module.exports = (fileName) ->
  try
    dir = findParentDir.sync process.cwd(), fileName
    console.log dir
    return JSON.parse fs.readFileSync path.join(dir, fileName), 'utf8'
  catch err
    console.log err.message
    return {}
