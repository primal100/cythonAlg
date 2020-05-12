cdef extern from "c-algorithms-1.2.0/src/bloom-filter.h":

    ctypedef struct BloomFilter:
        pass

    ctypedef void* BloomFilterValue

    ctypedef unsigned long (*BloomFilterHashFunc)(BloomFilterValue data)

    BloomFilter* bloom_filter_new(unsigned int table_size, BloomFilterHashFunc hash_func, unsigned int num_functions)

    void bloom_filter_free(BloomFilter* bloomfilter)

    void bloom_filter_insert(BloomFilter* bloomfilter, BloomFilterValue value)

    int bloom_filter_query(BloomFilter* bloomfilter, BloomFilterValue value)

    void bloom_filter_read(BloomFilter* bloomfilter, unsigned char* array)

    void bloom_filter_load(BloomFilter* bloomfilter, unsigned char* array)

    BloomFilter* bloom_filter_union(BloomFilter* filter1, BloomFilter* filter2)

    BloomFilter* bloom_filter_intersection(BloomFilter* filter1, BloomFilter* filter2)
