for i=1:3
    matlab.lang.makeUniqueStrings({'A'},  num2str(i));
    eval(['A' num2str(i) '= i'])
    matlab.lang.makeUniqueStrings({'B'},  num2str(i));
    eval(['B' num2str(i) '= A' num2str(i) '*i'])
end