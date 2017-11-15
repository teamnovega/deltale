///lineBreak(string,maxLength,maxWordLength)
//Takes a string and automatically inserts linebreaks into it after a certain amount of characters.
//string = string to automatically linebreak
//maxLength = maximum length a line can be before breaking
//maxWordLength = maximum length a word can be before the script gives up and starts a new line
//Created by Spasman
//spasman@spasmangames.com
 
insert = 0
go = 0
prev = 0
text = argument0
repeat(string_length(text)) {
    if insert > argument1 {
        while(1) {
            str = string_char_at(text,go-prev)
            if str != " " {
                prev += 1
            }
            else {
                break;
            }
            if prev > argument2 {
                prev = 0
                break;
            }
        }
        text = string_insert("#",text,go-prev)
        insert = 0
    }
    insert += 1
    go += 1
    if string_char_at(text,go) = "#" {
       insert = 0
    }
}
 
return text;