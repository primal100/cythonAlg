cdef extern from "c-algorithms-1.2.0/src/binary-heap.h":

    ctypedef enum BinaryHeapType:
        BINARY_HEAP_TYPE_MIN
        BINARY_HEAP_TYPE_MAX

    ctypedef void* BinaryHeapValue

    ctypedef int (*BinaryHeapCompareFunc)(BinaryHeapValue value1, BinaryHeapValue value2)

    ctypedef struct BinaryHeap:
        pass

    BinaryHeap* binary_heap_new(BinaryHeapType heap_type, BinaryHeapCompareFunc compare_func)

    void binary_heap_free(BinaryHeap* heap)

    int binary_heap_insert(BinaryHeap* heap, BinaryHeapValue value)

    BinaryHeapValue binary_heap_pop(BinaryHeap* heap)

    int binary_heap_num_entries(BinaryHeap* heap)
