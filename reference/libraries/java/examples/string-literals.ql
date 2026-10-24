/**
 * @name String literals
 * @description Finds string literals in the codebase.
 * @kind problem
 * @id mustlearn/java-string-literals
 */
import java

from StringLiteral s
select s, "String literal: " + s.getValue()
