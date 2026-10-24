/**
 * @name Functions with many calls
 * @description Lists functions that contain more than five calls.
 * @kind problem
 * @id mustlearn/go-many-calls
 */
import go

from FuncDecl f
where count(f.getACall()) > 5
select f, "Function has " + count(f.getACall()) + " calls"
