module System.Clippard where

import System.Process
import System.Info (os)
import System.IO (hPutStr, hClose)

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

paste :: String -> IO ()
paste =
  case os of
    "darwin" -> pasteOSX
    "linux"  -> pasteLinux