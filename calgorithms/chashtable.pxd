cdef extern from "c-algorithms-1.2.0/src/hash-table.h":


    ctypedef struct HashTable:
        pass

    ctypedef struct HashTableIterator:
        pass

    ctypedef struct HashTableEntry:
        pass

    ctypedef void* HashTableKey

    ctypedef void* HashTableValue

    cdef struct _HashTableIterator:
        HashTable* hash_table
        HashTableEntry* next_entry
        int next_chain

    ctypedef unsigned long (*HashTableHashFunc)(HashTableKey value)

    ctypedef int (*HashTableEqualFunc)(HashTableKey value1, HashTableKey value2)

    ctypedef void (*HashTableKeyFreeFunc)(HashTableKey value)

    ctypedef void (*HashTableValueFreeFunc)(HashTableValue value)

    HashTable* hash_table_new(HashTableHashFunc hash_func, HashTableEqualFunc equal_func)

    void hash_table_free(HashTable* hash_table)

    void hash_table_register_free_functions(HashTable* hash_table, HashTableKeyFreeFunc key_free_func, HashTableValueFreeFunc value_free_func)

    int hash_table_insert(HashTable* hash_table, HashTableKey key, HashTableValue value)

    HashTableValue hash_table_lookup(HashTable* hash_table, HashTableKey key)

    int hash_table_remove(HashTable* hash_table, HashTableKey key)

    int hash_table_num_entries(HashTable* hash_table)

    void hash_table_iterate(HashTable* hash_table, HashTableIterator* iter)

    int hash_table_iter_has_more(HashTableIterator* iterator)

    HashTableValue hash_table_iter_next(HashTableIterator* iterator)
