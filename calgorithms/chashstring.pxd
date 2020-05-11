cdef extern from "c-algorithms-1.2.0/src/hash-string.h":

    unsigned long string_hash(void* string)

    unsigned long string_nocase_hash(void* string)
