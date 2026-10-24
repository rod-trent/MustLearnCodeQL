/**
 * @name Properties
 * @description Lists properties.
 * @kind problem
 * @id mustlearn/cs-properties
 */
import csharp

from Property p
select p, "Property: " + p.getName()
