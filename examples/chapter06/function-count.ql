/**
 * @name Number of functions
 * @description Counts the number of functions in the database.
 * @kind metric
 * @id mustlearn/js-function-count
 * @tags maintainability
 */
import javascript

select count(Function f)
