# **Data Structures & Algorithms in Java: Linked Lists**

---

## **1. Simple Explanation**

A **Linked List** is a linear data structure where elements (nodes) are stored in memory at random locations and linked using pointers.

Each **node** contains:

* **Data**: The value it holds.
* **Next**: A reference to the next node (in **Singly Linked List**).
* **Prev**: A reference to the previous node (only in **Doubly Linked List**).

**Types of Linked Lists:**

* Singly Linked List
* Doubly Linked List
* Circular Linked List (Singly/Doubly)

---

## **2. Illustration & Memory Layout**

### **Singly Linked List**

```
[10|*] -> [20|*] -> [30|null]
```

### **Doubly Linked List**

```
null <- [10|*|*] <-> [20|*|*] <-> [30|*|null]
```

### **Memory Layout Diagram**

In memory, nodes are scattered but connected via references:

```
Heap Memory:
[Node@0x1]: data=10, next=0x4
[Node@0x4]: data=20, next=0x7
[Node@0x7]: data=30, next=null
```

---

## **3. Time & Space Complexities**

| Operation       | Singly LL | Doubly LL | ArrayList |
| --------------- | --------- | --------- | --------- |
| Insert at Head  | O(1)      | O(1)      | O(n)      |
| Insert at Tail  | O(n)      | O(1)\*    | O(1)\*\*  |
| Delete at Head  | O(1)      | O(1)      | O(n)      |
| Delete at Tail  | O(n)      | O(1)      | O(1)\*\*  |
| Search by Value | O(n)      | O(n)      | O(n)      |
| Access by Index | O(n)      | O(n)      | O(1)      |

\* if tail pointer is maintained.
\*\* amortized.

---

## **4. Java LinkedList Class Internals**

`java.util.LinkedList` is a **Doubly Linked List**.

### **Key Features:**

* Implements `Deque`, allowing both stack and queue operations.
* Stores elements in nodes with `prev`, `next`, and `item` fields.

### **Source Code Snippet:**

```java
private static class Node<E> {
    E item;
    Node<E> next;
    Node<E> prev;
    Node(Node<E> prev, E element, Node<E> next) {
        this.item = element;
        this.next = next;
        this.prev = prev;
    }
}
```

### **Common Operations:**

```java
list.add("data");       // Adds to the end
list.remove(1);          // Removes by index
list.get(0);             // Accesses element by index
```

### **Why Doubly Linked List?**

* Efficient bidirectional traversal.
* O(1) insertions/deletions from both ends.

---

## **5. Linked List Variants**

### **Circular Linked List**

Last node's next pointer points back to the head:

```
[10|*] -> [20|*] -> [30|*] -+
        ^------------------+
```

### **Linked List Using Array**

Simulate links using array indices:

```java
int[] data = {10, 20, 30};
int[] next = {1, 2, -1};
```

### **Linked List Using Stack**

Used for problems like reversing a linked list.
Push nodes onto a stack, then pop to reverse order.

### **Linked List Using Queue**

Useful for simulating streaming input or ordered processing (FIFO behavior).

---

## **6. Concurrency with Linked Lists**

### **ConcurrentLinkedQueue**

* Part of `java.util.concurrent`.
* Non-blocking, thread-safe implementation of a FIFO queue.
* Internally uses a lock-free **linked list**.

### **Use Cases:**

* Background task queues.
* Event processing in real-time systems.

---

## **7. Interview Questions (Level-wise)**

### **Level 1 - Easy**

1. Implement a singly linked list.
2. Reverse a singly linked list.
3. Detect a loop in a linked list.

### **Level 2 - Medium**

4. Find the middle element in one pass.
5. Merge two sorted linked lists.
6. Remove nth node from the end.

### **Level 3 - Hard**

7. Clone a linked list with random pointers.
8. Flatten a multilevel doubly linked list.
9. LRU Cache implementation using LinkedHashMap.

---

## **8. Interview Answering Tips**

* Start by clarifying if the list is singly, doubly, or circular.
* Draw diagrams for clarity.
* Mention trade-offs vs ArrayList.
* Handle edge cases: empty list, one node, cycles.
* Talk through time/space complexity.

---

## **9. Real-World Applications**

* **Music Players**: Forward/backward navigation.
* **LRU Cache**: Remove least-used items efficiently.
* **Browser History**: Back/Forward navigation.
* **Job Queues**: Efficient add/remove at both ends.

---

## **10. Common Pitfalls and Traps**

* Not updating all pointers during insert/delete.
* Forgetting to handle `null` in head/tail.
* Infinite loops due to improper loop termination.
* Losing reference to head/tail.

---

