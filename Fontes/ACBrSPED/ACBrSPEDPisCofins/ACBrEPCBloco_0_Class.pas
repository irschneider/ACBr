{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2010   Isaque Pinheiro                      }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{              Pra�a Anita Costa, 34 - Tatu� - SP - 18270-410                  }
{                                                                              }
{******************************************************************************}

{******************************************************************************
|* Historico
|*
|* 15/02/2011: Isaque Pinheiro e Fernando Amado
|*  - Cria��o e distribui��o da Primeira Versao
*******************************************************************************}

unit ACBrEPCBloco_0_Class;

interface

uses SysUtils, Classes, DateUtils, ACBrSped, ACBrEPCBloco_0, ACBrEPCBlocos,
     ACBrTXTClass;

type
  /// TBLOCO_0 - Abertura, Identifica��o e Refer�ncias

  { TBloco_0 }

  TBloco_0 = class(TACBrSPED)
  private
    FRegistro0000: TRegistro0000;      /// BLOCO 0 - Registro0000
    FRegistro0001: TRegistro0001;      /// BLOCO 0 - Registro0001
    FRegistro0990: TRegistro0990;      /// BLOCO 0 - Registro0990

    FRegistro0100Count: Integer;
    FRegistro0110Count: Integer;
    FRegistro0111Count: Integer;
    FRegistro0140Count: Integer;
    FRegistro0150Count: Integer;
    FRegistro0190Count: Integer;
    FRegistro0200Count: Integer;
    FRegistro0205Count: Integer;
    FRegistro0206Count: Integer;
    FRegistro0208Count: Integer;
    FRegistro0400Count: Integer;
    FRegistro0450Count: Integer;
    FRegistro0500Count: Integer;
    FRegistro0600Count: Integer;

    procedure WriteRegistro0100(Reg0001: TRegistro0001);
    procedure WriteRegistro0110(Reg0001: TRegistro0001);
    procedure WriteRegistro0111(Reg0110: TRegistro0110);
    procedure WriteRegistro0140(Reg0001: TRegistro0001);
    procedure WriteRegistro0150(Reg0140: TRegistro0140);
    procedure WriteRegistro0190(Reg0140: TRegistro0140);
    procedure WriteRegistro0200(Reg0140: TRegistro0140);
    procedure WriteRegistro0205(Reg0200: TRegistro0200);
    procedure WriteRegistro0206(Reg0200: TRegistro0200);
    procedure WriteRegistro0208(Reg0200: TRegistro0200);
    procedure WriteRegistro0400(Reg0140: TRegistro0140);
    procedure WriteRegistro0450(Reg0140: TRegistro0140);
    procedure WriteRegistro0500(Reg0001: TRegistro0001);
    procedure WriteRegistro0600(Reg0001: TRegistro0001);

    procedure CriaRegistros;
    procedure LiberaRegistros;
  public
    constructor Create;           /// Create
    destructor Destroy; override; /// Destroy
    procedure LimpaRegistros;

    function Registro0000New: TRegistro0000;
    function Registro0001New: TRegistro0001;
    function Registro0100New: TRegistro0100;
    function Registro0110New: TRegistro0110;
    function Registro0111New: TRegistro0111;
    function Registro0140New: TRegistro0140;
    function Registro0150New: TRegistro0150;
    function Registro0190New: TRegistro0190;
    function Registro0200New: TRegistro0200;
    function Registro0205New: TRegistro0205;
    function Registro0206New: TRegistro0206;
    function Registro0208New: TRegistro0208;
    function Registro0400New: TRegistro0400;
    function Registro0450New: TRegistro0450;
    function Registro0500New: TRegistro0500;
    function Registro0600New: TRegistro0600;

    procedure WriteRegistro0000;
    procedure WriteRegistro0001;
    procedure WriteRegistro0990;

    property Registro0000: TRegistro0000 read FRegistro0000 write FRegistro0000;
    property Registro0001: TRegistro0001 read FRegistro0001 write FRegistro0001;
    property Registro0990: TRegistro0990 read FRegistro0990 write FRegistro0990;

    property Registro0100Count: Integer read FRegistro0100Count write FRegistro0100Count;
    property Registro0110Count: Integer read FRegistro0110Count write FRegistro0110Count;
    property Registro0111Count: Integer read FRegistro0111Count write FRegistro0111Count;
    property Registro0140Count: Integer read FRegistro0140Count write FRegistro0140Count;
    property Registro0150Count: Integer read FRegistro0150Count write FRegistro0150Count;
    property Registro0190Count: Integer read FRegistro0190Count write FRegistro0190Count;
    property Registro0200Count: Integer read FRegistro0200Count write FRegistro0200Count;
    property Registro0205Count: Integer read FRegistro0205Count write FRegistro0205Count;
    property Registro0206Count: Integer read FRegistro0206Count write FRegistro0206Count;
    property Registro0208Count: Integer read FRegistro0208Count write FRegistro0208Count;
    property Registro0400Count: Integer read FRegistro0400Count write FRegistro0400Count;
    property Registro0450Count: Integer read FRegistro0450Count write FRegistro0450Count;
    property Registro0500Count: Integer read FRegistro0500Count write FRegistro0500Count;
    property Registro0600Count: Integer read FRegistro0600Count write FRegistro0600Count;
  end;

