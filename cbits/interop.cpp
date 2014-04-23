#include <interop.hpp>

typedef string stdstring;

extern "C" {
stdstring* create_std_string() {
    return new string;
}

stdstring* cstring_to_std_string(char* s, size_t len) {
    return new string(s, len);
}

const char*   std_string_to_cstring(stdstring* s) {
    return s->c_str();
}

ADD_VECTOR_IMPL(int, i);
ADD_VECTOR_IMPL(float, f);
ADD_VECTOR_IMPL(double, d);
}
