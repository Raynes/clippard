# Clippard

A simple library for pasting to the clipboard on various operating
systems. Currently works for OS X and Linux.

But don't get all excited. It calls out to pbcopy on OS X and xclip (which
doesn't come with most linux distros) on Linux. It doesn't work with Windows
just because I don't have a Windows system to test on.

If anybody wants to implement native versions of any of the paste functions,
feel free to do so. I just needed something that worked quickly, and this was
sufficient for my purposes. Furthermore, if you want Windows support, add it! I
can't test it, but I'll trust your judgement. I recommend adding support via the
[Clipboard](http://hackage.haskell.org/package/Clipboard) package.
