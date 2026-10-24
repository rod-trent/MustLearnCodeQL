/**
 * @name String literals
 * @description Finds string literals in the codebase.
 * @kind problem
 * @id mustlearn/swift-string-literals
 */
import swift

from StringLiteral s
select s, "String literal: " + s.getValue()
