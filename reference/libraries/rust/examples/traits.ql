/**
 * @name Traits
 * @description Lists traits.
 * @kind problem
 * @id mustlearn/rust-traits
 */
import rust

from Trait t
select t, "Trait: " + t.getName()
