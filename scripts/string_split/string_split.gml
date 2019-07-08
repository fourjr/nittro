///string_split(string, delim)
// https://forum.yoyogames.com/index.php?threads/splitting-a-string-with-strings-inside-it.49750/#post-305258
var arr = undefined;
var at = 0;
var my_str = argument0;
var delim = argument1
var sub_str = "";
for(var i = 1; i < string_length(my_str)+1; i++)
{
   var next_char = string_char_at(my_str,i);

   if (next_char != delim)
   {
       sub_str = sub_str + next_char;
   }
   else
   {
       //ADD TO ARRAY
       if(sub_str != "") {
		   arr[at++] = sub_str;
	   }
       sub_str = "";
   }
}
if (sub_str!="") {
	arr[at++] = sub_str;
}
return arr;