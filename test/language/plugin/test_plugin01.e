class TEST_PLUGIN01

insert
   EIFFELTEST_TOOLS

create {ANY}
   make

feature {ANY}
   make
      do
         label_assert ("external function with an argument", increment (2) = 3)
         label_assert ("external function without an argument", return_one = 1)
      end

feature {} -- external calls
   return_one: INTEGER
      external "plug_in"
      alias "{
         location: "."
         module_name: "plugin"
         feature_name: "myplugin_return_one"
         }"
      end

   increment (a: INTEGER): INTEGER
      external "plug_in"
      alias "{
         location: "."
         module_name: "plugin"
         feature_name: "myplugin_increment"
         }"
      end

end