implementation

uses ACBrSpedUtils;

{ TBloco_0 }

constructor TBloco_0.Create ;
begin
  inherited ;
  CriaRegistros;
end;

destructor TBloco_0.Destroy;
begin
  LiberaRegistros;
  inherited;
end;

procedure TBloco_0.CriaRegistros;
begin
  FRegistro0000 := TRegistro0000.Create;
  FRegistro0001 := TRegistro0001.Create;
  FRegistro0990 := TRegistro0990.Create;

  FRegistro0100Count := 0;
  FRegistro0110Count := 0;
  FRegistro0111Count := 0;
  FRegistro0140Count := 0;
  FRegistro0150Count := 0;
  FRegistro0190Count := 0;
  FRegistro0200Count := 0;
  FRegistro0205Count := 0;
  FRegistro0206Count := 0;
  FRegistro0208Count := 0;
  FRegistro0400Count := 0;
  FRegistro0450Count := 0;
  FRegistro0500Count := 0;
  FRegistro0600Count := 0;

  FRegistro0990.QTD_LIN_0 := 0;
end;

procedure TBloco_0.LiberaRegistros;
begin
  FRegistro0000.Free;
  FRegistro0001.Free;
  FRegistro0990.Free;
end;

procedure TBloco_0.LimpaRegistros;
begin
  /// Limpa os Registros
  LiberaRegistros;
  Conteudo.Clear;

  /// Recriar os Registros Limpos
  CriaRegistros;
end;

function TBloco_0.Registro0000New: TRegistro0000;
begin
   Result := FRegistro0000;
end;

function TBloco_0.Registro0001New: TRegistro0001;
begin
   Result := FRegistro0001;
end;

function TBloco_0.Registro0100New: TRegistro0100;
begin
   Result := FRegistro0001.Registro0100.New;
end;

function TBloco_0.Registro0110New: TRegistro0110;
begin
   Result := FRegistro0001.Registro0110;
end;

function TBloco_0.Registro0111New: TRegistro0111;
begin
   Result := FRegistro0001.Registro0110.Registro0111;
end;

function TBloco_0.Registro0140New: TRegistro0140;
begin
   Result := FRegistro0001.Registro0140.New;
end;

function TBloco_0.Registro0150New: TRegistro0150;
var
U0140Count: Integer;
begin
   U0140Count := FRegistro0001.Registro0140.Count -1;
   //
   Result := FRegistro0001.Registro0140.Items[U0140Count].Registro0150.New;
end;

function TBloco_0.Registro0190New: TRegistro0190;
var
U0140Count: Integer;
begin
   U0140Count := FRegistro0001.Registro0140.Count -1;
   //
   Result := FRegistro0001.Registro0140.Items[U0140Count].Registro0190.New;
end;

function TBloco_0.Registro0200New: TRegistro0200;
var
U0140Count: Integer;
begin
   U0140Count := FRegistro0001.Registro0140.Count -1;
   //
   Result := FRegistro0001.Registro0140.Items[U0140Count].Registro0200.New;
end;

function TBloco_0.Registro0205New: TRegistro0205;
var
U0140Count: integer;
U0200Count: integer;
begin
   U0140Count := FRegistro0001.Registro0140.Count -1;
   U0200Count := FRegistro0001.Registro0140.Items[U0140Count].Registro0200.Count -1;
   //
   Result := FRegistro0001.Registro0140.Items[U0140Count].Registro0200.Items[U0200Count].Registro0205.New;
