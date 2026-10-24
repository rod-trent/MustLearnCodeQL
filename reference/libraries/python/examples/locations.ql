/**
 * @name Locations
 * @description Lists the location of every function.
 * @kind problem
 * @id mustlearn/py-locations
 */
import python

from Function f
select f, f.getLocation().toString()
