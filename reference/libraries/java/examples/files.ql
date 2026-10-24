/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/java-files
 */
import java

from File f
select f, "File: " + f.getBaseName()
