function isPrime(n)
    d = 0

    if (n > 1 && typeof(n) == "Float64"))
        for i = 1: n
            if (n % i == 0)
                d += 1
            end
        end
        
        if (d == 2)
            println("$n is prime.")
        else
            println("$n is not prime.")
        end
    else
        println("The entered value must be greater than 1. It also mustn't be a decimal number.")
    end
end

function pdCheck(n)
    isPalindrome = false;

    if (floor(n) == n)
        if (n > 9)
            strN = string(n)
            l = length(strN)

            if (l % 2 == 0)
                hl = convert(Integer, l / 2)

                if (l > 2)
                    p1 = SubString(strN, 1, hl)
                    p2 = SubString(strN, hl+1, l)
                    rp2 = reverse(p2)

                    if (rp2 == p1)
                        isPalindrome = true
                    else
                        isPalindrome = false
                    end
                else
                    if (n % 11 == 0)
                        isPalindrome = true
                    end
                end
            end
            
            if (l % 2 == 1)
                mid = convert(Integer, ceil(l / 2))

                p1 = SubString(strN, 1, mid-1)
                p2 = SubString(strN, mid+1, l)
                rp2 = reverse(p2)

                if (rp2 == p1)
                    isPalindrome = true
                else
                    isPalindrome = false
                end
            end

            if (isPalindrome == true)
                println("$n is a palindrome.")
            elseif (isPalindrome == false)
                println("$n isn't a palindrome.")
            else
                println("NIL.")
            end
        else
            println("Number must be greater than 9.")
        end
    else
        println("Number must not be a float (decimal) number.")
    end
end