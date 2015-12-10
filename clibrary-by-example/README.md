# Program library example
Example of static libraries, shared libraries, and dynamically loaded libraries.
(Code from http://www.tldp.org/HOWTO/Program-Library-HOWTO/more-examples.html)
### Static libraries
```bash
$staticlib_demo.sh
```

### Shared libraries
``bash
$sharedlib_demo.sh
```

### Dynamically loaded libraries
Dynamically loaded (DL) libraries are libraries that are loaded at times other than during the startup of a program. They're particularly useful for implementing plugins or modules, because they permit waiting to load the plugin until it's needed.

``bash
$sharedlib_demo.sh
$dynamiclib_demo.sh
```

## Reference:
 - http://www.tldp.org/HOWTO/Program-Library-HOWTO/
 - http://www.cs.dartmouth.edu/~campbell/cs50/buildlib.html
 - https://github.com/shadowmint/go-static-linking
