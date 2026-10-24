/**
 * @name String literals
 * @description Finds string constants in the codebase.
 * @kind problem
 * @id mustlearn/py-string-literals
 */
import python

from StrConst s
select s, "String literal: " + s.getText()
