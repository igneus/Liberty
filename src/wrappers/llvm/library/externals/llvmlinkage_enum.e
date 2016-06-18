-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class LLVMLINKAGE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = appending_linkage_low_level)  or else
				(a_value = available_externally_linkage_low_level)  or else
				(a_value = common_linkage_low_level)  or else
				(a_value = dllexport_linkage_low_level)  or else
				(a_value = dllimport_linkage_low_level)  or else
				(a_value = external_linkage_low_level)  or else
				(a_value = external_weak_linkage_low_level)  or else
				(a_value = ghost_linkage_low_level)  or else
				(a_value = internal_linkage_low_level)  or else
				(a_value = link_once_any_linkage_low_level)  or else
				(a_value = link_once_odrlinkage_low_level)  or else
				(a_value = linker_private_linkage_low_level)  or else
				(a_value = linker_private_weak_def_auto_linkage_low_level)  or else
				(a_value = linker_private_weak_linkage_low_level)  or else
				(a_value = private_linkage_low_level)  or else
				(a_value = weak_any_linkage_low_level)  or else
				(a_value = weak_odrlinkage_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_appending_linkage
		do
			value := appending_linkage_low_level
		end

	set_available_externally_linkage
		do
			value := available_externally_linkage_low_level
		end

	set_common_linkage
		do
			value := common_linkage_low_level
		end

	set_dllexport_linkage
		do
			value := dllexport_linkage_low_level
		end

	set_dllimport_linkage
		do
			value := dllimport_linkage_low_level
		end

	set_external_linkage
		do
			value := external_linkage_low_level
		end

	set_external_weak_linkage
		do
			value := external_weak_linkage_low_level
		end

	set_ghost_linkage
		do
			value := ghost_linkage_low_level
		end

	set_internal_linkage
		do
			value := internal_linkage_low_level
		end

	set_link_once_any_linkage
		do
			value := link_once_any_linkage_low_level
		end

	set_link_once_odrlinkage
		do
			value := link_once_odrlinkage_low_level
		end

	set_linker_private_linkage
		do
			value := linker_private_linkage_low_level
		end

	set_linker_private_weak_def_auto_linkage
		do
			value := linker_private_weak_def_auto_linkage_low_level
		end

	set_linker_private_weak_linkage
		do
			value := linker_private_weak_linkage_low_level
		end

	set_private_linkage
		do
			value := private_linkage_low_level
		end

	set_weak_any_linkage
		do
			value := weak_any_linkage_low_level
		end

	set_weak_odrlinkage
		do
			value := weak_odrlinkage_low_level
		end

feature {ANY} -- Queries
	is_appending_linkage: BOOLEAN
		do
			Result := (value=appending_linkage_low_level)
		end

	is_available_externally_linkage: BOOLEAN
		do
			Result := (value=available_externally_linkage_low_level)
		end

	is_common_linkage: BOOLEAN
		do
			Result := (value=common_linkage_low_level)
		end

	is_dllexport_linkage: BOOLEAN
		do
			Result := (value=dllexport_linkage_low_level)
		end

	is_dllimport_linkage: BOOLEAN
		do
			Result := (value=dllimport_linkage_low_level)
		end

	is_external_linkage: BOOLEAN
		do
			Result := (value=external_linkage_low_level)
		end

	is_external_weak_linkage: BOOLEAN
		do
			Result := (value=external_weak_linkage_low_level)
		end

	is_ghost_linkage: BOOLEAN
		do
			Result := (value=ghost_linkage_low_level)
		end

	is_internal_linkage: BOOLEAN
		do
			Result := (value=internal_linkage_low_level)
		end

	is_link_once_any_linkage: BOOLEAN
		do
			Result := (value=link_once_any_linkage_low_level)
		end

	is_link_once_odrlinkage: BOOLEAN
		do
			Result := (value=link_once_odrlinkage_low_level)
		end

	is_linker_private_linkage: BOOLEAN
		do
			Result := (value=linker_private_linkage_low_level)
		end

	is_linker_private_weak_def_auto_linkage: BOOLEAN
		do
			Result := (value=linker_private_weak_def_auto_linkage_low_level)
		end

	is_linker_private_weak_linkage: BOOLEAN
		do
			Result := (value=linker_private_weak_linkage_low_level)
		end

	is_private_linkage: BOOLEAN
		do
			Result := (value=private_linkage_low_level)
		end

	is_weak_any_linkage: BOOLEAN
		do
			Result := (value=weak_any_linkage_low_level)
		end

	is_weak_odrlinkage: BOOLEAN
		do
			Result := (value=weak_odrlinkage_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	appending_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMAppendingLinkage"
 			}"
 		end

	available_externally_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMAvailableExternallyLinkage"
 			}"
 		end

	common_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMCommonLinkage"
 			}"
 		end

	dllexport_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMDLLExportLinkage"
 			}"
 		end

	dllimport_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMDLLImportLinkage"
 			}"
 		end

	external_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMExternalLinkage"
 			}"
 		end

	external_weak_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMExternalWeakLinkage"
 			}"
 		end

	ghost_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMGhostLinkage"
 			}"
 		end

	internal_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMInternalLinkage"
 			}"
 		end

	link_once_any_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMLinkOnceAnyLinkage"
 			}"
 		end

	link_once_odrlinkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMLinkOnceODRLinkage"
 			}"
 		end

	linker_private_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMLinkerPrivateLinkage"
 			}"
 		end

	linker_private_weak_def_auto_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMLinkerPrivateWeakDefAutoLinkage"
 			}"
 		end

	linker_private_weak_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMLinkerPrivateWeakLinkage"
 			}"
 		end

	private_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMPrivateLinkage"
 			}"
 		end

	weak_any_linkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMWeakAnyLinkage"
 			}"
 		end

	weak_odrlinkage_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LLVMWeakODRLinkage"
 			}"
 		end


end -- class LLVMLINKAGE_ENUM
