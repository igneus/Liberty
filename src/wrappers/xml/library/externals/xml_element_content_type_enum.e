-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ELEMENT_CONTENT_TYPE_ENUM

insert ENUM

<<<<<<< HEAD
creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = xml_element_content_element_low_level)  or else
				(a_value = xml_element_content_or_low_level)  or else
				(a_value = xml_element_content_pcdata_low_level)  or else
				(a_value = xml_element_content_seq_low_level) )
=======
create {ANY} default_create
feature {ANY} -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = pcdata_low_level)  or else
				(a_value = element_low_level)  or else
				(a_value = seq_low_level)  or else
				(a_value = or_external_low_level) )
>>>>>>> c5fc6163e0cda7bb1c1dc8df91c46c66ff334c0a
		end

feature {ANY} -- Setters
	default_create,
	set_xml_element_content_element is
		do
			value := xml_element_content_element_low_level
		end

	set_xml_element_content_or is
		do
			value := xml_element_content_or_low_level
		end

	set_xml_element_content_pcdata is
		do
			value := xml_element_content_pcdata_low_level
		end

	set_xml_element_content_seq is
		do
			value := xml_element_content_seq_low_level
		end

<<<<<<< HEAD
feature -- Queries
	is_xml_element_content_element: BOOLEAN is
=======
feature {ANY} -- Queries
	pcdata: BOOLEAN is
>>>>>>> c5fc6163e0cda7bb1c1dc8df91c46c66ff334c0a
		do
			Result := (value=xml_element_content_element_low_level)
		end

	is_xml_element_content_or: BOOLEAN is
		do
			Result := (value=xml_element_content_or_low_level)
		end

	is_xml_element_content_pcdata: BOOLEAN is
		do
			Result := (value=xml_element_content_pcdata_low_level)
		end

	is_xml_element_content_seq: BOOLEAN is
		do
			Result := (value=xml_element_content_seq_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	xml_element_content_element_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_ELEMENT"
 			}"
 		end

	xml_element_content_or_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_OR"
 			}"
 		end

	xml_element_content_pcdata_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_PCDATA"
 			}"
 		end

	xml_element_content_seq_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_SEQ"
 			}"
 		end


end -- class XML_ELEMENT_CONTENT_TYPE_ENUM