end;

function TBloco_0.Registro0206New: TRegistro0206;
var
U0140Count: integer;
U0200Count: integer;
begin
   U0140Count := FRegistro0001.Registro0140.Count -1;
   U0200Count := FRegistro0001.Registro0140.Items[U0140Count].Registro0200.Count -1;
   //
   Result := FRegistro0001.Registro0140.Items[U0140Count].Registro0200.Items[U0200Count].Registro0206;
end;

function TBloco_0.Registro0208New: TRegistro0208;
var
U0140Count: integer;
U0200Count: integer;
begin
   U0140Count := FRegistro0001.Registro0140.Count -1;
   U0200Count := FRegistro0001.Registro0140.Items[U0140Count].Registro0200.Count -1;
   //
   Result := FRegistro0001.Registro0140.Items[U0140Count].Registro0200.Items[U0200Count].Registro0208;
end;

function TBloco_0.Registro0400New: TRegistro0400;
begin
   Result := FRegistro0001.Registro0140.Items[FRegistro0001.Registro0140.Count -1].Registro0400.New;
end;

function TBloco_0.Registro0450New: TRegistro0450;
begin
   Result := FRegistro0001.Registro0140.Items[FRegistro0001.Registro0140.Count -1].Registro0450.New;
end;

function TBloco_0.Registro0500New: TRegistro0500;
begin
   Result := FRegistro0001.Registro0500.New;
end;

function TBloco_0.Registro0600New: TRegistro0600;
begin
   Result := FRegistro0001.Registro0600.New;
end;

procedure TBloco_0.WriteRegistro0000;
var
strCOD_VER: AnsiString;
strTIPO_ESCRIT: AnsiString;
strIND_SIT_ESP: AnsiString;
strIND_NAT_PJ: AnsiString;
strIND_ATIV: AnsiString;
begin
  if Assigned(Registro0000) then
  begin
     with Registro0000 do
     begin
       case COD_VER of
         vlVersao100: strCOD_VER := '001'; // C�digo 001 - Vers�o 100 ADE Cofis n� 31/2010 de 01/01/2011
         vlVersao101: strCOD_VER := '002'; // C�digo 002 - Vers�o 101 ADE Cofis n� 34/2010 de 01/01/2011
       end;
       case TIPO_ESCRIT of
         tpEscrOriginal: strTIPO_ESCRIT := '0';
         tpEscrRetificadora: strTIPO_ESCRIT := '1';
       end;
       case IND_SIT_ESP of
         indSitAbertura: strIND_SIT_ESP := '0';
         indSitCisao: strIND_SIT_ESP := '1';
         indSitFusao: strIND_SIT_ESP := '2';
         indSitIncorporacao: strIND_SIT_ESP := '3';
         indSitEncerramento: strIND_SIT_ESP := '4';
       end;
       case IND_NAT_PJ of
         indNatPJSocEmpresariaGeral   : strIND_NAT_PJ := '00'; //0 - Sociedade empres�ria geral
         indNatPJSocCooperativa       : strIND_NAT_PJ := '01'; //1 - Sociedade Cooperativa
         indNatPJEntExclusivaFolhaSal : strIND_NAT_PJ := '02'; //2 - Entidade sujeita ao PIS/Pasep exclusivamente com base  na folha de sal�rios
       end;
       case IND_ATIV of
         indAtivIndustrial: strIND_ATIV := '0';
         indAtivPrestadorServico: strIND_ATIV := '1';
         indAtivComercio: strIND_ATIV := '2';
         indAtivoFincanceira: strIND_ATIV := '3';
         indAtivoImobiliaria: strIND_ATIV := '4';
         indAtivoOutros: strIND_ATIV := '9';
       end;
       Check(funChecaCNPJ(CNPJ), '(0-0000) ENTIDADE: O CNPJ "%s" digitado � inv�lido!', [CNPJ]);
       Check(funChecaUF(UF), '(0-0000) ENTIDADE: A UF "%s" digitada � inv�lido!', [UF]);
       Check(funChecaMUN(COD_MUN), '(0-0000) ENTIDADE: O c�digo do munic�pio "%s" digitado � inv�lido!', [IntToStr(COD_MUN)]);
       ///
       Add( LFill( '0000' ) +
            LFill( strCOD_VER ) +
            LFill( strTIPO_ESCRIT ) +
            LFill( strIND_SIT_ESP ) +
            LFill( NUM_REC_ANTERIOR, 41 ) +
            LFill( DT_INI ) +
            LFill( DT_FIN ) +
            LFill( CNPJ ) +
            LFill( UF ) +
            LFill( COD_MUN, 7 ) +
            LFill( SUFRAMA, 9 ) +
            LFill( strIND_NAT_PJ ) +
            LFill( strIND_ATIV ) );
       ///
       Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
  end;
