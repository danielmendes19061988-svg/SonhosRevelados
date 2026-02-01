# Sonhos Revelados

Aplicativo mobile para interpretação de sonhos, diário pessoal, tiragens místicas (1, 3 ou 5 cartas) e histórico com narração por voz (TTS), focado em funcionamento offline e experiência visual mística-profissional.

## Visão geral

- **Nome do app:** Sonhos Revelados
- **Plataforma:** Mobile (Android/iOS)
- **Stack:** Flutter (planejado)
- **Modo de operação:** Offline, sem necessidade de cadastro
- **Recursos principais:**
  - Busca por temas de sonhos com interpretações.
  - Diário pessoal de sonhos.
  - Tiragens místicas (1, 3 ou 5 cartas).
  - Narração por voz (TTS).
  - Histórico de sonhos e tiragens.

## Como publicar na Play Store (resumo)

1. **Preparar o projeto**
   - Conferir `targetSdkVersion = 35` (Android 15) no módulo Android.
   - Garantir ícone (512×512), feature graphic (1024×500) e pelo menos 4 screenshots.
2. **Gerar o App Bundle (.aab)**
   - Abrir o projeto Android no Android Studio.
   - Ir em **Build → Generate Signed Bundle / APK**.
   - Selecionar **Android App Bundle**.
   - Criar/selecionar a keystore e gerar o `.aab`.
3. **Publicar no Google Play Console**
   - Criar/confirmar conta de desenvolvedor.
   - Criar um app novo, preencher a ficha e subir o `.aab`.
   - Inserir política de privacidade, classificações e materiais gráficos.

> Observação: a geração do `.aab` precisa ser feita localmente (Android Studio/Flutter).

## Estrutura prevista do repositório

- `docs/APP_DATA.md`: dados completos do aplicativo, conteúdo e status de entrega.
- `docs/PLAYSTORE_STEPS.md`: passo a passo completo para publicação.

## Status

- Desenvolvimento: concluído (base funcional)
- Conteúdo: revisado
- Materiais de loja: prontos
- Publicação: pendente (envio no Google Play Console)
