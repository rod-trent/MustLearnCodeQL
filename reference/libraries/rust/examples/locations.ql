/**
 * @name Locations
 * @description Lists the location of every function.
 * @kind problem
 * @id mustlearn/rust-locations
 */
import rust

from Function f
select f, f.getLocation().toString()
