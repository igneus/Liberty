-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class ROUNDING_MODE_ENUM

insert ENUM

<<<<<<< HEAD
creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = rm_nearest_ties_to_away_low_level)  or else
				(a_value = rm_nearest_ties_to_even_low_level)  or else
				(a_value = rm_toward_negative_low_level)  or else
				(a_value = rm_toward_positive_low_level)  or else
				(a_value = rm_toward_zero_low_level) )
=======
create {ANY} default_create
feature {ANY} -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = nearest_ties_to_even_low_level)  or else
				(a_value = toward_positive_low_level)  or else
				(a_value = toward_negative_low_level)  or else
				(a_value = toward_zero_low_level)  or else
				(a_value = nearest_ties_to_away_low_level) )
>>>>>>> c5fc6163e0cda7bb1c1dc8df91c46c66ff334c0a
		end

feature {ANY} -- Setters
	default_create,
	set_rm_nearest_ties_to_away is
		do
			value := rm_nearest_ties_to_away_low_level
		end

	set_rm_nearest_ties_to_even is
		do
			value := rm_nearest_ties_to_even_low_level
		end

	set_rm_toward_negative is
		do
			value := rm_toward_negative_low_level
		end

	set_rm_toward_positive is
		do
			value := rm_toward_positive_low_level
		end

	set_rm_toward_zero is
		do
			value := rm_toward_zero_low_level
		end

<<<<<<< HEAD
feature -- Queries
	is_rm_nearest_ties_to_away: BOOLEAN is
=======
feature {ANY} -- Queries
	nearest_ties_to_even: BOOLEAN is
>>>>>>> c5fc6163e0cda7bb1c1dc8df91c46c66ff334c0a
		do
			Result := (value=rm_nearest_ties_to_away_low_level)
		end

	is_rm_nearest_ties_to_even: BOOLEAN is
		do
			Result := (value=rm_nearest_ties_to_even_low_level)
		end

	is_rm_toward_negative: BOOLEAN is
		do
			Result := (value=rm_toward_negative_low_level)
		end

	is_rm_toward_positive: BOOLEAN is
		do
			Result := (value=rm_toward_positive_low_level)
		end

	is_rm_toward_zero: BOOLEAN is
		do
			Result := (value=rm_toward_zero_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	rm_nearest_ties_to_away_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmNearestTiesToAway"
 			}"
 		end

	rm_nearest_ties_to_even_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmNearestTiesToEven"
 			}"
 		end

	rm_toward_negative_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmTowardNegative"
 			}"
 		end

	rm_toward_positive_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmTowardPositive"
 			}"
 		end

	rm_toward_zero_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmTowardZero"
 			}"
 		end


end -- class ROUNDING_MODE_ENUM