end;

procedure TBloco_0.WriteRegistro0001 ;
begin
  if Assigned(FRegistro0001) then
  begin
     with FRegistro0001 do
     begin
        Add( LFill( '0001' ) +
             LFill( Integer(IND_MOV), 0 ) ) ;

        if IND_MOV = imComDados then
        begin
          WriteRegistro0100(FRegistro0001) ;
          WriteRegistro0110(FRegistro0001) ;
          WriteRegistro0140(FRegistro0001) ;
          WriteRegistro0500(FRegistro0001) ;
          WriteRegistro0600(FRegistro0001) ;
        end;
     end;
     Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
  end;
end;

procedure TBloco_0.WriteRegistro0100(Reg0001: TRegistro0001) ;
var
intFor: Integer;
begin
  if Assigned(Reg0001.Registro0100) then
  begin
     for intFor := 0 to Reg0001.Registro0100.Count - 1 do
     begin
        with Reg0001.Registro0100.Items[intFor] do
        begin
          Check(funChecaCPF(CPF),     '(0-0100) CONTADOR: %s, o CPF "%s" digitado � inv�lido!', [NOME, CPF]);
          Check(funChecaCNPJ(CNPJ),   '(0-0100) CONTADOR: %s, o CNPJ "%s" digitado � inv�lido!', [NOME, CNPJ]);
   //       Check(funChecaCEP(CEP, Registro0000.UF), '(0-0100) CONTADOR: %s, o CEP "%s" digitada � inv�lido para a unidade de federa��o "%s"!', [NOME, CEP, Registro0000.UF]);
          Check(funChecaMUN(COD_MUN), '(0-0100) CONTADOR: %s, o c�digo do munic�pio "%s" digitado � inv�lido!', [NOME, IntToStr(COD_MUN)]);
          Check(NOME <> '', '(0-0100) CONTADOR: O nome do contabilista/escrit�rio � obrigat�rio!');
          ///
          Add( LFill('0100') +
               LFill(NOME) +
               LFill(CPF) +
               LFill(CRC) +
               LFill(CNPJ) +
               LFill(CEP, 8) +
               LFill(ENDERECO) +
               LFill(NUM) +
               LFill(COMPL) +
               LFill(BAIRRO) +
               LFill(FONE, 10) +
               LFill(FAX, 10) +
               LFill(EMAIL) +
               LFill(COD_MUN, 7) ) ;
        end;
        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0100Count := FRegistro0100Count + Reg0001.Registro0100.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0110(Reg0001: TRegistro0001) ;
var
strCOD_INC_TRIB: string;
strIND_APRO_CRED: string;
strCOD_TIPO_CONT: string;
begin
  if Assigned(Reg0001.Registro0110) then
  begin
     with Reg0001.Registro0110 do
     begin
       case COD_INC_TRIB of
         codEscrOpIncNaoCumulativo: strCOD_INC_TRIB := '1';
         codEscrOpIncCumulativo: strCOD_INC_TRIB := '2';
         codEscrOpIncAmbos: strCOD_INC_TRIB := '3';
       end;
       case IND_APRO_CRED of
         indMetodoApropriacaoDireta: strIND_APRO_CRED := '1';
         indMetodoDeRateioProporcional: strIND_APRO_CRED := '2';
       end;
       case COD_TIPO_CONT of
         codIndTipoConExclAliqBasica: strCOD_TIPO_CONT := '1';
         codIndTipoAliqEspecificas: strCOD_TIPO_CONT := '2';
       end;
       ///
       Add( LFill('0110') +
            LFill( strCOD_INC_TRIB ) +
            LFill( strIND_APRO_CRED ) +
            LFill( strCOD_TIPO_CONT ) ) ;
       ///
       WriteRegistro0111(Reg0001.Registro0110);
     end;
     Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;

     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0110Count := FRegistro0110Count + 1;
  end;
