/**
 * @name String literals
 * @description Finds string literals in the codebase.
 * @kind problem
 * @id mustlearn/cs-string-literals
 */
import csharp

from StringLiteral s
select s, "String literal: " + s.getValue()
