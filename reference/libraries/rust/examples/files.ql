/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/rust-files
 */
import rust

from File f
select f, "File: " + f.getBaseName()
