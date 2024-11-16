List<int> numbers = new List<int>{1,2,3,4,5,6,7,8,9,10};

bool IsPairNumber(int number)
    {
        return number % 2 == 0;
    }

void ShowTextPair(int number)
    {
        Console.WriteLine($"Exibindo números pares: {number}");
    }

void ShowTextOdd(int number)
    {
        Console.WriteLine($"Exibindo números impar: {number}");
    }

void Log(bool showPair, int number)
    {
        if(showPair && IsPairNumber(number))
            ShowTextPair(number);

        else if(!showPair && !IsPairNumber(number))
            ShowTextOdd(number);
    }

for(int i = 0; i < numbers.Count; i++)
    {
        Log(true, numbers[i]);
    }

// foreach(int number in numbers)
//     {
//         Log(true, number);
//     }