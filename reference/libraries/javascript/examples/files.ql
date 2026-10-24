/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/js-files
 */
import javascript

from File f
select f, "File: " + f.getBaseName()
