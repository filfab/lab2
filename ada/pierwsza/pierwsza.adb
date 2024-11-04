with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure pierwsza is
    n : Integer;
    function is_prime (n : in Natural) return Boolean is
        i, k : Natural;
    begin
        if n=2 or n=3 or n=5 then
            return True;
        elsif n=1 or n mod 2 = 0 or n mod 3 = 0 or n mod 5 = 0 then
            return False;
        else
            i := 6;
            k := Natural(Sqrt(Float(n)));

            while i <= k loop
                if n mod (i+1) = 0 or n mod (i+5) = 0 then
                    return False;
                end if;
                i := i + 6;
            end loop;

            return True;

        end if;
    end is_prime;
begin
    Put("Podaj liczbę: ");
    Get(n);

    if is_prime(n) then
        Put_Line(n'Image & " jest liczbą pierwszą");
    else
        Put_Line(n'Image & " nie jest liczbą pierwszą");
    end if;
end pierwsza;