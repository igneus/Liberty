-- See the Copyright notice at the end of this file.
--
class ITERATOR_ON_LINKED_LIST[E_]
	-- Please do not use this class directly. Look at `ITERATOR'.

inherit
	ITERATOR[E_]

creation {ANY}
	make

feature {}
	linked_list: LINKED_LIST[E_]
			-- The one to be traversed.

	current_link: LINKED_LIST_NODE[E_]
			--  Memorize the current position.

feature {ANY}
	make (ll: LINKED_LIST[E_]) is
		require
			ll /= Void
		do
			linked_list := ll
			current_link := linked_list.first_link
		ensure
			linked_list = ll
		end

	start is
		do
			current_link := linked_list.first_link
		end

	is_off: BOOLEAN is
		do
			Result := current_link = Void
		end

	item: E_ is
		do
			Result := current_link.item
		end

	next is
		do
			current_link := current_link.next
		end

end -- class ITERATOR_ON_LINKED_LIST
--
-- ------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- This file is part of the SmartEiffel standard library.
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
-- documentation files (the "Software"), to deal in the Software without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
-- the Software, and to permit persons to whom the Software is furnished to do so, subject to the following
-- conditions:
--
-- The above copyright notice and this permission notice shall be included in all copies or substantial
-- portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
-- LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
-- EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
-- AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
-- OR OTHER DEALINGS IN THE SOFTWARE.
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------
