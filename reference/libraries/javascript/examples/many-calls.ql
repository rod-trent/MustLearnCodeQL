/**
 * @name Functions with many calls
 * @description Lists functions that contain more than five calls.
 * @kind problem
 * @id mustlearn/js-many-calls
 */
import javascript

from Function f
where count(f.getACall()) > 5
select f, "Function has " + count(f.getACall()) + " calls"
