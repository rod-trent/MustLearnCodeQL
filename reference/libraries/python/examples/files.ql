/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/py-files
 */
import python

from File f
select f, "File: " + f.getBaseName()
