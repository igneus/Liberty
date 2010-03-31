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
class LIBERTY_FEATURE_DEFINITION

inherit
	LIBERTY_ENTITY
		redefine copy, out_in_tagged_out_memory
		end

insert
	LIBERTY_REACHABLE_MARKED
		redefine
			copy, out_in_tagged_out_memory
		end

creation {LIBERTY_TYPE_BUILDER_TOOLS}
	make

creation {LIBERTY_FEATURE_DEFINITION}
	specialized

feature {ANY}
	feature_name: LIBERTY_FEATURE_NAME
	creation_clients: COLLECTION[LIBERTY_TYPE]
	clients: COLLECTION[LIBERTY_TYPE]

	is_frozen: BOOLEAN
	the_feature: LIBERTY_FEATURE

	current_type: LIBERTY_ACTUAL_TYPE

	out_in_tagged_out_memory is
		do
			tagged_out_memory.append(once "feature definition: ")
			feature_name.out_in_tagged_out_memory
		end

	name: FIXED_STRING is
		do
			Result := feature_name.name
		end

	is_regular: BOOLEAN is
		do
			Result := feature_name.is_regular
		end

	is_prefix: BOOLEAN is
		do
			Result := feature_name.is_prefix
		end

	is_infix: BOOLEAN is
		do
			Result := feature_name.is_infix
		end

	is_creation: BOOLEAN is
		do
			Result := creation_clients /= Void
		end

	result_type: LIBERTY_TYPE is
		do
			if the_feature /= Void then
				Result := the_feature.result_type
			else
				-- should not happen??
				not_yet_implemented
			end
		end

	copy (other: like Current) is
		do
			feature_name := other.feature_name
			current_type := other.current_type
			clients := other.clients.twin
			is_frozen := other.is_frozen
			the_feature := other.the_feature
		end

	specialized_in (a_type: LIBERTY_ACTUAL_TYPE): like Current is
		local
			cl, ccl: COLLECTION[LIBERTY_TYPE]
			f: like the_feature
		do
			debug ("feature.specialization")
				std_output.put_string(once "Specializing in ")
				std_output.put_string(a_type.full_name)
				debug_display(std_output, False)
			end
			cl := specialized_clients(clients, a_type)
			if creation_clients /= Void then
				ccl := specialized_clients(creation_clients, a_type)
			end
			if the_feature /= Void then
				f := the_feature.specialized_in(a_type)
				the_feature.bind(f, a_type)
			end
			if a_type = current_type and then cl = clients and then ccl = creation_clients and then f = the_feature then
				Result := Current
			else
				create Result.specialized(feature_name, a_type, ccl, cl, is_frozen, f, position)
			end
			debug ("feature.specialization")
				std_output.put_string(once "Specialized in ")
				std_output.put_string(a_type.full_name)
				debug_display(std_output, True)
			end
		end

feature {}
	specialized_clients (a_clients: like clients; a_type: LIBERTY_ACTUAL_TYPE): like clients is
		require
			a_type /= Void
			a_clients /= Void
		local
			t: LIBERTY_TYPE
			i: INTEGER
		do
			from
				Result := a_clients
				i := Result.lower
			until
				i > Result.upper
			loop
				t := Result.item(i).specialized_in(a_type)
				if t /= Result.item(i) then
					if Result = a_clients then
						Result := Result.twin
					end
					Result.put(t, i)
				end
				i := i + 1
			end
		end

feature {LIBERTY_UNIVERSE}
	set_reachable (mark: like reachable_mark) is
		do
			if not is_reachable then
				debug ("mark.reachable")
					std_output.put_string(once "Marked reachable the feature definition: ")
					std_output.put_line(feature_name.name)
				end
				torch.burn
			end

			if reachable_mark < mark then
				reachable_mark := mark
				if the_feature /= Void then
					the_feature.mark_reachable_code(mark)
				end
			end
		end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
	mark_reachable_code (mark: INTEGER) is
		do
			set_reachable(mark)
		end

