-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GFLAGS_CLASS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GOBJECT_TYPES
feature {} -- Low-level setters

	gflags_class_struct_set_mask (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for mask field of GFLAGS_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gflags_class_struct_set_mask"
		}"
		end

	gflags_class_struct_set_n_values (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for n_values field of GFLAGS_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gflags_class_struct_set_n_values"
		}"
		end

	gflags_class_struct_set_values (a_structure: POINTER; a_value: POINTER) is
			-- Setter for values field of GFLAGS_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gflags_class_struct_set_values"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field g_type_class.
	gflags_class_struct_get_mask (a_structure: POINTER): NATURAL is
			-- Query for mask field of GFLAGS_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gflags_class_struct_get_mask"
		}"
		end

	gflags_class_struct_get_n_values (a_structure: POINTER): NATURAL is
			-- Query for n_values field of GFLAGS_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gflags_class_struct_get_n_values"
		}"
		end

	gflags_class_struct_get_values (a_structure: POINTER): POINTER is
			-- Query for values field of GFLAGS_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gflags_class_struct_get_values"
		}"
		end

feature -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GFlagsClass"
		}"
		end

end -- class GFLAGS_CLASS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

