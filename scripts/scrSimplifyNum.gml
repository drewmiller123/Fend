///scrSimplifyNum(int) returns concatonated String
//e.g. scrSimplifyNum(1,234,231,542) returns "1.2B"
var ret = "";
if(floor(argument0/power(10,24)) > 0)
{
    ret = string(floor(argument0/power(10,24))) + "Sp";
    if(string_length(ret) == 2)
    {
        ret = string_copy(string(argument0/power(10,24)),1,3) + "Sp";
    }
}
else if(floor(argument0/power(10,21)) > 0)
{
    ret = string(floor(argument0/power(10,21))) + "S";
    if(string_length(ret) == 2)
    {
        ret = string_copy(string(argument0/power(10,21)),1,3) + "S";
    }
}
else if(floor(argument0/1000000000000000000) > 0)
{
    ret = string(floor(argument0/1000000000000000000)) + "Qi";
    if(string_length(ret) == 2)
    {
        ret = string_copy(string(argument0/1000000000000000000),1,3) + "Qi";
    }
}
else if(floor(argument0/1000000000000000) > 0)
{
    ret = string(floor(argument0/1000000000000000)) + "Q";
    if(string_length(ret) == 2)
    {
        ret = string_copy(string(argument0/1000000000000000),1,3) + "Q";
    }
}
else if(floor(argument0/1000000000000) > 0)
{
    ret = string(floor(argument0/1000000000000)) + "T";
    if(string_length(ret) == 2)
    {
        ret = string_copy(string(argument0/1000000000000),1,3) + "T";
    }
}
else if(floor(argument0/1000000000) > 0)
{
    ret = string(floor(argument0/1000000000)) + "B";
    if(string_length(ret) == 2)
    {
        ret = string_copy(string(argument0/1000000000),1,3) + "B";
    }
}
else if(floor(argument0/1000000) > 0)
{
    ret = string(floor(argument0/1000000)) + "M";
    if(string_length(ret) == 2)
    {
        ret = string_copy(string(argument0/1000000),1,3) + "M";
    }
}
else if(floor(argument0/1000) > 0)
{
    ret = string(floor(argument0/1000)) + "K";
    if(string_length(ret) == 2)
    {
        ret = string_copy(string(argument0/1000),1,3) + "K";
    }
}
else
{
    ret = string(argument0);
}
return ret;

