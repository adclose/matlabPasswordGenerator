function pass = makePWD(passwordLength, includeSpecial)
SpecialChar = '!#$%&*+-<=>?@^';
Big ='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
Little = 'abcdefghijklmnopqrstuvwxyz';
Numbers = '0123456789';

all = [Big Little Numbers];

if includeSpecial, all=[all SpecialChar]; end
digits = floor(rand(1,2000)*length(all))+1;
digits = int8(digits);
pass = all(digits);

pass = pass(1:passwordLength);

end


