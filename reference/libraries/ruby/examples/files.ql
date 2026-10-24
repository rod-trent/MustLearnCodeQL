/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/ruby-files
 */
import ruby

from File f
select f, "File: " + f.getBaseName()
