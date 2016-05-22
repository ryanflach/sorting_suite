### Sorting Suite

This project covered three main computer science sorting algorithms: bubble sort, insertion sort, and merge sort.

Each class file has its own tests that can be run individually or collectively with the rakefile (`rake test`).

To inspect or test classes individually, please load them in pry/irb.

A SortingSuite module has been created and stored in `sorting_suite.rb` to allow access to all classes from a single module. Access to each class from within `sorting_suite.rb` uses the standard `SortingSuite::ClassName` syntax.

Additionally, this version of the project includes two extensions:

1. _`inplace_sort` _for InsertionSort_
  * Access to the method `inplace_sort` is available via the original class or the SortingSuite module.
  * Per the spec, the InsertionSort methods `sort` and `inplace_sort` will use the array that the class was instantiated with, if present.
2. _Benchmarking_
  * Benchmark is its own class, but per the spec usage will occur via the SortingSuite module. The three primary methods, `time`, `fastest`, and `slowest`, return a string indicating the time taken, which method is fastest, and which method is slowest, respectively.
