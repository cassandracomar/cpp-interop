module Foreign.CPP.Utils where
import Foreign
import Foreign.C
import Foreign.CPP

toStdString :: String -> IO (Ptr C'String)
toStdString s = do (s', l) <- newCStringLen s
                   c'std_cstringToString s' (fromIntegral l)
