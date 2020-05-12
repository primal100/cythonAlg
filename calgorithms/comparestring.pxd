cdef extern from "c-algorithms-1.2.0/src/compare-string.h":

    int string_equal(void* string1, void* string2)

    int string_compare(void* string1, void* string2)

    int string_nocase_equal(void* string1, void* string2)

    int string_nocase_compare(void* string1, void* string2)
