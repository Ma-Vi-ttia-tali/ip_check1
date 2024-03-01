interface IAge
{
    int CalcAge();
}
abstract class Age: IAge
{
    public int DateofBirth {get; set; }
    public int CalcAge(){return DateTime.NewYear - DateofBirth;}
}
class Person: Age
{
    public override int DateofBirth
    {
        get => throw new NotImplementedException();
        set => throw new NotImplementedException();
    }
}
class Dog: Age
{
     public override int DateofBirth
    {
        get => throw new NotImplementedException();
        set => throw new NotImplementedException();
    }
}