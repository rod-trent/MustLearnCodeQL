/**
 * @name Import declarations
 * @description Lists import declarations.
 * @kind problem
 * @id mustlearn/java-imports
 */
import java

from Import i
select i, "Import: " + i.getImportedName()
