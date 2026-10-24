/**
 * @name Locations
 * @description Lists the location of every function.
 * @kind problem
 * @id mustlearn/swift-locations
 */
import swift

from Function f
select f, f.getLocation().toString()