## **11. Key Takeaways/Recap**

* Linked lists are pointer-based linear structures.
* Ideal for frequent insertions/deletions.
* Slower access time compared to arrays.
* Java's `LinkedList` is doubly linked and part of the Collections framework.
* Know variants like circular, doubly, multilevel, and concurrent lists.

---

## **12. End-of-Topic Challenge**

**Problem**: Given a circular linked list, detect the starting point of the loop without modifying the list.

---

## **13. Comparative Coding Table**

| Feature           | Array      | LinkedList    | ArrayList  |
| ----------------- | ---------- | ------------- | ---------- |
| Memory Allocation | Contiguous | Dynamic Nodes | Contiguous |
| Access by Index   | O(1)       | O(n)          | O(1)       |
| Insert/Delete     | O(n)       | O(1) at ends  | O(n)       |
| Growable          | No         | Yes           | Yes        |

---

## **14. Visual Resources**

* **[Visualgo.net - Linked List Animation](https://visualgo.net/en/list)**

---

## **15. Practice Set**

### **Easy**

1. Insert at beginning/end.
2. Print linked list.
3. Count number of nodes.

### **Medium**

4. Find middle node.
5. Remove duplicates from sorted list.
6. Merge two sorted lists.

### **Hard**

7. Detect cycle (Floyd’s algo).
8. Sort a linked list (merge sort).
9. Reverse nodes in k-groups.
10. Copy list with random pointers.

---

### 16. **Glossary of Terms**

* **Head**: First node of the list
* **Tail**: Last node of the list
* **Node**: Single unit with data and reference(s)
* **Pointer/Reference**: Links to next (and/or previous) node
* **Traversal**: Visiting each node sequentially
* **Null Termination**: End of list indicator

---

## **17. FAQs & Interview SDE Problems**

* **Q1: Is LinkedList better than ArrayList?**
    * Depends. For frequent insertions/deletions, yes. For random access, no.

* **Q2: How to detect a cycle in a linked list?**
    * Use Floyd's Cycle Detection Algorithm (slow/fast pointer).

* **Q3: Can LinkedList be used as a stack or queue?**
    * Yes. Implements Deque. Use `addFirst()`/`removeFirst()` for stack, and `addLast()`/`removeFirst()` for queue.

* **Q4: Why is LinkedList slower than ArrayList in Java?**

    * Because `get(index)` is O(n) in LinkedList and O(1) in ArrayList.

* **Q5: When should I use LinkedList over ArrayList?**

    * When frequent insertions/deletions are expected, especially at the beginning or middle.

* **Q6: Can we implement a queue using a linked list?**

    * Yes, insert at tail and remove from head => O(1) operations

### **SDE Questions (with Solutions Overview)**

1. Reverse a list (Iterative/Recursive).
2. Detect & remove cycle.
3. Palindrome LinkedList (fast/slow + reverse).
4. Merge K sorted lists (min heap).
5. Add two numbers (linked list form).
6. Flatten nested list (DFS).
7. Intersection of two lists.
8. Rotate list by k.
9. Copy list with random pointer (hashmap).
10. Remove duplicates from unsorted list (hashset).
11. Swap nodes in pairs.
12. Delete node without head reference.
13. Find node from end.
14. Partition list around a value.

---

## **18. Further Reading / Resources**

* Java Docs: [https://docs.oracle.com/javase/8/docs/api/java/util/LinkedList.html](https://docs.oracle.com/javase/8/docs/api/java/util/LinkedList.html)
* Cracking the Coding Interview by Gayle Laakmann McDowell
* Leetcode Linked List Problems: [https://leetcode.com/tag/linked-list/](https://leetcode.com/tag/linked-list/)
* GFG DSA Linked List: [https://www.geeksforgeeks.org/data-structures/linked-list/](https://www.geeksforgeeks.org/data-structures/linked-list/)

---

## **19. Personal Insights / Best Practices**

* Always use diagrams in interviews.
* Use dummy node technique to simplify edge cases.
* Maintain tail pointer to optimize tail insertions.
* Rehearse common recursive solutions like reverse and merge sort.

---

**End of Notes: Linked Lists**

---
### 20. **Personal Insights / Best Practices**

* Always draw the linked list when solving problems—it reduces pointer bugs.
* Prefer dummy nodes (sentinels) to simplify insertion/deletion edge cases.
* For complex manipulations, consider creating helper methods (e.g., reverse, merge).
* In interviews, verbalize pointer changes—interviewers value clarity over code alone.

---

> ✅ **This topic is foundational. Mastering linked lists opens up recursion, tree traversal, stack/queue internals, and dynamic memory manipulation.**
