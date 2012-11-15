{-# LANGUAGE CPP #-}
module System.Clippard where

import System.Process
import System.Info (os)
import System.IO (hPutStr, hClose)
# if mingw32_HOST_OS
import System.Clipboard (setClipboardString) 
#endif    

pasteOSX :: String -> IO ()
pasteOSX text = do
  (inp, _, _, _) <- runInteractiveCommand "pbcopy"
  hPutStr inp text
  hClose inp

pasteLinux :: String -> IO ()
pasteLinux text = do
  (inp, _, _, _) <- runInteractiveCommand "xclip"
  hPutStr inp text
  hClose inp

# ifdef mingw32_HOST_OS
pasteWindows :: String -> IO ()
pasteWindows = setClipboardString
# endif

paste :: String -> IO ()
paste =
  case os of
    "darwin" -> pasteOSX
    "linux"  -> pasteLinux
# ifdef mingw32_HOST_OS
    _        -> pasteWindows
# endif