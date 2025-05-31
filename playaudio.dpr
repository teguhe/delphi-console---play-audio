program playaudio;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  //additional
  Windows, MMSystem,

  //autogenerate
  System.SysUtils;

begin

  if ParamCount <> 1 then
  begin
    Writeln('Usage: PlayAudio <path_to_audio_file>');
    Exit;
  end;

  // Ambil argumen pertama (path file)
  var audioFile := ParamStr(1);

  // Cek apakah file ada
  if not FileExists(audioFile) then
  begin
    Writeln('File tidak ditemukan: ', audioFile);
    Exit;
  end;

  // Mainkan file audio
  if PlaySound(PChar(audioFile), 0, SND_FILENAME or SND_ASYNC) then
    Writeln('Memutar file: ', audioFile)
  else
    Writeln('Gagal memutar file: ', audioFile);

end.
