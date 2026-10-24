/**
 * @name Decorators
 * @description Lists decorators.
 * @kind problem
 * @id mustlearn/py-decorators
 */
import python

from Function f, Expr d
where d = f.getADecorator()
select d, "Decorator on " + f.getName()
