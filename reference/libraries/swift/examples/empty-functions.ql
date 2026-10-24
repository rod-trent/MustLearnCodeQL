/**
 * @name Empty functions
 * @description Finds functions with no statements in the body.
 * @kind problem
 * @id mustlearn/swift-empty-functions
 */
import swift

from Function f
where not exists(f.getBody().getAStmt())
select f, "Empty function"
