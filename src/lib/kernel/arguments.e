-- See the Copyright notice at the end of this file.
--
class ARGUMENTS
	--
	-- Insert this class when you need access to command-line arguments.
	--

insert
	ANY

feature {}
	argument_count: INTEGER is
			-- Number of arguments given to command that started system execution (command name does not count).
		do
			Result := command_arguments.upper
		ensure
			Result >= 0
		end

	argument (i: INTEGER): STRING is
			-- `i' th argument of command that started system execution
			-- Gives the command name if `i' is 0.
		require
			i >= 0
			i <= argument_count
		do
			Result := command_arguments.item(i)
		ensure
			Result /= Void
		end

	command_name: STRING is
		do
			Result := command_arguments.item(0)
		end

	frozen command_arguments: FAST_ARRAY[STRING] is
			-- Give acces to arguments command line including the command name at index 0.
			-- This is a once function, so you can modify command-line arguments!
		local
			i: INTEGER; arg: STRING
		once
			from
				i := se_argc
				create Result.make(i)
			until
				i = 0
			loop
				i := i - 1
				arg := se_argv(i)
				Result.put(arg, i)
			end
		ensure
			not Result.is_empty
		end

feature {} -- Implementation of ARGUMENTS (do not use directly):
	se_argc: INTEGER is
			-- To implement `command_arguments'
		external "built_in"
		end

	se_argv (i: INTEGER): STRING is
			-- To implement `command_arguments'
		external "built_in"
		end

end -- class ARGUMENTS
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
