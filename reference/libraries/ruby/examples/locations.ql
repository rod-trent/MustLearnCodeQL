/**
 * @name Locations
 * @description Lists the location of every method.
 * @kind problem
 * @id mustlearn/ruby-locations
 */
import ruby

from Method m
select m, m.getLocation().toString()
