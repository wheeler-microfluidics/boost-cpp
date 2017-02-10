Conda recipe to build `boost-cpp` package, including both header-only and
compiled Boost libraries.

**Note** Windows 32-bit build only.

Build
=====

Install `conda-build`:

    conda install conda-build

Build recipe:

    conda build .


Install
=======

The [Windows 32-bit][1] may be installed from the [`wheeler-microfluidics`][2]
channel using:

    conda install -c wheeler-microfluidics boost-cpp


[1]: https://anaconda.org/wheeler-microfluidics/boost-cpp
[2]: https://anaconda.org/wheeler-microfluidics