feature {ANY}
	debug_display (o: OUTPUT_STREAM; show_details: BOOLEAN) is
		do
			o.put_string(once "   feature ")
			debug_clients(o, clients)
			if is_creation then
				o.put_string(once " create ")
				debug_clients(o, creation_clients)
			end
			if is_frozen then
				o.put_string(once " frozen")
			end
			if is_prefix then
				o.put_string(once " prefix ")
			elseif is_infix then
				o.put_string(once " infix ")
			else
				o.put_character(' ')
			end
			o.put_string(name.out)
			if show_details then
				if the_feature = Void then
					o.put_line(once " is not yet attached")
				else
					o.put_line(once " is")
					the_feature.debug_display(o, 2)
					o.put_line(once "      end")
				end
			else
				o.put_new_line
			end
		end

feature {}
	debug_clients (o: OUTPUT_STREAM; c: like clients) is
		local
			i: INTEGER
		do
			o.put_character('{')
			from
				i := c.lower
			until
				i > c.upper
			loop
				o.put_string(c.item(i).full_name.out)
				if i < c.upper then
					o.put_string(once ", ")
				end
				i := i + 1
			end
			o.put_character('}')
		end

feature {LIBERTY_TYPE_BUILDER_TOOLS}
	set_clients (a_clients: like clients) is
		require
			a_clients /= Void
		do
			clients := a_clients
		ensure
			clients = a_clients
		end

	set_the_feature (a_feature: like the_feature) is
		require
			a_feature.current_type = current_type
		do
			the_feature := a_feature
		ensure
			the_feature = a_feature
		end

	set_creation_clients (a_creation_clients: like creation_clients) is
		require
			a_creation_clients /= Void
		do
			creation_clients := a_creation_clients
		ensure
			is_creation
			creation_clients = a_creation_clients
		end

	join (fd: like Current; a_parent_type: LIBERTY_ACTUAL_TYPE) is
		require
			fd.current_type = current_type
			fd.has_precursor(a_parent_type)
		local
			old_feature: like the_feature
		do
			if not same_clients(fd.clients) then
				--| *** TODO: warning: the inherited features don't have the same export clauses (the second set
				--| is ignored)
			end
			old_feature := the_feature
			if fd.the_feature /= Void then
				if old_feature = Void then
					the_feature := fd.the_feature
				elseif old_feature.id /= fd.the_feature.id then
					the_feature := old_feature.join(current_type, fd.the_feature, Current, fd)
				end
			end
			if not has_precursor(a_parent_type) then
				add_precursor(fd.precursor_feature(a_parent_type), a_parent_type)
			else
				check
					precursor_feature(a_parent_type) = fd.precursor_feature(a_parent_type)
				end
			end
		ensure
			has_precursor(a_parent_type)
		end

	re_name (a_name: like feature_name) is
		require
			a_name /= Void
		do
			feature_name := a_name
		ensure
			feature_name = a_name
		end

feature {LIBERTY_FEATURE, LIBERTY_FEATURE_DEFINITION}
	fatal_join_error_redefined_concrete (type: LIBERTY_ACTUAL_TYPE; with: LIBERTY_FEATURE_DEFINITION) is
		do
			debug ("type.building")
				std_output.put_string(once "Cannot join redefined feature ")
				std_output.put_string(feature_name.name)
				std_output.put_string(once " from ")
				std_output.put_string(the_feature.definition_type.full_name)
				std_output.put_string(once " with concrete feature ")
				std_output.put_string(with.feature_name.name)
				std_output.put_string(once " from ")
				std_output.put_string(with.the_feature.definition_type.full_name)
				std_output.put_string(once " in type ")
				std_output.put_line(type.full_name)
				sedb_breakpoint
			end
			not_yet_implemented
		ensure
			errors.has_error
		end

	fatal_join_error_concrete_redefined (type: LIBERTY_ACTUAL_TYPE; with: LIBERTY_FEATURE_DEFINITION) is
		do
			with.fatal_join_error_redefined_concrete(type, Current)
		ensure
			errors.has_error
		end

	fatal_join_error_concrete_concrete (type: LIBERTY_ACTUAL_TYPE; with: LIBERTY_FEATURE_DEFINITION) is
		do
			debug ("type.building")
				std_output.put_string(once "Cannot join concrete feature ")
				std_output.put_string(feature_name.name)
				std_output.put_string(once " from ")
				std_output.put_string(the_feature.definition_type.full_name)
				std_output.put_string(once " with concrete feature ")
				std_output.put_string(with.feature_name.name)
				std_output.put_string(once " from ")
				std_output.put_string(with.the_feature.definition_type.full_name)
				std_output.put_string(once " in type ")
				std_output.put_line(type.full_name)
				sedb_breakpoint
			end
			not_yet_implemented
		ensure
			errors.has_error
		end

