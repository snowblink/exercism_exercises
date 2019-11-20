{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_pangram (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [2,0,0,12] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/pairingdev/programming/exercism_exercises/haskell/pangram/.stack-work/install/x86_64-osx/750d8e10ba5e79fe0df1290d0163f7be21a732089530f425ce30c8644794d7e2/8.6.5/bin"
libdir     = "/Users/pairingdev/programming/exercism_exercises/haskell/pangram/.stack-work/install/x86_64-osx/750d8e10ba5e79fe0df1290d0163f7be21a732089530f425ce30c8644794d7e2/8.6.5/lib/x86_64-osx-ghc-8.6.5/pangram-2.0.0.12-92Iq4yxTGNbFDpnjHAjBNi-test"
dynlibdir  = "/Users/pairingdev/programming/exercism_exercises/haskell/pangram/.stack-work/install/x86_64-osx/750d8e10ba5e79fe0df1290d0163f7be21a732089530f425ce30c8644794d7e2/8.6.5/lib/x86_64-osx-ghc-8.6.5"
datadir    = "/Users/pairingdev/programming/exercism_exercises/haskell/pangram/.stack-work/install/x86_64-osx/750d8e10ba5e79fe0df1290d0163f7be21a732089530f425ce30c8644794d7e2/8.6.5/share/x86_64-osx-ghc-8.6.5/pangram-2.0.0.12"
libexecdir = "/Users/pairingdev/programming/exercism_exercises/haskell/pangram/.stack-work/install/x86_64-osx/750d8e10ba5e79fe0df1290d0163f7be21a732089530f425ce30c8644794d7e2/8.6.5/libexec/x86_64-osx-ghc-8.6.5/pangram-2.0.0.12"
sysconfdir = "/Users/pairingdev/programming/exercism_exercises/haskell/pangram/.stack-work/install/x86_64-osx/750d8e10ba5e79fe0df1290d0163f7be21a732089530f425ce30c8644794d7e2/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "pangram_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "pangram_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "pangram_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "pangram_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "pangram_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "pangram_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
