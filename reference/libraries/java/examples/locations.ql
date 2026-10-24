/**
 * @name Locations
 * @description Lists the location of every method.
 * @kind problem
 * @id mustlearn/java-locations
 */
import java

from Method m
select m, m.getLocation().toString()
