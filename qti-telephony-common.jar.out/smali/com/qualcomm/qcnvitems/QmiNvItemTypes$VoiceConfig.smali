.class public Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "QmiNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceConfig"
.end annotation


# static fields
.field public static final AIR_TIMER_TYPE:S = 0x11s

.field public static final AMR_STATUS_TYPE:S = 0x15s

.field public static final AUTO_ANSWER_STATUS_TYPE:S = 0x10s

.field public static final CURRENT_TTY_MODE_TYPE:S = 0x13s

.field public static final PREFERRED_VOICE_SO_TYPE:S = 0x14s

.field public static final ROAM_TIMER_TYPE:S = 0x12s

.field public static final VOICE_PRIVACY_TYPE:S = 0x16s


# instance fields
.field private airTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

.field private amrStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

.field private autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

.field private currentTtyMode:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field private inSetMode:Z

.field private preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

.field private roamTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

.field private voicePrivacy:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;SLcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;)V
    .locals 1
    .param p1, "autoAnswerStatus"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .param p2, "airTimerCount"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .param p3, "roamTimerCount"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .param p4, "currentTtyMode"    # S
    .param p5, "preferredVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1238
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    .line 1239
    iput-object p2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    .line 1240
    iput-object p3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    .line 1241
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1242
    iput-object p5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    .line 1243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    .line 1237
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;SLcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;S)V
    .locals 1
    .param p1, "autoAnswerStatus"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .param p2, "airTimerCount"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .param p3, "roamTimerCount"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .param p4, "currentTtyMode"    # S
    .param p5, "preferredVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    .param p6, "amrStatus"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;
    .param p7, "voicePrivacy"    # S

    .prologue
    .line 1249
    invoke-direct/range {p0 .. p5}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;-><init>(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;SLcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;)V

    .line 1250
    iput-object p6, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->amrStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    .line 1251
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p7}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->voicePrivacy:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    .line 1248
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .param p1, "qmiMsg"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1255
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1256
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    .line 1257
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1258
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v5, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1259
    array-length v3, p1

    .line 1260
    .local v3, "size":I
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 1261
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v4

    .line 1262
    .local v4, "type":S
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 1263
    .local v2, "length":I
    invoke-static {v0, v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->parseData(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    .line 1264
    .local v1, "data":[B
    add-int/lit8 v5, v2, 0x3

    sub-int/2addr v3, v5

    .line 1265
    iget-boolean v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    if-eqz v5, :cond_0

    .line 1266
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1268
    :pswitch_0
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    goto :goto_0

    .line 1272
    :pswitch_1
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    goto :goto_0

    .line 1276
    :pswitch_2
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    goto :goto_0

    .line 1280
    :pswitch_3
    new-instance v5, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    goto :goto_0

    .line 1284
    :pswitch_4
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    goto :goto_0

    .line 1288
    :pswitch_5
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->amrStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    .line 1289
    iput-boolean v6, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    goto :goto_0

    .line 1293
    :pswitch_6
    new-instance v5, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->voicePrivacy:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1294
    iput-boolean v6, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    goto :goto_0

    .line 1255
    .end local v1    # "data":[B
    .end local v2    # "length":I
    .end local v4    # "type":S
    :cond_1
    return-void

    .line 1266
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static generateRequest()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1401
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 1402
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1403
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1404
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1401
    return-object v0
.end method

.method public static getTypes(Z)[S
    .locals 1
    .param p0, "inSetMode"    # Z

    .prologue
    .line 1386
    if-eqz p0, :cond_0

    .line 1387
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    .line 1392
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    return-object v0

    .line 1387
    :array_0
    .array-data 2
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
    .end array-data

    .line 1392
    nop

    :array_1
    .array-data 2
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
    .end array-data
.end method


# virtual methods
.method public getAirTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    return-object v0
.end method

.method public getAmrStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;
    .locals 1

    .prologue
    .line 1347
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    if-eqz v0, :cond_0

    .line 1348
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;-><init>()V

    return-object v0

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->amrStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    return-object v0
.end method

.method public getAutoAnswerStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    return-object v0
.end method

.method public getCurrentTtyMode()S
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toShort()S

    move-result v0

    return v0
.end method

.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getItems(Z)[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v0

    return-object v0
.end method

.method public getItems(Z)[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 7
    .param p1, "inSetMode"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1367
    if-eqz p1, :cond_0

    .line 1368
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 1369
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aput-object v1, v0, v5

    .line 1370
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    aput-object v1, v0, v6

    .line 1368
    return-object v0

    .line 1373
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 1374
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aput-object v1, v0, v5

    .line 1375
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->amrStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->voicePrivacy:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1373
    return-object v0
.end method

.method public getPreferredVoiceSo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    return-object v0
.end method

.method public getRoamTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .prologue
    .line 1382
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getTypes(Z)[S

    move-result-object v0

    return-object v0
.end method

.method public getVoicePrivacy()S
    .locals 1

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    if-eqz v0, :cond_0

    .line 1356
    const/4 v0, 0x0

    return v0

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->voicePrivacy:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toShort()S

    move-result v0

    return v0
.end method

.method public setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V
    .locals 1
    .param p1, "airTimerCount"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    .prologue
    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    .line 1316
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    .line 1314
    return-void
.end method

.method public setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;)V
    .locals 1
    .param p1, "autoAnswerStatus"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    .prologue
    .line 1306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    .line 1307
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    .line 1305
    return-void
.end method

.method public setCurrentTtyMode(S)V
    .locals 1
    .param p1, "currentTtyMode"    # S

    .prologue
    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    .line 1334
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1332
    return-void
.end method

.method public setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;)V
    .locals 1
    .param p1, "preferredVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    .prologue
    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    .line 1343
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    .line 1341
    return-void
.end method

.method public setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V
    .locals 1
    .param p1, "roamTimerCount"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    .prologue
    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->inSetMode:Z

    .line 1325
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    .line 1323
    return-void
.end method
