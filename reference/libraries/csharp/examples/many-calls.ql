/**
 * @name Methods with many calls
 * @description Lists methods that contain more than five calls.
 * @kind problem
 * @id mustlearn/cs-many-calls
 */
import csharp

from Method m
where count(m.getACall()) > 5
select m, "Method has " + count(m.getACall()) + " calls"
