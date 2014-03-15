#include <bindings.dsl.h>
#include <interop.hpp>
module Development.CPP where
#strict_import

#opaque_t String
#opaque_t vector_int
#opaque_t vector_float
#opaque_t vector_double

#ccall std_create_String   , IO (Ptr <String>)
#ccall std_cstringToString , CString -> CSize -> IO (Ptr <String>)
#ccall std_stringToCString , Ptr <String> -> IO CString

#ccall std_create_vector   , IO (Ptr <vector_int>)
#ccall std_carrayTovector  , Ptr CInt -> CSize -> IO (Ptr <vector_int>)
#ccall std_vectorToCArray  , Ptr <vector_int> -> IO (Ptr CInt)
#ccall std_vector_length   , Ptr <vector_int> -> IO CSize

#ccall std_create_vectorf  , IO (Ptr <vector_float>)
#ccall std_carrayTovectorf , Ptr CFloat -> CSize -> IO (Ptr <vector_float>)
#ccall std_vectorfToCArray , Ptr <vector_float> -> IO (Ptr CFloat)
#ccall std_vectorf_length  , Ptr <vector_float> -> IO CSize

#ccall std_create_vectord  , IO (Ptr <vector_double>)
#ccall std_carrayTovectord , Ptr CDouble -> CSize -> IO (Ptr <vector_double>)
#ccall std_vectordToCArray , Ptr <vector_double> -> IO (Ptr CDouble)
#ccall std_vectord_length  , Ptr <vector_double> -> IO CSize
