unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, Data.DBXMSSQL, frxClass, frxDBSet, Vcl.ExtCtrls,DateUtils,
  Vcl.Mask;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    qryCheck: TSQLQuery;
    dspCheck: TDataSetProvider;
    cdsCheck: TClientDataSet;
    Memo1: TMemo;
    btnCHECAR: TButton;
    edtHost: TEdit;
    edtBase: TEdit;
    edtLogin: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    CONEX: TSQLConnection;
    qryCheckCODFUN: TStringField;
    qryCheckNOME: TStringField;
    cdsCheckCODFUN: TStringField;
    cdsCheckNOME: TStringField;
    frptCheck: TfrxReport;
    fdtsCheck: TfrxDBDataset;
    Panel1: TPanel;
    mskInicioComp: TMaskEdit;
    Button1: TButton;
    qryCheckTIPO: TStringField;
    qryCheckOBS: TStringField;
    qryCheckMOTIVO: TStringField;
    cdsCheckTIPO: TStringField;
    cdsCheckOBS: TStringField;
    cdsCheckMOTIVO: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure btnCHECARClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  sl : String = sLineBreak;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCHECARClick(Sender: TObject);
begin
  qryCheck.Close;
  qryCheck.SQL :=  Memo1.Lines;

  cdsCheck.Close;
  cdsCheck.Open;

  frptCheck.ShowReport(true);

  cdsCheck.Close;
  qryCheck.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Sql : String;
  dData_ini : TDATE;
  dData_Mes_Ant : TDATE;
begin
  dData_ini := StrToDate(mskInicioComp.Text);
  dData_Mes_Ant := IncMonth(dData_ini,-1) ;

  Sql := ' DECLARE @DT_INI AS DATETIME = ' + QuotedStr(DateToStr(dData_ini)) +
      sl+' DECLARE @DT_FIN AS DATETIME = ' + QuotedStr(DateToStr(EndOfTheMonth(dData_ini))) +
      sl+' DECLARE @MES AS VARCHAR (2) = ' + QuotedStr(copy(DateToStr(dData_ini),4,2)) +
      sl+' DECLARE @ANO AS VARCHAR (4) = ' + QuotedStr(copy(DateToStr(dData_ini),7,4)) +
      sl+' DECLARE @DESC_COMPETENCIA AS VARCHAR (7) = ' + QuotedStr(copy(DateToStr(dData_ini),7,4)+'-'+copy(DateToStr(dData_ini),4,2)) +
      sl+' DECLARE @ANTERIOR_COMPENTENCIA AS VARCHAR (7) = '+ QuotedStr(copy(DateToStr(dData_Mes_Ant),7,4)+'-'+copy(DateToStr(dData_Mes_Ant),4,2)) ;

  Memo1.Lines.Text := Sql+ sl+ sl + Memo1.Lines.Text;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  CONEX.Close;
  CONEX.Params.Values['HostName']  := edtHost.Text;
  CONEX.Params.Values['Database']  := edtBase.Text;
  CONEX.Params.Values['User_Name'] := edtLogin.Text;
  CONEX.Params.Values['Password']  := edtSenha.Text;
  CONEX.Open;

  if CONEX.Connected  then
  begin
    ShowMessage('Conectado ok ')
  end;
  CONEX.Close;
end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin

  mskInicioComp.Text := DateToStr(StartOfTheMonth(NOW));
end;

end.
