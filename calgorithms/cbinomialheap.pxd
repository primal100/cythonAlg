cdef extern from "c-algorithms-1.2.0/src/binomial-heap.h":

    ctypedef enum BinomialHeapType:
        BINOMIAL_HEAP_TYPE_MIN
        BINOMIAL_HEAP_TYPE_MAX

    ctypedef void* BinomialHeapValue

    ctypedef int (*BinomialHeapCompareFunc)(BinomialHeapValue value1, BinomialHeapValue value2)

    ctypedef struct BinomialHeap:
        pass

    BinomialHeap* binomial_heap_new(BinomialHeapType heap_type, BinomialHeapCompareFunc compare_func)

    void binomial_heap_free(BinomialHeap* heap)

    int binomial_heap_insert(BinomialHeap* heap, BinomialHeapValue value)

    BinomialHeapValue binomial_heap_pop(BinomialHeap* heap)

    int binomial_heap_num_entries(BinomialHeap* heap)
