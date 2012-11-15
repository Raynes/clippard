# Clippard

A simple library for pasting to the clipboard on various operating
systems. Currently works for OS X and Linux, and may work on Windows.

But don't get all excited. It calls out to pbcopy on OS X and xclip (which
doesn't come with most linux distros) on Linux. There is native support for
Windows via the Clipboard library, but I don't know if it works at all in
Clippard. I do not have a Windows system to test on. Please let me know if it
doesn't work and I can try to fix it, or better yet, send me a patch!
