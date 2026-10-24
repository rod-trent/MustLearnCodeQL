/**
 * @name Empty functions
 * @description Finds functions with no statements in the body.
 * @kind problem
 * @id mustlearn/rust-empty-functions
 */
import rust

from Function f
where not exists(f.getBody().getAStmt())
select f, "Empty function"
