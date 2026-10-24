/**
 * @name Locations
 * @description Lists the location of every function.
 * @kind problem
 * @id mustlearn/cpp-locations
 */
import cpp

from Function f
select f, f.getLocation().toString()
