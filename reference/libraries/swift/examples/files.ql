/**
 * @name Files
 * @description Lists source files.
 * @kind problem
 * @id mustlearn/swift-files
 */
import swift

from File f
select f, "File: " + f.getBaseName()
