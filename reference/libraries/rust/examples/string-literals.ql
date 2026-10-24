/**
 * @name String literals
 * @description Finds string literals in the codebase.
 * @kind problem
 * @id mustlearn/rust-string-literals
 */
import rust

from StringLiteral s
select s, "String literal: " + s.getValue()
