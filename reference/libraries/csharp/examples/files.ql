/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/cs-files
 */
import csharp

from File f
select f, "File: " + f.getBaseName()
