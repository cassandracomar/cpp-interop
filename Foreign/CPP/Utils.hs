module Foreign.CPP.Utils where
import Foreign
import Foreign.C
import Foreign.CPP

type Stdstring = C'stdstring

toStdString :: String -> IO (Ptr Stdstring)
toStdString s = do (s', l) <- newCStringLen s
                   c'cstring_to_std_string s' (fromIntegral l)
