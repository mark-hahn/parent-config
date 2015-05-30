
A simple module to search parent directories for config file
============================================================

### Problem...
   
 You want to install a project from a repository and use application configuration variables that depend on the file system location the repository is installed in.
 
### Solution ...

```
  configVars = require('parent-config')('myConfig.json')
```

This will search the parent directories of the project folder for the file `myConfig.json` and then parse the first file it finds. If the file doesn't exist or there is a json parse error then an empty object is returned.

This allows you to clone a git project into different locations and have the code know it's environment.  An example would be to have one `myConfig.json` file in the same folder as the project for production and another `myConfig.json` file in a development folder.