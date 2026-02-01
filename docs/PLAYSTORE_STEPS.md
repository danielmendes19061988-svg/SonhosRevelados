# Passo a passo — Publicar na Play Store

Este guia é focado em quem **não programa** e precisa de um roteiro direto para publicar o app.

## 1) Pré-requisitos

- **Conta no Google Play Console** (taxa única de US$ 25).
- **Android Studio** instalado no seu computador.
- **Arquivos do projeto** exportados do repositório ou do AI Studio.

## 2) Conferir requisitos do Android

No projeto Android:

- `targetSdkVersion = 35` (Android 15) ou superior.

## 3) Garantir materiais obrigatórios

- **Ícone** 512×512 px.
- **Feature graphic** 1024×500 px.
- **Screenshots** (mínimo 4).
- **Política de privacidade** publicada em um link público.

## 4) Gerar o App Bundle (.aab)

1. Abra o Android Studio.
2. Escolha **Open Project** e selecione a pasta `android` do projeto.
3. Vá em **Build → Generate Signed Bundle / APK**.
4. Selecione **Android App Bundle**.
5. Crie ou selecione a **keystore** (guarde a senha com segurança).
6. Gere o arquivo `.aab`.

## 5) Enviar para o Google Play Console

1. Crie um novo app no Console.
2. Preencha **nome, descrição, categoria e política de privacidade**.
3. Faça o upload do `.aab`.
4. Adicione imagens e screenshots.
5. Envie para **revisão**.

## Dicas importantes

- Não perca sua **keystore**, pois ela é necessária para futuras atualizações.
- Se sua conta for nova, o Google pode exigir testes fechados antes da produção.
