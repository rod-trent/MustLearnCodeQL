/**
 * @name Locations
 * @description Lists the location of every function.
 * @kind problem
 * @id mustlearn/js-locations
 */
import javascript

from Function f
select f, f.getLocation().toString()