end;

procedure TBloco_0.WriteRegistro0111(Reg0110: TRegistro0110) ;
var
  intFor: integer;
begin
  if Assigned(Reg0110.Registro0111) then
  begin
     with Reg0110.Registro0111 do
     begin
       Add( LFill('0111') +
            LFill( REC_BRU_NCUM_TRIB_MI, 0, 2 ) +
            LFill( REC_BRU_NCUM_NT_MI, 0, 2 ) +
            LFill( REC_BRU_NCUM_EXP, 0, 2 ) +
            LFill( REC_BRU_CUM, 0, 2 ) +
            LFill( REC_BRU_TOTAL, 0, 2 ) ) ;
     end;
     Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;

     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0111Count := FRegistro0111Count + 1;
  end;
end;

procedure TBloco_0.WriteRegistro0140(Reg0001: TRegistro0001) ;
var
intFor: Integer;
begin
  if Assigned(Reg0001.Registro0140) then
  begin
     for intFor := 0 to Reg0001.Registro0140.Count - 1 do
     begin
        with Reg0001.Registro0140.Items[intFor] do
        begin
           ///
           Add( LFill('0140') +
                LFill( COD_EST ) +
                LFill( NOME ) +
                LFill( CNPJ ) +
                LFill( UF ) +
                LFill( IE ) +
                LFill( COD_MUN, 7 ) +
                LFill( IM ) +
                LFill( SUFRAMA, 7 ) ) ;
        end;
        /// Registros FILHOS
        WriteRegistro0150( Reg0001.Registro0140.Items[intFor] ) ;
        WriteRegistro0190( Reg0001.Registro0140.Items[intFor] ) ;
        WriteRegistro0200( Reg0001.Registro0140.Items[intFor] ) ;

        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0140Count := FRegistro0140Count + Reg0001.Registro0140.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0150(Reg0140: TRegistro0140) ;
var
  intFor: integer;
begin
  if Assigned(Reg0140.Registro0150) then
  begin
     for intFor := 0 to Reg0140.Registro0150.Count - 1 do
     begin
        with Reg0140.Registro0150.Items[intFor] do
        begin
//          Check(funChecaPAISIBGE(COD_PAIS), '(0-0150) %s-%s, o c�digo do pa�s "%s" digitado � inv�lido!', [COD_PART, NOME, COD_PAIS]);
          if Length(CNPJ) > 0 then Check(funChecaCNPJ(CNPJ), '(0-0150) %s-%s, o CNPJ "%s" digitado � inv�lido!', [COD_PART, NOME, CNPJ]);
          if Length(CPF)  > 0 then Check(funChecaCPF(CPF), '(0-0150) %s-%s, o CPF "%s" digitado � inv�lido!', [COD_PART, NOME, CPF]);
//          Check(funChecaIE(IE, UF),         '(0-0150) %s-%s, a Inscri��o Estadual "%s" digitada � inv�lida!', [COD_PART, NOME, IE]);
//          Check(funChecaMUN(COD_MUN),       '(0-0150) %s-%s, o c�digo do munic�pio "%s" digitado � inv�lido!', [COD_PART, NOME, IntToStr(COD_MUN)]);
          Check(NOME <> '',                 '(0-0150) O nome do participante � obrigat�rio!');
          ///
          Add( LFill('0150') +
               LFill(COD_PART) +
               LFill(NOME) +
               LFill(COD_PAIS) +
               LFill(CNPJ) +
               LFill(CPF) +
               LFill(IE) +
               LFill(COD_MUN, 7) +
               LFill(SUFRAMA, 9) +
               LFill(ENDERECO) +
               LFill(NUM) +
               LFill(COMPL) +
               LFill(BAIRRO) ) ;
        end;
        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0150Count := FRegistro0150Count + Reg0140.Registro0150.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0190(Reg0140: TRegistro0140) ;
