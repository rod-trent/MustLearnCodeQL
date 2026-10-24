/**
 * @name Annotations
 * @description Lists annotations.
 * @kind problem
 * @id mustlearn/java-annotations
 */
import java

from Annotation a
select a, "Annotation: " + a.getType().getName()
