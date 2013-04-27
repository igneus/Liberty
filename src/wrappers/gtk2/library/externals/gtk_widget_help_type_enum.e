-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTK_WIDGET_HELP_TYPE_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gtk_widget_help_tooltip_low_level)  or else
				(a_value = gtk_widget_help_whats_this_low_level) )
		end

feature -- Setters
	default_create,
	set_gtk_widget_help_tooltip is
		do
			value := gtk_widget_help_tooltip_low_level
		end

	set_gtk_widget_help_whats_this is
		do
			value := gtk_widget_help_whats_this_low_level
		end

feature -- Queries
	is_gtk_widget_help_tooltip: BOOLEAN is
		do
			Result := (value=gtk_widget_help_tooltip_low_level)
		end

	is_gtk_widget_help_whats_this: BOOLEAN is
		do
			Result := (value=gtk_widget_help_whats_this_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gtk_widget_help_tooltip_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_WIDGET_HELP_TOOLTIP"
 			}"
 		end

	gtk_widget_help_whats_this_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_WIDGET_HELP_WHATS_THIS"
 			}"
 		end


end -- class GTK_WIDGET_HELP_TYPE_ENUM
