st-term
=======

Faster printf debugging than semihosting, through just about any ST-LINK debugger.

Used to be a part of https://github.com/texane/stlink but was later removed in favor of semihosting.

Compiling
---------

The following prerequisites are required:

* CMake (upstream project requirement)
* Standard C build tools (make, C compiler, pkg-config, etc)
* git to get the submodule
* libusb 1.0

After that, just run "make".

Target requirements
-------------------

The target software must implement a ring buffer in memory for st-term uses to communicate with it.
An example implementation is available [here][1]. The memory layout is also described in a comment
in st-term.c.

[1]: https://github.com/nekromant/antares/blob/b98b715f2fc4d8741381b5886073cb1d64871d40/src/lib/stlinky/stlinky.c