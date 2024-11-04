with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure nwd  is
    function licz_nwd (a, b : in out Integer) return Integer is
        c : Integer;
    begin
        while b /= 0 loop
            c := a mod b;
            a := b;
            b := c;
        end loop;
        if a < 0 then
            return -a;
        else
            return a;
        end if;
    end licz_nwd;

    a, b, ans : Integer;
begin
    Put("Podaj pierwszą liczbę: ");
    Get(a);
    Put("Podaj drugą liczbę: ");
    Get(b);

    ans := licz_nwd(a, b);
    Put_Line("NWD: "& ans'Image);
end nwd;