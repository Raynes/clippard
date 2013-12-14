# Clippard

[HClip](http://hackage.haskell.org/package/Hclip) is a library that was written
after I wrote this library. While Clippard works fine (at least on Linux and
OS X where I have tested it), HClip appears to have safer API and presumably was
not authored in the space of a talk at the 3rd Clojure Conj conference. I'd
suggest checking it out as well! ;)

A simple library for pasting to the clipboard on various operating
systems. Currently works for OS X and Linux, and may work on Windows.

But don't get all excited. It calls out to pbcopy on OS X and xclip (which
doesn't come with most linux distros) on Linux. There is native support for
Windows via the Clipboard library, but I don't know if it works at all in
Clippard. I do not have a Windows system to test on. Please let me know if it
doesn't work and I can try to fix it, or better yet, send me a patch!
