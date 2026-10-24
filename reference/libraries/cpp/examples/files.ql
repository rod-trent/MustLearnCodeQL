/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/cpp-files
 */
import cpp

from File f
select f, "File: " + f.getBaseName()
