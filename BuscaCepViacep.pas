unit BuscaCepViacep;

interface

uses
  System.JSON, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Comp.Client, System.Classes,
  REST.Client, IPPeerClient, System.SysUtils;

function BuscarCEPviaCep(UmCEP: string): TStringList;

implementation

function BuscarCEPviaCep(UmCEP: string): TStringList;
Var
Json: TJSONObject;
RESTClient1: TRESTClient;
RestRequest1: TRESTRequest;
RestResponse1: TRESTResponse;
Endereco: TStringList;
begin
  RESTClient1 := TRESTClient.Create(nil);
  RESTRequest1 := TRESTRequest.Create(nil);
  RESTResponse1 := TRESTResponse.Create(nil);
  RESTRequest1.Client := RESTClient1;
  RESTRequest1.Response := RESTResponse1;
  RESTClient1.BaseURL := 'https://viacep.com.br/ws/' + UmCEP + '/json';
  RESTRequest1.Execute;
  Json := RESTResponse1.JSONValue as TJSONObject;
  try
    Endereco := TStringList.Create;
    if Assigned(Json) then
    begin
        try
          Endereco.Add(Json.Values['logradouro'].Value);
        except
          on Exception do
            Endereco.Add('');
        end;
        try
          Endereco.Add(Json.Values['complemento'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
        try
          Endereco.Add(Json.Values['bairro'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
        try
          Endereco.Add(Json.Values['localidade'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
        try
          Endereco.Add(Json.Values['uf'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
        try
          Endereco.Add(Json.Values['ibge'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
        try
          Endereco.Add(Json.Values['ddd'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
      end;
  finally
    FreeAndNil(Json);
  end;
  Result := Endereco;
end;

end.
