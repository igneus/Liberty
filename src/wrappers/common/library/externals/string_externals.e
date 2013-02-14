-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class STRING_EXTERNALS


insert ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	-- function rindex @(2) skipped as requested.
	-- function rindex @(2) skipped as requested.
	bzero (a_s: POINTER; a_n: NATURAL_64) is
 		-- bzero (node at line 88)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "bzero"
		}"
		end

	ffsl (a_l: INTEGER_64): INTEGER_32 is
 		-- ffsl (node at line 210)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffsl"
		}"
		end

	strsep (a_stringp: POINTER; a_delim: POINTER): POINTER is
 		-- strsep (node at line 213)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strsep"
		}"
		end

	strcasecmp (a_s1: POINTER; a_s2: POINTER): INTEGER_32 is
 		-- strcasecmp (node at line 294)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strcasecmp"
		}"
		end

	bcopy (a_src: POINTER; a_dest: POINTER; a_n: NATURAL_64) is
 		-- bcopy (node at line 468)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "bcopy"
		}"
		end

	-- function memchr @(2) skipped as requested.
	-- function memchr @(2) skipped as requested.
	memmove (a_dest: POINTER; a_src: POINTER; a_n: NATURAL_64): POINTER is
 		-- memmove (node at line 735)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "memmove"
		}"
		end

	strncat (a_dest: POINTER; a_src: POINTER; a_n: NATURAL_64): POINTER is
 		-- strncat (node at line 772)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strncat"
		}"
		end

	strcasecmp_l (a_s1: POINTER; a_s2: POINTER; a_loc: POINTER): INTEGER_32 is
 		-- strcasecmp_l (node at line 844)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strcasecmp_l"
		}"
		end

	strncmp (a_s1: POINTER; a_s2: POINTER; a_n: NATURAL_64): INTEGER_32 is
 		-- strncmp (node at line 933)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strncmp"
		}"
		end

	-- function strchrnul @(2) skipped as requested.
	-- function strchrnul @(2) skipped as requested.
	strncpy (a_dest: POINTER; a_src: POINTER; a_n: NATURAL_64): POINTER is
 		-- strncpy (node at line 980)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strncpy"
		}"
		end

	strfry (a_string: POINTER): POINTER is
 		-- strfry (node at line 1059)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strfry"
		}"
		end

	memccpy (a_dest: POINTER; a_src: POINTER; a_c: INTEGER_32; a_n: NATURAL_64): POINTER is
 		-- memccpy (node at line 1084)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "memccpy"
		}"
		end

	ffsll (a_ll: INTEGER_64): INTEGER_32 is
 		-- ffsll (node at line 1277)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffsll"
		}"
		end

	strerror_l (an_errnum: INTEGER_32; a_l: POINTER): POINTER is
 		-- strerror_l (node at line 1286)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strerror_l"
		}"
		end

	strerror_r (an_errnum: INTEGER_32; a_buf: POINTER; a_buflen: NATURAL_64): POINTER is
 		-- strerror_r (node at line 1290)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strerror_r"
		}"
		end

	strcat (a_dest: POINTER; a_src: POINTER): POINTER is
 		-- strcat (node at line 1344)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strcat"
		}"
		end

	stpncpy (a_dest: POINTER; a_src: POINTER; a_n: NATURAL_64): POINTER is
 		-- stpncpy (node at line 1361)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "stpncpy"
		}"
		end

	-- function strchr @(2) skipped as requested.
	-- function strchr @(2) skipped as requested.
	-- `hidden' function __bzero skipped.
	strcmp (a_s1: POINTER; a_s2: POINTER): INTEGER_32 is
 		-- strcmp (node at line 1528)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strcmp"
		}"
		end

	strcpy (a_dest: POINTER; a_src: POINTER): POINTER is
 		-- strcpy (node at line 1566)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strcpy"
		}"
		end

	-- function strcasestr @(2) skipped as requested.
	-- function strcasestr @(2) skipped as requested.
	-- function basename @(2) skipped as requested.
	-- function basename @(2) skipped as requested.
	memfrob (a_s: POINTER; a_n: NATURAL_64): POINTER is
 		-- memfrob (node at line 1651)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "memfrob"
		}"
		end

	strtok (a_s: POINTER; a_delim: POINTER): POINTER is
 		-- strtok (node at line 1785)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strtok"
		}"
		end

	strtok_r (a_s: POINTER; a_delim: POINTER; a_save_ptr: POINTER): POINTER is
 		-- strtok_r (node at line 1805)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strtok_r"
		}"
		end

	-- `hidden' function __stpncpy skipped.
	memset (a_s: POINTER; a_c: INTEGER_32; a_n: NATURAL_64): POINTER is
 		-- memset (node at line 1859)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "memset"
		}"
		end

	strncasecmp_l (a_s1: POINTER; a_s2: POINTER; a_n: NATURAL_64; a_loc: POINTER): INTEGER_32 is
 		-- strncasecmp_l (node at line 1895)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strncasecmp_l"
		}"
		end

	strndup (a_string: POINTER; a_n: NATURAL_64): POINTER is
 		-- strndup (node at line 1931)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strndup"
		}"
		end

	strcoll (a_s1: POINTER; a_s2: POINTER): INTEGER_32 is
 		-- strcoll (node at line 2092)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strcoll"
		}"
		end

	strncasecmp (a_s1: POINTER; a_s2: POINTER; a_n: NATURAL_64): INTEGER_32 is
 		-- strncasecmp (node at line 2096)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strncasecmp"
		}"
		end

	-- `hidden' function __strtok_r skipped.
	-- function strrchr @(2) skipped as requested.
	-- function strrchr @(2) skipped as requested.
	strxfrm (a_dest: POINTER; a_src: POINTER; a_n: NATURAL_64): NATURAL_64 is
 		-- strxfrm (node at line 2308)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strxfrm"
		}"
		end

	-- `hidden' function __mempcpy skipped.
	strerror (an_errnum: INTEGER_32): POINTER is
 		-- strerror (node at line 2351)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strerror"
		}"
		end

	strnlen (a_string: POINTER; a_maxlen: NATURAL_64): NATURAL_64 is
 		-- strnlen (node at line 2363)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strnlen"
		}"
		end

	-- function strpbrk @(2) skipped as requested.
	-- function strpbrk @(2) skipped as requested.
	strcspn (a_s: POINTER; a_reject: POINTER): NATURAL_64 is
 		-- strcspn (node at line 2488)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strcspn"
		}"
		end

	strsignal (a_sig: INTEGER_32): POINTER is
 		-- strsignal (node at line 2503)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strsignal"
		}"
		end

	stpcpy (a_dest: POINTER; a_src: POINTER): POINTER is
 		-- stpcpy (node at line 2602)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "stpcpy"
		}"
		end

	strdup (a_s: POINTER): POINTER is
 		-- strdup (node at line 2622)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strdup"
		}"
		end

	memcmp (a_s1: POINTER; a_s2: POINTER; a_n: NATURAL_64): INTEGER_32 is
 		-- memcmp (node at line 2625)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "memcmp"
		}"
		end

	bcmp (a_s1: POINTER; a_s2: POINTER; a_n: NATURAL_64): INTEGER_32 is
 		-- bcmp (node at line 2636)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "bcmp"
		}"
		end

	-- function rawmemchr @(2) skipped as requested.
	-- function rawmemchr @(2) skipped as requested.
	strxfrm_l (a_dest: POINTER; a_src: POINTER; a_n: NATURAL_64; a_l: POINTER): NATURAL_64 is
 		-- strxfrm_l (node at line 2692)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strxfrm_l"
		}"
		end

	strverscmp (a_s1: POINTER; a_s2: POINTER): INTEGER_32 is
 		-- strverscmp (node at line 2830)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strverscmp"
		}"
		end

	strspn (a_s: POINTER; an_accept: POINTER): NATURAL_64 is
 		-- strspn (node at line 2915)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strspn"
		}"
		end

	-- function strstr @(2) skipped as requested.
	-- function strstr @(2) skipped as requested.
	-- `hidden' function __stpcpy skipped.
	-- function index @(2) skipped as requested.
	-- function index @(2) skipped as requested.
	strlen (a_s: POINTER): NATURAL_64 is
 		-- strlen (node at line 3068)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strlen"
		}"
		end

	memmem (a_haystack: POINTER; a_haystacklen: NATURAL_64; a_needle: POINTER; a_needlelen: NATURAL_64): POINTER is
 		-- memmem (node at line 3086)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "memmem"
		}"
		end

	ffs (an_i: INTEGER_32): INTEGER_32 is
 		-- ffs (node at line 3133)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffs"
		}"
		end

	-- function memrchr @(2) skipped as requested.
	-- function memrchr @(2) skipped as requested.
	mempcpy (a_dest: POINTER; a_src: POINTER; a_n: NATURAL_64): POINTER is
 		-- mempcpy (node at line 3288)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "mempcpy"
		}"
		end

	strcoll_l (a_s1: POINTER; a_s2: POINTER; a_l: POINTER): INTEGER_32 is
 		-- strcoll_l (node at line 3340)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "strcoll_l"
		}"
		end


end -- class STRING_EXTERNALS