feature {LIBERTY_TYPE_BUILDER_TOOLS, LIBERTY_FEATURE_DEFINITION}
	add_precursor (a_precursor_feature: LIBERTY_FEATURE; a_precursor_type: LIBERTY_ACTUAL_TYPE) is
		require
			not has_precursor(a_precursor_type)
		do
			if precursors = Void then
				create {HASHED_DICTIONARY[LIBERTY_FEATURE, LIBERTY_ACTUAL_TYPE]} precursors.with_capacity(3)
			end
			precursors.add(a_precursor_feature, a_precursor_type)
			torch.burn
		ensure
			precursor_feature(a_precursor_type) = a_precursor_feature
		end

	has_precursor (a_precursor_type: LIBERTY_ACTUAL_TYPE): BOOLEAN is
		do
			if precursors /= Void then
				if a_precursor_type /= Void then
					Result := precursors.fast_has(a_precursor_type)
				else
					Result := precursors.count = 1
				end
			end
		end

	precursor_feature (a_precursor_type: LIBERTY_ACTUAL_TYPE): LIBERTY_FEATURE is
		require
			has_precursor(a_precursor_type)
		do
			if a_precursor_type /= Void then
				Result := precursors.fast_at(a_precursor_type)
			else
				Result := precursors.first
			end
		end

feature {}
	same_clients (a_clients: like clients): BOOLEAN is
		do
			Result := clients.count = a_clients.count
				and then include(clients, a_clients)
				and then include(a_clients, clients)
		end

	include (set, subset: like clients): BOOLEAN is
		local
			i, j: INTEGER
		do
			from
				Result := set.count >= subset.count
				i := subset.lower
			until
				not Result or else i > subset.upper
			loop
				from
					Result := False
					j := set.lower
				until
					Result or else j > set.upper
				loop
					Result := set.item(j) = subset.item(i)
					j := j + 1
				end
				i := i + 1
			end
		end

feature {}
	make (a_name: like feature_name; a_type: like current_type; a_clients: like clients; a_frozen: like is_frozen; a_position: like position) is
		require
			a_name /= Void
			a_type /= Void
			a_clients /= Void
			a_position /= Void
		do
			feature_name := a_name
			current_type := a_type
			clients := a_clients
			is_frozen := a_frozen
			position := a_position

			debug ("full_name")
				debug_full_name := a_name.full_name.out
			end
		ensure
			feature_name = a_name
			current_type = a_type
			clients = a_clients
			is_frozen = a_frozen
			position = a_position
		end

	specialized (a_name: like feature_name; a_type: like current_type; a_creation_clients: like creation_clients; a_clients: like clients; a_frozen: like is_frozen; a_feature: like the_feature; a_position: like position) is
		do
			make(a_name, a_type, a_clients, a_frozen, a_position)
			the_feature := a_feature
			if a_creation_clients /= Void then
				set_creation_clients(a_creation_clients)
			end

			debug ("full_name")
				debug_full_name := a_name.full_name.out
			end
		end

	precursors: DICTIONARY[LIBERTY_FEATURE, LIBERTY_ACTUAL_TYPE]
	torch: LIBERTY_ENLIGHTENING_THE_WORLD
	errors: LIBERTY_ERRORS

	debug_full_name: STRING

feature {ANY}
	accept (v: VISITOR) is
		local
			v0: LIBERTY_FEATURE_DEFINITION_VISITOR
		do
			v0 ::= v
			v0.visit_liberty_feature_definition(Current)
		end

invariant
	feature_name /= Void
	clients /= Void
	the_feature /= Void implies the_feature.current_type = current_type

end
