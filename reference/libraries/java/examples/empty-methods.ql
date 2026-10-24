/**
 * @name Empty methods
 * @description Finds methods with no statements in the body.
 * @kind problem
 * @id mustlearn/java-empty-methods
 */
import java

from Method m
where not exists(m.getBody().getAStmt())
select m, "Empty method"
