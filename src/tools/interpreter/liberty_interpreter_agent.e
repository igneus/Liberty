-- This file is part of Liberty Eiffel.
--
-- Liberty Eiffel is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, version 3 of the License.
--
-- Liberty Eiffel is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Liberty Eiffel.  If not, see <http://www.gnu.org/licenses/>.
--
class LIBERTY_INTERPRETER_AGENT

inherit
	LIBERTY_INTERPRETER_OBJECT

creation {LIBERTY_INTERPRETER_OBJECT_CREATOR}
	make

feature {ANY}
	type: LIBERTY_ACTUAL_TYPE
	call: LIBERTY_CALL_EXPRESSION

	is_equal (other: LIBERTY_INTERPRETER_OBJECT): BOOLEAN is
		do
			Result := other = Current
		end

	converted_to (target_type: LIBERTY_ACTUAL_TYPE): LIBERTY_INTERPRETER_OBJECT is
		do
			not_yet_implemented
		end

feature {LIBERTY_INTERPRETER}
	set_call (a_call: like call) is
		require
			a_call /= Void
			call = Void
			a_call.is_agent_call
		do
			call := a_call
		ensure
			call = a_call
		end

feature {LIBERTY_INTERPRETER_EXTERNAL_TYPE_FUNCTION_BUILTINS}
	item_agent (parameters: TRAVERSABLE[LIBERTY_INTERPRETER_OBJECT]; call_position: LIBERTY_POSITION): LIBERTY_INTERPRETER_OBJECT is
		local
			args: TRAVERSABLE[LIBERTY_INTERPRETER_OBJECT]
		do
			args := unpack_tuple_and_closed(parameters, call_position)
			if args /= Void then
				not_yet_implemented
			end
		end

feature {LIBERTY_INTERPRETER_EXTERNAL_TYPE_PROCEDURE_BUILTINS}
	call_agent (parameters: TRAVERSABLE[LIBERTY_INTERPRETER_OBJECT]; call_position: LIBERTY_POSITION) is
		local
			args: TRAVERSABLE[LIBERTY_INTERPRETER_OBJECT]
		do
			args := unpack_tuple_and_closed(parameters, call_position)
			if args /= Void then
				not_yet_implemented
			end
		end

feature {}
	unpack_tuple_and_closed (parameters: TRAVERSABLE[LIBERTY_INTERPRETER_OBJECT]; call_position: LIBERTY_POSITION): TRAVERSABLE[LIBERTY_INTERPRETER_OBJECT] is
		local
			tuple: LIBERTY_INTERPRETER_OBJECT
		do
			if parameters.count /= 1 then
				interpreter.fatal_error("Bad number of arguments", call_position)
			else
				tuple := parameters.first
			end
		end

feature {LIBERTY_INTERPRETER_EXTERNAL_TYPE_ANY_BUILTINS} -- Standard builtings
	builtin_is_equal (other: LIBERTY_INTERPRETER_OBJECT; a_position: LIBERTY_POSITION): BOOLEAN is
		do
			not_yet_implemented
		end

	builtin_standard_is_equal (other: LIBERTY_INTERPRETER_OBJECT; a_position: LIBERTY_POSITION): BOOLEAN is
		do
			not_yet_implemented
		end

	builtin_copy (other: LIBERTY_INTERPRETER_OBJECT; a_position: LIBERTY_POSITION) is
		do
			not_yet_implemented
		end

	builtin_twin (a_position: LIBERTY_POSITION): like Current is
		do
			not_yet_implemented
		end

	builtin_standard_copy (other: LIBERTY_INTERPRETER_OBJECT; a_position: LIBERTY_POSITION) is
		do
			not_yet_implemented
		end

	builtin_standard_twin (a_position: LIBERTY_POSITION): like Current is
		do
			not_yet_implemented
		end

feature {LIBERTY_INTERPRETER_OBJECT}
	do_deep_twin (deep_twin_memory: DICTIONARY[LIBERTY_INTERPRETER_OBJECT, LIBERTY_INTERPRETER_OBJECT]; a_position: LIBERTY_POSITION): LIBERTY_INTERPRETER_OBJECT is
		do
			not_yet_implemented
		end

	do_deep_equal (object: LIBERTY_INTERPRETER_OBJECT; deep_equal_memory: SET[LIBERTY_INTERPRETER_OBJECT]; a_position: LIBERTY_POSITION): BOOLEAN is
		do
			not_yet_implemented
		end

feature {LIBERTY_INTERPRETER_OBJECT_PRINTER, LIBERTY_INTERPRETER_FEATURE_CALL}
	show_stack (o: OUTPUT_STREAM; indent: INTEGER) is
		do
			o.put_string(once "agent {")
			o.put_string(call.entity.target_type.known_type.full_name)
			o.put_string(once "}.")
			o.put_line(call.entity.feature_name.full_name)
		end

feature {}
	expanded_twin: like Current is
		do
			check False end
		end

feature {}
	make (a_interpreter: like interpreter; a_type: like type; a_position: like position) is
		require
			a_interpreter /= Void
			a_type /= Void
			a_position /= Void
		do
			interpreter := a_interpreter
			type := a_type
			position := a_position
		ensure
			interpreter = a_interpreter
			type = a_type
			position = a_position
		end

invariant
	call /= Void implies call.is_agent_call

end -- class LIBERTY_INTERPRETER_AGENT
