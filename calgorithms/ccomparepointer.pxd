cdef extern from "c-algorithms-1.2.0/src/compare-pointer.h":

    int pointer_equal(void* location1, void* location2)

    int pointer_compare(void* location1, void* location2)
