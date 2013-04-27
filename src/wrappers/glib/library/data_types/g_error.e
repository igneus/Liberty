indexing
	description: "G_ERROR - information about an error that has occurred."
	copyright: "[
					Copyright (C) 2006 eiffel-libraries team, GTK+ team
					
					This library is free software; you can redistribute it and/or
					modify it under the terms of the GNU Lesser General Public License
					as published by the Free Software Foundation; either version 2.1 of
					the License, or (at your option) any later version.
					
					This library is distributed in the hope that it will be useful, but
					WITHOUT ANY WARRANTY; without even the implied warranty of
					MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
					Lesser General Public License for more details.

					You should have received a copy of the GNU Lesser General Public
					License along with this library; if not, write to the Free Software
					Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
					02110-1301 USA
					]"
					

class G_ERROR 
	-- The G_ERROR object contains information about an error that has
	-- occurred.

	-- GLib provides a standard method of reporting errors from a called
	-- function to the calling code. (This is the same problem solved by
	-- exceptions in other languages.) It's important to understand that this
	-- method is both a data type (the G_ERROR object) and a set of rules. If
	-- you use G_ERROR incorrectly, then your code will not properly
	-- interoperate with other code that use G_ERROR, and users of your API
	-- will probably get confused.

	-- First and foremost: G_ERROR should only be used to report recoverable
	-- runtime errors, never to report programming errors. If the programmer
	-- has screwed up, then you should use the facilities offered by
	-- GLIB_MESSAGE_LOGGING.
					
	-- Examples of recoverable runtime errors are "file not found" or "failed
	-- to parse input." Examples of programming errors are "NULL passed to
	-- strcmp()" or "attempted to free the same pointer twice." These two kinds
	-- of errors are fundamentally different: runtime errors should be handled
	-- or reported to the user, programming errors should be eliminated by
	-- fixing the bug in the program. This is why most functions in GLib and
	-- GTK+ do not use G_ERROR.

	-- Classes having features that can fail will insert SHARED_G_ERROR; each
	-- feature whose invocation can fail will change `error' and
	-- `is_successful'.
	
	-- Use 'matches' to see if the error
	-- matches a given domain and code
	
	-- (TODO) 'propagate' copies an error into an error location (so the calling
	-- function will receive it)
	
	-- 'clear' clears an error location by freeing the error and resetting
	-- the location to NULL. 
	
	-- To display an error to the user,
	-- simply display 'message', perhaps along with
	-- additional context known only to the calling function
	-- (the file being opened, or whatever -- though in the
	-- g_file_get_contents() case, error->message already
	-- contains a filename).

	-- When implementing a function that can report errors,
	-- the basic tool is (TODO) 'set'. Typically, if a fatal
	-- error occurs you want to (TODO) 'set_error', then return
	-- immediately.	
	
	-- TODO: Eiffellize. Things are somewhat more complicated if you yourself
	-- call another function that can report a GError. If the
	-- sub-function indicates fatal errors in some way other
	-- than reporting a GError, such as by returning TRUE on
	-- success, you can simply do the following:

	-- gboolean
	-- my_function_that_can_fail (GError **err)
	-- {
	--   g_return_val_if_fail (err == NULL || *err == NULL, FALSE);

	--   if (!sub_function_that_can_fail (err))
	--     {
	--        /* assert that error was set by the sub-function */
	--        g_assert (err == NULL || *err != NULL);  
	--        return FALSE;
	--     }

	--   /* otherwise continue, no error occurred */
	--   g_assert (err == NULL || *err == NULL);
	-- }

	-- If the sub-function does not indicate errors other than
	-- by reporting a GError, you need to create a temporary
	-- GError since the passed-in one may be
	-- NULL. g_propagate_error() is intended for use in this
	-- case.

	-- gboolean
	-- my_function_that_can_fail (GError **err)
	-- {
	--   GError *tmp_error;

	--   g_return_val_if_fail (err == NULL || *err == NULL, FALSE);

	--   tmp_error = NULL;
	--   sub_function_that_can_fail (&tmp_error);

	--   if (tmp_error != NULL)
	--     {
	--        /* store tmp_error in err, if err != NULL,
	--         * otherwise call g_error_free() on tmp_error 
	--         */
	--        g_propagate_error (err, tmp_error);
	--        return FALSE;
	--     }

	--   /* otherwise continue, no error occurred */
	-- }

	-- Error pileups are always a bug. For example, this code is incorrect:

	-- gboolean
	-- my_function_that_can_fail (GError **err)
	-- {
	--   GError *tmp_error;

	--   g_return_val_if_fail (err == NULL || *err == NULL, FALSE);

	--   tmp_error = NULL;
	--   sub_function_that_can_fail (&tmp_error);
	--   other_function_that_can_fail (&tmp_error);

	--   if (tmp_error != NULL)
	--     {
	--        g_propagate_error (err, tmp_error);
	--        return FALSE;
	--     }
	-- }

	-- tmp_error should be checked immediately after
	-- sub_function_that_can_fail(), and either cleared or
	-- propagated upward. The rule is: after each error, you
	-- must either handle the error, or return it to the
	-- calling function. Note that passing NULL for the error
	-- location is the equivalent of handling an error by
	-- always doing nothing about it. So the following code is
	-- fine, assuming errors in sub_function_that_can_fail()
	-- are not fatal to my_function_that_can_fail():

	-- gboolean
	-- my_function_that_can_fail (GError **err)
	-- {
	--   GError *tmp_error;

	--   g_return_val_if_fail (err == NULL || *err == NULL, FALSE);

	--   sub_function_that_can_fail (NULL); /* ignore errors */

	--   tmp_error = NULL;
	--   other_function_that_can_fail (&tmp_error);

	--   if (tmp_error != NULL)
	--     {
	--        g_propagate_error (err, tmp_error);
	--        return FALSE;
	--     }
	-- }

	-- Note that passing NULL for the error location ignores
	-- errors; it's equivalent to try {
	-- sub_function_that_can_fail(); } catch (...) {} in
	-- C++. It does not mean to leave errors unhandled; it
	-- means to handle them by doing nothing.

	-- Error domains and codes are conventionally named as follows:

	-- * The error domain is called
	-- <NAMESPACE>_<MODULE>_ERROR, for example G_EXEC_ERROR
	-- or G_THREAD_ERROR.
					
	-- * The error codes are in an enumeration called
	-- <Namespace><Module>Error; for example, GThreadError
	-- or GSpawnError.

	-- * Members of the error code enumeration are called
	-- <NAMESPACE>_<MODULE>_ERROR_<CODE>, for example
	-- G_SPAWN_ERROR_FORK or G_THREAD_ERROR_AGAIN.  *

	-- If there's a "generic" or "unknown" error code for
	-- unrecoverable errors it doesn't make sense to
	-- distinguish with specific codes, it should be called
	-- <NAMESPACE>_<MODULE>_ERROR_FAILED, for example
	-- G_SPAWN_ERROR_FAILED or G_THREAD_ERROR_FAILED.

	-- Summary of rules for use of GError:

	-- * Do not report programming errors via GError.

	-- * The last argument of a function that returns an
	-- error should be a location where a GError can be
	-- placed (i.e. "GError** error"). If GError is used
	-- with varargs, the GError** should be the last
	-- argument before the "...".

	-- * The caller may pass NULL for the GError** if they
	-- are not interested in details of the exact error
	-- that occurred.

	-- * If NULL is passed for the GError** argument, then
	-- errors should not be returned to the caller, but
	-- your function should still abort and return if an
	-- error occurs. That is, control flow should not be
	-- affected by whether the caller wants to get a
	-- GError.
					
	-- * If a GError is reported, then your function by
	-- definition had a fatal failure and did not complete
	-- whatever it was supposed to do. If the failure was
	-- not fatal, then you handled it and you should not
	-- report it. If it was fatal, then you must report it
	-- and discontinue whatever you were doing immediately.
					
	-- * A GError* must be initialized to NULL before
	-- passing its address to a function that can report
	-- errors.
					
	-- * "Piling up" errors is always a bug. That is, if
	-- you assign a new GError to a GError* that is
	-- non-NULL, thus overwriting the previous error, it
	-- indicates that you should have aborted the operation
	-- instead of continuing. If you were able to continue,
	-- you should have cleared the previous error with
	-- g_clear_error(). g_set_error() will complain if you
	-- pile up errors.  *

	-- By convention, if you return a boolean value
	-- indicating success then TRUE means success and FALSE
	-- means failure. If FALSE is returned, the error must
	-- be set to a non-NULL value.
				
	-- * A NULL return value is also frequently used to
	-- mean that an error occurred. You should make clear
	-- in your documentation whether NULL is a valid return
	-- value in non-error cases; if NULL is a valid value,
	-- then users must check whether an error was returned
	-- to see if the function succeeded.
					
	-- * When implementing a function that can report
	-- errors, you may want to add a check at the top of
	-- your function that the error return location is
	-- either NULL or contains a NULL error
	-- (e.g. g_return_if_fail (error == NULL || *error ==
	-- NULL);).

