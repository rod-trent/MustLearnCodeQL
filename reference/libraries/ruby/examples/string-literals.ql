/**
 * @name String literals
 * @description Finds string literals in the codebase.
 * @kind problem
 * @id mustlearn/ruby-string-literals
 */
import ruby

from StringLiteral s
select s, "String literal: " + s.getValue()
