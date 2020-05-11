cdef extern from "c-algorithms-1.2.0/src/slist.h":

    ctypedef struct SListEntry:
        pass

    ctypedef struct SListIterator:
        pass

    ctypedef void* SListValue

    cdef struct _SListIterator:
        SListEntry** prev_next
        SListEntry* current

    ctypedef int (*SListCompareFunc)(SListValue value1, SListValue value2)

    ctypedef int (*SListEqualFunc)(SListValue value1, SListValue value2)

    void slist_free(SListEntry* list)

    SListEntry* slist_prepend(SListEntry** list, SListValue data)

    SListEntry* slist_append(SListEntry** list, SListValue data)

    SListEntry* slist_next(SListEntry* listentry)

    SListValue slist_data(SListEntry* listentry)

    SListEntry* slist_nth_entry(SListEntry* list, int n)

    SListValue slist_nth_data(SListEntry* list, int n)

    int slist_length(SListEntry* list)

    SListValue* slist_to_array(SListEntry* list)

    int slist_remove_entry(SListEntry** list, SListEntry* entry)

    int slist_remove_data(SListEntry** list, SListEqualFunc callback, SListValue data)

    void slist_sort(SListEntry** list, SListCompareFunc compare_func)

    SListEntry* slist_find_data(SListEntry* list, SListEqualFunc callback, SListValue data)

    void slist_iterate(SListEntry** list, SListIterator* iter)

    int slist_iter_has_more(SListIterator* iterator)

    SListValue slist_iter_next(SListIterator* iterator)

    void slist_iter_remove(SListIterator* iterator)
