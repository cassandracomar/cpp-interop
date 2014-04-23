{-# LANGUAGE ForeignFunctionInterface #-}

#include <bindings.dsl.h>
#include <interop.hpp>
module Foreign.CPP where
#strict_import

#opaque_t stdstring
#opaque_t vector_int
#opaque_t vector_float
#opaque_t vector_double

#ccall create_std_string   , IO (Ptr <stdstring>)
#ccall cstring_to_std_string , CString -> CSize -> IO (Ptr <stdstring>)
#ccall std_string_to_cstring , Ptr <stdstring> -> IO CString

#ccall create_std_vectori     , IO (Ptr <vector_int>)
#ccall carray_to_std_vectori  , Ptr CInt -> CSize -> IO (Ptr <vector_int>)
#ccall std_vectori_to_carray  , Ptr <vector_int> -> IO (Ptr CInt)
#ccall std_vectori_length     , Ptr <vector_int> -> IO CSize

#ccall create_std_vectorf     , IO (Ptr <vector_float>)
#ccall carray_to_std_vectorf  , Ptr CFloat -> CSize -> IO (Ptr <vector_float>)
#ccall std_vectorf_to_carray  , Ptr <vector_float> -> IO (Ptr CFloat)
#ccall std_vectorf_length     , Ptr <vector_float> -> IO CSize

#ccall create_std_vectord     , IO (Ptr <vector_double>)
#ccall carray_to_std_vectord  , Ptr CDouble -> CSize -> IO (Ptr <vector_double>)
#ccall std_vectord_to_carray  , Ptr <vector_double> -> IO (Ptr CDouble)
#ccall std_vectord_length     , Ptr <vector_double> -> IO CSize
