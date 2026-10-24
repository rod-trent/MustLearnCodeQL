/**
 * @name Locations
 * @description Lists the location of every method.
 * @kind problem
 * @id mustlearn/cs-locations
 */
import csharp

from Method m
select m, m.getLocation().toString()
