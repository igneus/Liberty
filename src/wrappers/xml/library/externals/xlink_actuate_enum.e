-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XLINK_ACTUATE_ENUM

insert ENUM

<<<<<<< HEAD
creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = xlink_actuate_auto_low_level)  or else
				(a_value = xlink_actuate_none_low_level)  or else
				(a_value = xlink_actuate_onrequest_low_level) )
=======
create {ANY} default_create
feature {ANY} -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = none_low_level)  or else
				(a_value = auto_low_level)  or else
				(a_value = onrequest_low_level) )
>>>>>>> c5fc6163e0cda7bb1c1dc8df91c46c66ff334c0a
		end

feature {ANY} -- Setters
	default_create,
	set_xlink_actuate_auto is
		do
			value := xlink_actuate_auto_low_level
		end

	set_xlink_actuate_none is
		do
			value := xlink_actuate_none_low_level
		end

	set_xlink_actuate_onrequest is
		do
			value := xlink_actuate_onrequest_low_level
		end

<<<<<<< HEAD
feature -- Queries
	is_xlink_actuate_auto: BOOLEAN is
=======
feature {ANY} -- Queries
	none: BOOLEAN is
>>>>>>> c5fc6163e0cda7bb1c1dc8df91c46c66ff334c0a
		do
			Result := (value=xlink_actuate_auto_low_level)
		end

	is_xlink_actuate_none: BOOLEAN is
		do
			Result := (value=xlink_actuate_none_low_level)
		end

	is_xlink_actuate_onrequest: BOOLEAN is
		do
			Result := (value=xlink_actuate_onrequest_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	xlink_actuate_auto_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_AUTO"
 			}"
 		end

	xlink_actuate_none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_NONE"
 			}"
 		end

	xlink_actuate_onrequest_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_ONREQUEST"
 			}"
 		end


end -- class XLINK_ACTUATE_ENUM
