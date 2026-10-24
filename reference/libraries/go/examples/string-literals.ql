/**
 * @name String literals
 * @description Finds string literals in the codebase.
 * @kind problem
 * @id mustlearn/go-string-literals
 */
import go

from StringLit s
select s, "String literal: " + s.getValue()
