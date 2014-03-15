module Development.CPPUtils where
import Development.CPP
import Foreign
import Foreign.C

toStdString :: String -> IO (Ptr C'String)
toStdString s = do (s', l) <- newCStringLen s
                   c'std_cstringToString s' (fromIntegral l)
