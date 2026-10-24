/**
 * @name Functions with many calls
 * @description Lists functions that contain more than five calls.
 * @kind problem
 * @id mustlearn/py-many-calls
 */
import python

from Function f
where count(f.getACall()) > 5
select f, "Function has " + count(f.getACall()) + " calls"
