/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/go-files
 */
import go

from File f
select f, "File: " + f.getBaseName()
