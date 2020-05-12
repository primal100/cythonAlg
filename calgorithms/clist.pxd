cdef extern from "c-algorithms-1.2.0/src/list.h":

    ctypedef struct ListEntry:
        pass

    ctypedef struct ListIterator:
        pass

    ctypedef void* ListValue

    cdef struct _ListIterator:
        ListEntry** prev_next
        ListEntry* current

    ctypedef int (*ListCompareFunc)(ListValue value1, ListValue value2)

    ctypedef int (*ListEqualFunc)(ListValue value1, ListValue value2)

    void list_free(ListEntry* list)

    ListEntry* list_prepend(ListEntry** list, ListValue data)

    ListEntry* list_append(ListEntry** list, ListValue data)

    ListEntry* list_prev(ListEntry* listentry)

    ListEntry* list_next(ListEntry* listentry)

    ListValue list_data(ListEntry* listentry)

    ListEntry* list_nth_entry(ListEntry* list, int n)

    ListValue list_nth_data(ListEntry* list, int n)

    int list_length(ListEntry* list)

    ListValue* list_to_array(ListEntry* list)

    int list_remove_entry(ListEntry** list, ListEntry* entry)

    int list_remove_data(ListEntry** list, ListEqualFunc callback, ListValue data)

    void list_sort(ListEntry** list, ListCompareFunc compare_func)

    ListEntry* list_find_data(ListEntry* list, ListEqualFunc callback, ListValue data)

    void list_iterate(ListEntry** list, ListIterator* iter)

    int list_iter_has_more(ListIterator* iterator)

    ListValue list_iter_next(ListIterator* iterator)

    void list_iter_remove(ListIterator* iterator)
