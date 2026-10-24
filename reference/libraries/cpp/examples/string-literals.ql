/**
 * @name String literals
 * @description Finds string literals in the codebase.
 * @kind problem
 * @id mustlearn/cpp-string-literals
 */
import cpp

from StringLiteral s
select s, "String literal: " + s.getValue()
