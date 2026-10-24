/**
 * @name Protocols
 * @description Lists protocols.
 * @kind problem
 * @id mustlearn/swift-protocols
 */
import swift

from Protocol p
select p, "Protocol: " + p.getName()
