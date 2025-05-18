unit BuscaCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, REST.Types,
  REST.Client, Data.Bind.Components,System.JSON, Data.Bind.ObjectScope,System.Net.HttpClient,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    edtLongradouro: TEdit;
    edtcomplemento: TEdit;
    edtbairro: TEdit;
    edtcidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtIBGE: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edtCep: TMaskEdit;
    Memo1: TMemo;
    edtTelefone: TMaskEdit;
    edtUF: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure edtCepExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  BuscaCepViacep;
{$R *.dfm}

procedure TForm1.edtCepExit(Sender: TObject);
var
  Endereco: TStringList;
  CEP:String;
begin
  CEP := StringReplace(edtCep.Text, '-', '',[rfReplaceAll]);

  Endereco := BuscarCEPviaCep(CEP);
  if (Endereco.Count >= 6) or (Endereco <> nil) then  //checa se recebeu todos os 7 elementos requisitados da API
  begin
     edtLongradouro.Text := Endereco[0];
     edtcomplemento.Text := Endereco[1];
     edtbairro.Text      := Endereco[2];
     edtcidade.Text      := Endereco[3];
     edtUF.Text          := Endereco[4];
     edtIBGE.Text        := Endereco[5];
     edtTelefone.Text := '(' +Endereco[6]+ ')' + ' ';
  end
  else
  ShowMessage('CEP NÃO ENCONTRADO');

end;

end.
