/**
 * @name Even squares of small integers
 * @description Selects even small integers and their squares.
 * @kind problem
 * @id mustlearn/even-squares
 */
import SmallInt

from SmallInt i
where i.isEven()
select i, i.square(), "Even square"
