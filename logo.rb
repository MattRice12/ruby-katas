# You will write a program that will print the Superman Logo exactly as given below. The logo will be preceded by one empty line on the top and there will also be one empty line at the bottom. The logo will start 5 spaces from the left margin.
#
#
#          *****************
#         ***$$$$$$$$$$$$$$**
#        ** $$         $$ $ **
#       ** $$           $$$  **
#      ** $$$                 **
#       *$$$$$$$$$           **
#        *$$$$$$$$$$$$$$    **
#         **$$$$$$$$$$$$$$$**
#          **      $$$$$$$**
#           **         $$**
#            **$$$    $$**
#             *$$$$$$$$**
#              **     **
#               **   **
#                ** **
#                 ***
#                  *
#



puts """

         *****************
        ***$$$$$$$$$$$$$$**
       ** $$         $$ $ **
      ** $$           $$$  **
     ** $$$                 **
      *$$$$$$$$$           **
       *$$$$$$$$$$$$$$    **
        **$$$$$$$$$$$$$$$**
         **      $$$$$$$**
          **         $$**
           **$$$    $$**
            *$$$$$$$$**
             **     **
              **   **
               ** **
                ***
                 *
            """


# _____________________________________________

st = "**"
st3 = "***"
dr2 = "$$"
dr3 = "$$$"
sp = "  "
sp3 = "   "

puts sp3 * 3 + st * 8 + "*"
puts sp * 4 + st3 + dr2 * 7 + st
puts sp3 * 2 + " " + st + " " + dr2 + sp * 4 + " " + dr2 + " " + "$" + " " + st
puts sp * 3 + st + " " + dr2 + sp * 6 + dr3 + " " + st
puts sp3 + sp + st + " " + dr3 + sp * 8 + " " + st
puts sp * 3 + "*" + dr3 * 3 + sp * 5 + " " + st
puts sp3 * 2 + " " + "*" + dr3 * 5 + sp * 1 + " " + st
puts sp * 4 + st + dr3 * 5 + st
puts sp3 * 3 + st + sp * 3 + dr3 * 2 + "$" + st
puts sp * 5 + st + sp * 4 + " " + dr2 + st
puts sp3 * 3 + sp + st + dr3 + sp * 2 + dr2 + st
puts sp * 6 + "*" + dr2 * 4 + st
puts sp3 * 4 + " " + st + sp * 2 + " " + st
puts sp * 7 + st + sp + " " + st
puts sp3 * 5 + st + " " + st
puts sp * 8 + st + "*"
puts sp * 8 + " " + "*"

# __________________________________________

arr = []

arr.push(" ",
        st * 8 + "*",
        st3 + dr2 * 7 + st,
        st + " " + dr2 + sp * 4 + " " + dr2 + " " + "$" + " " + st,
        st + " " + dr2 + sp * 6 + dr3 + " " + st,
        st + " " + dr3 + sp * 8 + " " + st,
        "*" + dr3 * 3 + sp * 5 + " " + st,
        "*" + dr3 * 5 + sp * 1 + " " + st,
        st + dr3 * 5 + st,
        st + sp * 3 + dr3 * 2 + "$" + st,
        st + sp * 4 + " " + dr2 + st,
        st + dr3 + sp * 2 + dr2 + st,
        "*" + dr2 * 4 + st,
        st + sp * 2 + " " + st,
        st + sp + " " + st,
        st + " " + st,
        st + "*",
        "*"
        )

arr.each { |line| puts line.center(34) }
