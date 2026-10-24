/**
 * @name Require calls
 * @description Lists require calls.
 * @kind problem
 * @id mustlearn/ruby-requires
 */
import ruby

from MethodCall c
where c.getMethodName() = "require"
select c, "require"