inherit
	C_STRUCT
		redefine free_handle
		end

insert
	GERROR_EXTERNALS
	GERROR_STRUCT

create {ANY}
	make, empty, from_external_pointer

feature {} -- Creation

	make (a_domain: G_QUARK; a_code: INTEGER; a_message: STRING) is
			-- Creates a new G_ERROR
		do
			from_external_pointer (g_error_new_literal (a_domain.quark, a_code, a_message.to_external))
		ensure not_null: handle.is_not_null
		end

	empty is
		do
			-- This feature is empty by design. No initialization is
			-- needed because the feature that will return an error will
			-- allocate a GError C structure, changing the value of
			-- handle
		end
	
feature {ANY} -- Access
	is_set: BOOLEAN is
		-- Has Current been set? Usually it is set by a call to a C library
	do
		Result := handle.is_not_null
	end

	domain: G_QUARK is
		-- The module whewre the error-reporting feature is located in. 
		require is_set
		do
			Result.set_quark (gerror_struct_get_domain (handle))
		end 

	code: INTEGER is
		-- The specific error that occurred encoded as a programmer-defined
		-- constant.
		require is_set
		do
			Result := gerror_struct_get_code (handle)
		end

	message: STRING is
		-- a user-readable error message with as many details as possible. 
		require is_set
		local
			ptr: POINTER
		do
			ptr := gerror_struct_get_message (handle)
			if ptr.is_not_null then
				create Result.from_external_copy (ptr)
			end
		end
	
feature {ANY} -- Comparison

	matches (a_domain: G_QUARK; a_code: INTEGER): BOOLEAN is
			-- Does Current G_ERROR matches 'a_domain' and 'a_code'?
		require is_set
		do
			Result := g_error_matches (handle, a_domain.quark, a_code).to_boolean
		end

feature {ANY} -- Disposing

	dispose is
			-- Frees a G_ERROR and associated resources.
		do
			if is_set then
				free_handle
			end
		end

	free_handle is
		require is_set
		do
			g_error_free (handle)
			handle := default_pointer
		end

end
