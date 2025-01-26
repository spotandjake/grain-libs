# grain-libs

A collection of useful libraries for grain, too small to deserve their own repositorys.

* [grain-sexp](https://github.com/spotandjake/grain-libs/blob/main/grain-sexp) - S-Expression utilities for grain
* [grain-stream](https://github.com/spotandjake/grain-libs/blob/main/grain-stream) - A general utility for working on a binary data stream.

## Consuming
As grain does not currently have a depenency manager the recommended way to bundle modules is via vendoring, to make peoples lives easy I have made sure all of these all of modules are in a single file, you can just copy the file into your codebase and include it like a local dependency.