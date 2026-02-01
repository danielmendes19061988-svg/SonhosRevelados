# Passo a passo — Publicar na Play Store

Este guia é focado em quem **não programa** e precisa de um roteiro direto para publicar o app.

## 1) Pré-requisitos

- **Conta no Google Play Console** (taxa única de US$ 25).
- **Android Studio** instalado no seu computador.
- **Arquivos do projeto** exportados do repositório ou do AI Studio.
- **Política de privacidade publicada** em um link público (ex: Google Sites ou GitHub Pages).

## 2) Conferir requisitos do Android

No projeto Android (arquivo `android/app/build.gradle`):

- `targetSdkVersion = 35` (Android 15) ou superior.
  - Se estiver diferente, atualize o valor para `35`.

## 3) Garantir materiais obrigatórios

- **Ícone** 512×512 px.
- **Feature graphic** 1024×500 px.
- **Screenshots** (mínimo 4).
- **Política de privacidade** publicada em um link público.

> Dica: tire screenshots no celular ou no emulador Android Studio.

## 4) Gerar o App Bundle (.aab)

1. Abra o Android Studio.
2. Clique em **Open Project** e selecione a pasta `android` do projeto.
3. Espere o Android Studio terminar o **Sync** (pode levar alguns minutos).
4. Vá em **Build → Generate Signed Bundle / APK**.
5. Selecione **Android App Bundle** e clique em **Next**.
6. Crie ou selecione a **keystore**:
   - **Create new...** → escolha um local seguro para salvar o arquivo.
   - Defina uma senha forte e **guarde** em local seguro.
7. Clique em **Next** e depois em **Finish**.
8. O arquivo `.aab` será gerado. O Android Studio mostrará o caminho do arquivo ao final.

> Importante: se você perder a keystore, não conseguirá atualizar o app depois.

## 5) Enviar para o Google Play Console

1. Crie um novo app no Console.
2. Preencha **nome, descrição, categoria e política de privacidade**.
3. Vá em **Produção** ou **Teste fechado** → **Criar nova versão**.
4. Faça o upload do `.aab`.
5. Adicione imagens e screenshots.
6. Responda o questionário de **Classificação de Conteúdo**.
7. Envie para **revisão**.

> Se sua conta for nova, o Google pode exigir **teste fechado** com usuários antes da produção.

## Dicas importantes

- Não perca sua **keystore**, pois ela é necessária para futuras atualizações.
- Separe uma pasta com todos os materiais (ícone, feature graphic, screenshots).
- Guarde o arquivo `.aab` gerado para futuras referências.
