local alphabet = {
    a = "😳🔥🔥😳😳😳😳🔥",
    b = "😳🔥🔥😳😳😳🔥😳",
    c = "😳🔥🔥😳😳😳🔥🔥",
    d = "😳🔥🔥😳😳🔥😳😳",
    e = "😳🔥🔥😳😳🔥😳🔥",
    f = "😳🔥🔥😳😳🔥🔥😳",
    g = "😳🔥🔥😳😳🔥🔥🔥",
    h = "😳🔥🔥😳🔥😳😳😳",
    i = "😳🔥🔥😳🔥😳😳🔥",
    j = "😳🔥🔥😳🔥😳🔥😳",
    k = "😳🔥🔥😳🔥😳🔥🔥",
    l = "😳🔥🔥😳🔥🔥😳😳",
    m = "😳🔥🔥😳🔥🔥😳🔥",
    n = "😳🔥🔥😳🔥🔥🔥😳",
    o = "😳🔥🔥😳🔥🔥🔥🔥",
    p = "😳🔥🔥🔥😳😳😳😳",
    q = "😳🔥🔥🔥😳😳😳🔥",
    r = "😳🔥🔥🔥😳😳🔥😳",
    s = "😳🔥🔥🔥😳😳🔥🔥",
    t = "😳🔥🔥🔥😳🔥😳😳",
    u = "😳🔥🔥🔥😳🔥😳🔥",
    v = "😳🔥🔥🔥😳🔥🔥😳",
    w = "😳🔥🔥🔥😳🔥🔥🔥",
    x = "😳🔥🔥🔥🔥😳😳😳",
    y = "😳🔥🔥🔥🔥😳😳🔥",
    z = "😳🔥🔥🔥🔥😳🔥😳",
    one = "😳😳🔥🔥😳😳😳🔥",
    two = "😳😳🔥🔥😳😳🔥😳",
    three = "😳😳🔥🔥😳😳🔥🔥",
    four = "😳😳🔥🔥😳🔥😳😳",
    five = "😳😳🔥🔥😳🔥😳🔥",
    six = "😳😳🔥🔥😳🔥🔥😳",
    seven = "😳😳🔥🔥😳🔥🔥🔥",
    eight = "😳😳🔥🔥🔥😳😳😳",
    nine = "😳😳🔥🔥🔥😳😳🔥",
    zero = "😳😳🔥🔥😳😳😳😳",
    plus = "😳😳🔥😳🔥😳🔥🔥",
    minus = "😳😳🔥😳🔥🔥😳🔥",
    forwardslash = "😳😳🔥😳🔥🔥🔥🔥", -- /
    asterisk = "😳😳🔥😳🔥😳🔥😳", -- *
    percentage = "😳😳🔥😳😳🔥😳🔥",
    andsign = "😳😳🔥😳😳🔥🔥😳",
    openbracket = "😳😳🔥😳🔥😳😳😳",
    closebracket = "😳😳🔥😳🔥😳😳🔥",
    dot = "😳😳🔥😳🔥🔥🔥😳",
    string1 = "😳😳🔥😳😳😳🔥😳",
    string2 = "😳😳🔥😳😳🔥🔥🔥",
    squareopenbracket = "😳🔥😳🔥🔥😳🔥🔥",
    weirdopenbracket = "😳🔥🔥🔥🔥😳🔥🔥",
    squareclosebracket = "😳🔥😳🔥🔥🔥😳🔥",
    weirdclosebracket = "😳🔥🔥🔥🔥🔥😳🔥",
}

local encode = _G.encode
local loadedString = ""
for i=1,string.len(encode) do
    local letter = string.sub(encode,i,i)
    letter = string.lower(letter)
    if letter == "1" then
        letter = "one"
    elseif letter == "2" then
        letter = "two"
    elseif letter == "3" then
        letter = "three"
    elseif letter == "4" then
        letter = "four"
    elseif letter == "5" then
        letter = "five"
    elseif letter == "6" then
        letter = "six"
    elseif letter == "7" then
        letter = "seven"
    elseif letter == "8" then
        letter = "eight"
    elseif letter == "9" then
        letter = "nine"
    elseif letter == "0" then
        letter = "zero"
    elseif letter == "+" then
        letter = "plus"
    elseif letter == "-" then
        letter = "minus"
    elseif letter == "/" then
        letter = "forwardslash"
    elseif letter == "*" then
        letter = "asterisk"
    elseif letter == "%" then
        letter = "percentage"
    elseif letter == "&" then
        letter = "andsign"
    elseif letter == "(" then
        letter = "openbracket"
    elseif letter == ")" then
        letter = "closebracket"
    elseif letter == "." then
        letter = "dot"
    elseif letter == '"' then
        letter = "string1"
    elseif letter == "'" then
        letter = "string2"
    elseif letter == "[" then
        letter = "squareopenbracket"
    elseif letter == "{" then
        letter = "weirdopenbracket" 
    elseif letter == "]" then
        letter = "squareclosebracket" 
    elseif letter == "}" then
        letter = "weirdclosebracket" 
    end
    if letter and letter ~= " " then
        loadedString = loadedString..alphabet[letter]
    else
        loadedString = loadedString.."\n"
    end
end
return loadedString