var
intFor: integer;
begin
  if Assigned(Reg0140.Registro0190) then
  begin
     for intFor := 0 to Reg0140.Registro0190.Count - 1 do
     begin
        with Reg0140.Registro0190.Items[intFor] do
        begin

          Add( LFill('0190') +
               LFill(UNID) +
               LFill(DESCR) ) ;
        end;
        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0190Count := FRegistro0190Count + Reg0140.Registro0190.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0200(Reg0140: TRegistro0140) ;
var
  intFor: integer;
  strTIPO_ITEM: AnsiString;
begin
  if Assigned( Reg0140.Registro0200 ) then
  begin
     for intFor := 0 to Reg0140.Registro0200.Count - 1 do
     begin
        with Reg0140.Registro0200.Items[intFor] do
        begin
          case TIPO_ITEM of
            tiMercadoriaRevenda    : strTIPO_ITEM := '00';
            tiMateriaPrima         : strTIPO_ITEM := '01';
            tiEmbalagem            : strTIPO_ITEM := '02';
            tiProdutoProcesso      : strTIPO_ITEM := '03';
            tiProdutoAcabado       : strTIPO_ITEM := '04';
            tiSubproduto           : strTIPO_ITEM := '05';
            tiProdutoIntermediario : strTIPO_ITEM := '06';
            tiMaterialConsumo      : strTIPO_ITEM := '07';
            tiAtivoImobilizado     : strTIPO_ITEM := '08';
            tiServicos             : strTIPO_ITEM := '09';
            tiOutrosInsumos        : strTIPO_ITEM := '10';
            tiOutras               : strTIPO_ITEM := '99';
          end;
          if Length(COD_GEN) > 0 then
             Check(funChecaGENERO(COD_GEN), '(0-0200) O c�digo do g�nero "%s" digitado � inv�lido!', [COD_GEN]);
          ///
          Add( LFill('0200') +
               LFill( COD_ITEM ) +
               LFill( DESCR_ITEM ) +
               LFill( COD_BARRA ) +
               LFill( COD_ANT_ITEM ) +
               LFill( UNID_INV ) +
               LFill( strTIPO_ITEM ) +
               LFill( COD_NCM ) +
               LFill( EX_IPI ) +
               LFill( COD_GEN ) +
               LFill( COD_LST ) +
               LFill( ALIQ_ICMS, 6, 2 ) ) ;
        end;
        /// Registros FILHOS
        WriteRegistro0205( Reg0140.Registro0200.Items[intFor] ) ;
        WriteRegistro0206( Reg0140.Registro0200.Items[intFor] ) ;
        WriteRegistro0208( Reg0140.Registro0200.Items[intFor] );

        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0200Count := FRegistro0200Count + Reg0140.Registro0200.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0205(Reg0200: TRegistro0200) ;
var
  intFor: integer;
begin
  if Assigned( Reg0200.Registro0205 ) then
  begin
     for intFor := 0 to Reg0200.Registro0205.Count - 1 do
     begin
        with Reg0200.Registro0205.Items[intFor] do
        begin
          Add( LFill('0205') +
               LFill( DESCR_ANT_ITEM ) +
               LFill( DT_INI ) +
               LFill( DT_FIN ) +
               LFill( COD_ANT_ITEM) ) ;
        end;
        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0205Count := FRegistro0205Count + Reg0200.Registro0205.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0206(Reg0200: TRegistro0200) ;
begin
  if Assigned( Reg0200.Registro0206 ) then
  begin
     with Reg0200.Registro0206 do
     begin
       Add( LFill('0206') +
            LFill( COD_COMB ) ) ;
     end;
     Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;

     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0206Count := FRegistro0206Count + 1;
  end;
end;

procedure TBloco_0.WriteRegistro0208(Reg0200: TRegistro0200) ;
var
strCOD_TAB: string;
begin
  if Assigned( Reg0200.Registro0208 ) then
  begin
     with Reg0200.Registro0208 do
     begin
       case COD_TAB of
         codIndTabI: strCOD_TAB := '01';
         codIndTabII: strCOD_TAB := '02';
         codIndTabIII: strCOD_TAB := '03';
         codIndTabIV: strCOD_TAB := '04';
         codIndTabV: strCOD_TAB := '05';
         codIndTabVI: strCOD_TAB := '06';
         codIndTabVII: strCOD_TAB := '07';
         codIndTabVIII: strCOD_TAB := '08';
         codIndTabIX: strCOD_TAB := '09';
         codIndTabX: strCOD_TAB := '10';
         codIndTabXI: strCOD_TAB := '11';
         codIndiTabXII: strCOD_TAB := '12';
       end;
       Add( LFill('0208') +
            LFill( strCOD_TAB ) +
            LFill( COD_GRU ) +
            LFill( MARCA_COM ) ) ;
     end;
     Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;

     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0208Count := FRegistro0208Count + 1;
  end;
