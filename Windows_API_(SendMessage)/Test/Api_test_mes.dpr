program Api_test_mes;

uses
  Forms,
  Api_test in 'Api_test.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
