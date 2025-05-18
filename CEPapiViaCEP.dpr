program CEPapiViaCEP;

uses
  Vcl.Forms,
  BuscaCep in 'BuscaCep.pas' {Form1},
  BuscaCepViacep in 'BuscaCepViacep.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
