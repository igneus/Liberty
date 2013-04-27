-- This file is part of Liberty Eiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
deferred class BASE_TYPE_CONSTANT
   --
   -- Ancestor of BOOLEAN_CONSTANT, CHARACTER_CONSTANT, INTEGER_CONSTANT and REAL_CONSTANT.
   --

inherit
   MANIFEST_EXPRESSION

feature {ANY}
   is_static: BOOLEAN is True

   is_manifest_string, is_void: BOOLEAN is False

   start_position: POSITION

   frozen side_effect_free (type: TYPE): BOOLEAN is
      do
         Result := True
      end

   adapt_for (t: TYPE): like Current is
      do
         Result := Current
      end

   frozen safety_check (type: TYPE) is
      do
      end

   frozen specialize_in (type: TYPE): like Current is
      do
         Result := Current
      end

   frozen specialize_thru (parent_type: TYPE; parent_edge: PARENT_EDGE; new_type: TYPE): like Current is
      do
         Result := Current
      end

   frozen specialize_and_check (type: TYPE): like Current is
      do
         Result := Current
      end

   has_been_specialized: BOOLEAN is True

   frozen bracketed_pretty, frozen pretty (indent_level: INTEGER) is
      do
         pretty_printer.put_string(to_string)
      end

   pretty_target (indent_level: INTEGER) is
      do
         if extra_bracket_flag then
            pretty_printer.put_character('(')
            pretty(indent_level)
            pretty_printer.put_character(')')
         else
            pretty(indent_level)
         end
         pretty_printer.put_character('.')
      end

   frozen short (type: TYPE) is
      do
         short_printer.put_base_type_constant(to_string)
      end

   frozen short_target (type: TYPE) is
      do
         short(type)
         short_printer.put_dot
      end

   frozen precedence: INTEGER is
      do
         Result := atomic_precedence
      end

   frozen non_void_no_dispatch_type (type: TYPE): TYPE is
      do
         Result := resolve_in(type)
      end

   frozen simplify (type: TYPE): EXPRESSION is
      do
         Result := Current
      end

   frozen collect (type: TYPE): TYPE is
      do
         Result := resolve_in(type)
         smart_eiffel.collect_constant(Result)
      end

feature {CODE, EFFECTIVE_ARG_LIST}
   inline_dynamic_dispatch_ (code_accumulator: CODE_ACCUMULATOR; type: TYPE) is
      do
         code_accumulator.add_sedb(start_position, 'S')
         code_accumulator.current_context.add_last(Current)
      end

feature {}
   to_string: STRING is
      deferred
      end

end -- class BASE_TYPE_CONSTANT
--
-- ------------------------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- Liberty Eiffel is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License,
-- as published by the Free Software Foundation; either version 2, or (at your option) any later version.
-- Liberty Eiffel is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY; without even the implied warranty
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have
-- received a copy of the GNU General Public License along with Liberty Eiffel; see the file COPYING. If not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
--
-- Copyright(C) 2011-2012: Cyril ADRIAN, Paolo REDAELLI
--
-- http://liberty-eiffel.blogspot.com - https://github.com/LibertyEiffel/Liberty
--
--
-- Liberty Eiffel is based on SmartEiffel (Copyrights below)
--
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- ------------------------------------------------------------------------------------------------------------------------------
