with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure rozklad is
    procedure write (sep : in out Character; base, exp : Integer) is
    begin
        if exp /= 0 then
            Put(sep);
            if sep = Character'Val(0) then sep := '*'; end if;
            Put(base, Width => 0);
            if exp > 1 then
                Put("^");
                Put(exp, Width => 0);
            end if;
        end if;
    end write;


    function count (n : in out Integer; factor : Integer) return Integer is
        counter : Integer;
    begin
        counter := 0;
        while n mod factor = 0 loop
            counter := counter + 1;
            n := n / factor;
        end loop;
        return counter;
    end count;


    n, d : Integer;
    sep : Character;
begin
    Put("Podaj liczbę: ");
    Get(n);
    d := 3;
    sep := Character'Val(0);

    Put(n'Image & "=");
    write(sep, 2, count(n, 2));
    while n > 1 loop
        write(sep, d, count(n, d));
        d := d + 2;
    end loop;
    Put_Line("");
end rozklad;
