with Ada.Text_IO;

-- Yes, I know that compiling with this procedure name will throw a warning but I wanted to keep the filenames uniform.
-- Compile using gcc-ada 'gnatmake ./Ada.adb' and run it './Ada'

procedure AdaHello is
begin
   Ada.Text_IO.Put_Line("Hello World");
end AdaHello;