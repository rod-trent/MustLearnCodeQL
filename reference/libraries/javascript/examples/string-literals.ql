/**
 * @name String literals
 * @description Finds string literals in the codebase.
 * @kind problem
 * @id mustlearn/js-string-literals
 */
import javascript

from StringLiteral s
select s, "String literal: " + s.getValue()
