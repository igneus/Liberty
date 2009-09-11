deferred class BINARY_INPUT_STREAM
	--
	-- A binary input stream is an input stream that is binary safe (meaning that, except for failure modes, 
	-- you can read back the very same sequence of bytes you wrote to that stream)
	--

inherit
	INPUT_STREAM

feature {ANY}
	read_byte is
			-- Read a byte and assign it to `last_byte'.
		require
			is_connected
			not is_filtered
			can_read_character
		deferred
		end

	last_byte: INTEGER is
			-- Last byte read with `read_byte'.
		require
			is_connected
			not end_of_input
			not is_filtered
		deferred
		end

	read_integer_16_native_endian is
			-- Read in the same order as the machine running this code. If a
			-- 16-bits value is available, it's assigned to `last_integer_16'.
			-- The result is machine dependant.
		require
			is_connected
			not is_filtered
			can_read_character
		deferred
		end

	read_integer_16_big_endian is
			-- Read a big endian value is the file. If a 16-bits value
			-- is available, it's assigned to `last_integer_16'.
		require
			is_connected
			not is_filtered
			can_read_character
		deferred
		end

	read_integer_16_little_endian is
			-- Read a little endian value is the file. If a 16-bits value
			-- is available, it's assigned to `last_integer_16'.
		require
			is_connected
			not is_filtered
			can_read_character
		deferred
		end

	last_integer_16: INTEGER is
			-- Last byte read with `read_integer_16_*'.
		require
			is_connected
			not end_of_input
			not is_filtered
		deferred
		end

	read_integer_32_native_endian is
			-- Read in the same order as the machine running this code. If a
			-- 32-bits value is available, it's assigned to `last_integer_32'.
			-- The result is machine dependant.
		require
			is_connected
		deferred
		end

	read_integer_32_big_endian is
			-- Read a big endian value is the file. If 32-bits value
			-- is available, it's assigned to `last_integer_32'.
		require
			is_connected
			not is_filtered
			can_read_character
		deferred
		end

	read_integer_32_little_endian is
			-- Read a little endian value is the file. If a 32-bits value
			-- is available, it's assigned to `last_integer_32'.
		require
			is_connected
			not is_filtered
			can_read_character
		deferred
		end

	last_integer_32: INTEGER is
		require
			is_connected
			not end_of_input
			not is_filtered
		deferred
		end

end -- class BINARY_INPUT_STREAM
