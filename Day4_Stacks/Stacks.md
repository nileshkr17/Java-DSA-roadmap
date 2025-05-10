# **Data Structures & Algorithms in Java: Stacks**

---

## **1. Simple Explanation**

A **Stack** is a linear data structure that follows the **Last In First Out (LIFO)** principle. The element inserted last is removed first. Java provides a `Stack` class in the `java.util` package, but using `Deque` (ArrayDeque) is often preferred for better performance.

**Operations:**

* `push()`: Add an element to the top.
* `pop()`: Remove the top element.
* `peek()`: View the top element without removing it.
* `isEmpty()`: Check if the stack is empty.

**Use-case Analogy**: Think of a stack of plates—adding/removing only happens at the top.

---

### 2. Illustration / Diagram:

```
Stack Top --> 40 (peek)
             30
             20
             10  <- Bottom
```

Operations happen only at the top of the stack.

---

### 3. Time and Space Complexity:

| Operation | Time Complexity | Space Complexity |
| --------- | --------------- | ---------------- |
| push      | O(1)            | O(n)             |
| pop       | O(1)            | O(1)             |
| peek      | O(1)            | O(1)             |
| isEmpty   | O(1)            | O(1)             |

**Optimization**:

* Use `ArrayDeque` instead of `Stack` class for faster operations.

---

### 4. Applications in Algorithms:

* **DFS**:

    * Use stack to traverse nodes in depth-first order.
* **Expression Parsing**:

    * Evaluate postfix, prefix, infix expressions.
* **Backtracking**:

    * Sudoku solver, maze solving use stacks to store paths.
* **Browser Navigation**:

    * Implement backward/forward using two stacks.

---

### 5. Advanced Techniques:

* **Lazy Evaluation in Stacks**:

    * Delay computation using a `Supplier<T>` wrapper until `pop()`.
* **Two Stacks in One Array**:

    * Use one array and grow stacks from ends inward.
* **Circular Stack**:

    * Implement stack using circular buffer for constant time operations.

---

### 6. Memory Management for Stacks:

* **Stack vs Heap**:

    * Stack memory is for static memory allocation (function calls, primitives).
    * Heap memory is for dynamic allocation (objects, arrays).
* **Call Stack Growth**:

    * Recursive calls add stack frames; large depths can cause stack overflow.

---

### 7. Multiple Stack Operations:

* **Push Multiple Elements**:

    * Batch `pushAll(Collection<T>)` implementation.
* **Batch Pop**:

    * Return last k elements in a list using iteration.

---

### 8. Stack with Iterators:

* Create an iterator using an internal list copy for non-destructive traversal.

---

### 9. Security & Optimization:

* **Stack Overflow**:

    * Use tail-recursion or iterative conversion.
* **Memory Leaks**:

    * Ensure popped elements are dereferenced to allow garbage collection.

---

### 10. Integration with Other Data Structures:

* **Stack and Queue**:

    * Implement queue using two stacks.
* **Stack and Linked List**:

    * Use singly linked list to implement a custom stack.

---

### 11. Interview Questions (Level-wise):

**Level 1 (Easy):**

* Implement a stack using arrays.
* Reverse a string using stack.
* Balanced parentheses checker.

**Level 2 (Medium):**

* Design a stack with getMin() in O(1).
* Evaluate postfix expression.
* Next Greater Element problem.

**Level 3 (Hard):**

* Largest rectangle in histogram.
* Max rectangle of 1s in binary matrix.
* Implement K stacks in an array.

---

### 12. Interview Answering Tips:

* **Explain** LIFO clearly with an example.
* **Talk through edge cases**: empty stack, overflow.
* **Describe time/space complexities**.
* **Avoid** explaining too generally—tailor answers to the problem asked.

---

### 13. Real-world Applications:

* Undo functionality in editors.
* Call stack in recursive functions.
* Expression evaluation in compilers.
* Game state tracking.

---

### 14. Common Pitfalls and Traps:

* Not checking `isEmpty()` before `pop()`.
* Misplacing `push` and `pop` order.
* Stack overflow due to deep recursion.

---

### 15. Key Takeaways:

* Stack is LIFO.
* Constant time operations.
* Core for recursion, backtracking, expression evaluation.
* Replace `Stack` with `ArrayDeque` in Java.

---

### 16. End-of-Topic Question:

**Implement an LRU (Least Recently Used) Cache using Stack and LinkedHashMap.**

---

### 17. Comparative Coding Table:

| Stack Type  | Usage Scenario            | Pros               | Cons                      |
| ----------- | ------------------------- | ------------------ | ------------------------- |
| Array-based | Fixed size known          | Fast access        | Fixed capacity            |
| Linked list | Dynamic size              | No overflow        | Extra memory for pointers |
| ArrayDeque  | Java alternative to Stack | Better performance | No thread safety          |

---

### 18. Memory Layout Diagram:

```
+-------------------------+
|   Method Stack Frame 1  |
|   Method Stack Frame 2  |
|   ...                   |
+-------------------------+
```

* Each function call adds a frame to the stack.
* Stack overflows if too many frames are added (deep recursion).

---

### 19. Practice Sets (6–10 Questions):

1. Reverse a stack using recursion.
2. Design a Min Stack.
3. Implement a queue using two stacks.
4. Sort a stack.
5. Validate stack sequences.
6. Decode a nested expression.
7. Largest rectangle in histogram.
8. Trapping Rain Water using stacks.
9. Clone a stack without modifying it.
10. Merge two stacks into one.

---

### 20. Glossary:

* **LIFO**: Last-In-First-Out
* **Stack Frame**: The memory unit for function calls
* **Tail Recursion**: A recursion where the recursive call is the last operation

---

### 21. FAQs:

* **Q: Why prefer ArrayDeque over Stack in Java?**
  A: Because Stack is synchronized and slower. ArrayDeque is faster and more memory-efficient.

* **Q: How to avoid stack overflow in recursion?**
  A: Use iterative methods or optimize with tail recursion.

---

### 22. Further Reading:

* [GeeksforGeeks - Stack](https://www.geeksforgeeks.org/stack-data-structure/)
* [Java Docs - ArrayDeque](https://docs.oracle.com/javase/8/docs/api/java/util/ArrayDeque.html)
* [Visualgo.net Stack Visualization](https://visualgo.net/en/list)

---

### 23. Personal Insights / Best Practices:

* Always check for edge cases.
* Visualize stack operations to debug.
* Practice problems with increasing complexity.
* Replace recursion with a stack manually to understand control flow.

---


> ✅ **This topic is foundational. Mastering stacks opens up recursion, tree traversal, and expression parsing.**


---
Click [here](../Day5_Queues/Queues.md) to continue to the next topic: Queues.