end;

procedure TBloco_0.WriteRegistro0400(Reg0140: TRegistro0140) ;
var
  intFor: integer;
begin
  if Assigned(Reg0140.Registro0400) then
  begin
     for intFor := 0 to Reg0140.Registro0400.Count - 1 do
     begin
        with Reg0140.Registro0400.Items[intFor] do
        begin
          ///
          Add( LFill('0400') +
               LFill( COD_NAT ) +
               LFill( DESCR_NAT ) ) ;
        end;
        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0400Count := FRegistro0400Count + Reg0140.Registro0400.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0450(Reg0140: TRegistro0140) ;
var
  intFor: integer;
begin
  if Assigned( Reg0140.Registro0450 ) then
  begin
     for intFor := 0 to Reg0140.Registro0450.Count - 1 do
     begin
        with Reg0140.Registro0450.Items[intFor] do
        begin
          Add( LFill('0450') +
               LFill( COD_INF ) +
               LFill( TXT ) ) ;
        end;
        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0450Count := FRegistro0450Count + Reg0140.Registro0450.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0500(Reg0001: TRegistro0001) ;
var
intFor: integer;
strCOD_NAT_CC: string;
strIND_CTA: string;
begin
  if Assigned( Reg0001.Registro0500 ) then
  begin
     for intFor := 0 to Reg0001.Registro0500.Count - 1 do
     begin
        with Reg0001.Registro0500.Items[intFor] do
        begin
           case COD_NAT_CC of
             ncgAtivo: strCOD_NAT_CC := '01';
             ncgPassivo: strCOD_NAT_CC := '02';
             ncgLiquido: strCOD_NAT_CC := '03';
             ncgResultado: strCOD_NAT_CC := '04';
             ncgCompensacao: strCOD_NAT_CC := '05';
             ncgOutras: strCOD_NAT_CC := '09';
           end;
           case IND_CTA of
             indCTASintetica: strIND_CTA := 'S';
             IndACTAnalitica: strIND_CTA := 'A';
           end;

           Check(Pos(strCOD_NAT_CC, '01,02,03,04,05,09,10,99') > 0, '(0-0500) O c�digo da natureza da conta/grupo de contas "%s" digitado � inv�lido!', [strCOD_NAT_CC]);
           Check(((strIND_CTA = 'S') or (strIND_CTA = 'A')), '(0-0500) O indicador "%s" do tipo de conta, deve ser informado  S ou A!', [strIND_CTA]);

           Add( LFill('0500') +
                LFill( DT_ALT ) +
                LFill( strCOD_NAT_CC ) +
                LFill( strIND_CTA, 1) +
                LFill( NIVEL ) +
                LFill( COD_CTA ) +
                LFill( NOME_CTA ) ) ;
        end;
        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0500Count := FRegistro0500Count + Reg0001.Registro0500.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0600(Reg0001: TRegistro0001) ;
var
  intFor: integer;
begin
  if Assigned( Reg0001.Registro0600 ) then
  begin
     for intFor := 0 to Reg0001.Registro0600.Count - 1 do
     begin
        with Reg0001.Registro0600.Items[intFor] do
        begin
           Add( LFill('0600') +
                LFill( DT_ALT ) +
                LFill( COD_CCUS ) +
                LFill( CCUS ) ) ;
        end;
        Registro0990.QTD_LIN_0 := Registro0990.QTD_LIN_0 + 1;
     end;
     /// Variav�l para armazenar a quantidade de registro do tipo.
     FRegistro0600Count := FRegistro0600Count + Reg0001.Registro0600.Count;
  end;
end;

procedure TBloco_0.WriteRegistro0990 ;
begin
  if Assigned(Registro0990) then
  begin
     with Registro0990 do
     begin
       QTD_LIN_0 := QTD_LIN_0 + 1;
       ///
       Add( LFill('0990') +
            LFill(QTD_LIN_0,0) );
     end;
  end;
end;

end.