unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, uDWAbout,
  uRESTDWBase, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TFrmServidor = class(TForm)
    Label1: TLabel;
    Switch1: TSwitch;
    RESTServicePooler1: TRESTServicePooler;
    procedure FormCreate(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmServidor: TFrmServidor;

implementation

{$R *.fmx}

uses UnitDM;

procedure TFrmServidor.FormCreate(Sender: TObject);
begin
  RESTServicePooler1.ServerMethodClass := TDM;
  RESTServicePooler1.Active := Switch1.IsChecked;
end;

procedure TFrmServidor.FormShow(Sender: TObject);
begin
  DM.conn.Connected := True;
end;

procedure TFrmServidor.Switch1Switch(Sender: TObject);
begin
  RESTServicePooler1.Active := Switch1.IsChecked;
end;

end.
