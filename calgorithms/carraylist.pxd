cdef extern from "c-algorithms-1.2.0/src/arraylist.h":

    ctypedef void* ArrayListValue

    ctypedef _ArrayList ArrayList

    cdef struct _ArrayList:
        ArrayListValue* data
        int length
        int _alloced

    ctypedef int (*ArrayListEqualFunc)(ArrayListValue value1, ArrayListValue value2)

    ctypedef int (*ArrayListCompareFunc)(ArrayListValue value1, ArrayListValue value2)

    ArrayList* arraylist_new(int length)

    void arraylist_free(ArrayList* arraylist)

    int arraylist_append(ArrayList* arraylist, ArrayListValue data)

    int arraylist_prepend(ArrayList* arraylist, ArrayListValue data)

    void arraylist_remove(ArrayList* arraylist, int index)

    void arraylist_remove_range(ArrayList* arraylist, int index, int length)

    int arraylist_insert(ArrayList* arraylist, int index, ArrayListValue data)

    int arraylist_index_of(ArrayList* arraylist, ArrayListEqualFunc callback, ArrayListValue data)

    void arraylist_clear(ArrayList* arraylist)

    void arraylist_sort(ArrayList* arraylist, ArrayListCompareFunc compare_func)
