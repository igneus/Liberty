-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class TEST_OLD_MANIFEST_ARRAY

insert
   EIFFELTEST_TOOLS

create {}
   make

feature {ANY}
   foo: STRING is "foo"

   bar: STRING is "bar"

   make is
      do
         assert((
         <<foo, bar>>).is_equal({ARRAY[STRING] 1, << foo, bar >> }))
         assert((
         <<1, 1000>>).is_equal({ARRAY[INTEGER_16] 1, << 1, 1000 >> }))
         assert((
         <<1.5, 100.7>>).is_equal({ARRAY[REAL] 1, << 1.5, 100.7 >> }))
         assert((
         <<cat, dog>>).is_equal({ARRAY[QUADRUPED] 1, << cat, dog >> }))
         assert((
         <<1, 2>>).item(1) = 1)
      end

   cat: CAT is
      once
         create Result
      end

   dog: DOG is
      once
         create Result
      end

end -- class TEST_OLD_MANIFEST_ARRAY
--
-- ------------------------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- SmartEiffel is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License,
-- as published by the Free Software Foundation; either version 2, or (at your option) any later version.
-- SmartEiffel is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY; without even the implied warranty
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have
-- received a copy of the GNU General Public License along with SmartEiffel; see the file COPYING. If not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
--
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------------------------
