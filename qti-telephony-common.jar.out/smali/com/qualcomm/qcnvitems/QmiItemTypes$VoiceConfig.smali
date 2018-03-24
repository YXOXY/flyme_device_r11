.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiStructType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
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
.field private airTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

.field private amrStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;

.field private autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

.field private currentTtyMode:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

.field private inSetMode:Z

.field private preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

.field private roamTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

.field private voicePrivacy:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;SLcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;)V
    .locals 1
    .param p1, "autoAnswerStatus"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;
    .param p2, "airTimerCount"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;
    .param p3, "roamTimerCount"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;
    .param p4, "currentTtyMode"    # S
    .param p5, "preferredVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    .prologue
    .line 1511
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1513
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

    .line 1514
    iput-object p2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    .line 1515
    iput-object p3, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    .line 1516
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v0, p4}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    .line 1517
    iput-object p5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    .line 1518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    .line 1512
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;SLcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;S)V
    .locals 1
    .param p1, "autoAnswerStatus"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;
    .param p2, "airTimerCount"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;
    .param p3, "roamTimerCount"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;
    .param p4, "currentTtyMode"    # S
    .param p5, "preferredVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;
    .param p6, "amrStatus"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;
    .param p7, "voicePrivacy"    # S

    .prologue
    .line 1524
    invoke-direct/range {p0 .. p5}, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;-><init>(Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;SLcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;)V

    .line 1525
    iput-object p6, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->amrStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;

    .line 1526
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v0, p7}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->voicePrivacy:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    .line 1527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    .line 1523
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .param p1, "qmiMsg"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1530
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1531
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    .line 1532
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1533
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v5, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1534
    array-length v3, p1

    .line 1535
    .local v3, "size":I
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 1536
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(B)S

    move-result v4

    .line 1537
    .local v4, "type":S
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 1538
    .local v2, "length":I
    invoke-static {v0, v2}, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->parseData(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    .line 1539
    .local v1, "data":[B
    add-int/lit8 v5, v2, 0x3

    sub-int/2addr v3, v5

    .line 1540
    iget-boolean v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    if-eqz v5, :cond_0

    .line 1541
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1543
    :pswitch_0
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

    goto :goto_0

    .line 1547
    :pswitch_1
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    goto :goto_0

    .line 1551
    :pswitch_2
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    goto :goto_0

    .line 1555
    :pswitch_3
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    goto :goto_0

    .line 1559
    :pswitch_4
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    goto :goto_0

    .line 1563
    :pswitch_5
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->amrStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;

    .line 1564
    iput-boolean v6, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    goto :goto_0

    .line 1568
    :pswitch_6
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->voicePrivacy:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    .line 1569
    iput-boolean v6, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    goto :goto_0

    .line 1530
    .end local v1    # "data":[B
    .end local v2    # "length":I
    .end local v4    # "type":S
    :cond_1
    return-void

    .line 1541
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

.method public static generateRequest()[Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1676
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;

    .line 1677
    new-instance v1, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1678
    new-instance v1, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1679
    new-instance v1, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v1, v3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1676
    return-object v0
.end method

.method public static getTypes(Z)[S
    .locals 1
    .param p0, "inSetMode"    # Z

    .prologue
    .line 1661
    if-eqz p0, :cond_0

    .line 1662
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    .line 1667
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    return-object v0

    .line 1662
    :array_0
    .array-data 2
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
    .end array-data

    .line 1667
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
.method public getAirTimerCount()Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    return-object v0
.end method

.method public getAmrStatus()Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    if-eqz v0, :cond_0

    .line 1623
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;-><init>()V

    return-object v0

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->amrStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;

    return-object v0
.end method

.method public getAutoAnswerStatus()Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

    return-object v0
.end method

.method public getCurrentTtyMode()S
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;->toShort()S

    move-result v0

    return v0
.end method

.method public getItems()[Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
    .locals 1

    .prologue
    .line 1638
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->getItems(Z)[Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;

    move-result-object v0

    return-object v0
.end method

.method public getItems(Z)[Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
    .locals 7
    .param p1, "inSetMode"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1642
    if-eqz p1, :cond_0

    .line 1643
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;

    .line 1644
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    aput-object v1, v0, v5

    .line 1645
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    aput-object v1, v0, v6

    .line 1643
    return-object v0

    .line 1648
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;

    .line 1649
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    aput-object v1, v0, v5

    .line 1650
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->amrStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->voicePrivacy:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1648
    return-object v0
.end method

.method public getPreferredVoiceSo()Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    return-object v0
.end method

.method public getRoamTimerCount()Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .prologue
    .line 1657
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->getTypes(Z)[S

    move-result-object v0

    return-object v0
.end method

.method public getVoicePrivacy()S
    .locals 1

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    if-eqz v0, :cond_0

    .line 1631
    const/4 v0, 0x0

    return v0

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->voicePrivacy:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;->toShort()S

    move-result v0

    return v0
.end method

.method public setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;)V
    .locals 1
    .param p1, "airTimerCount"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    .prologue
    .line 1590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    .line 1591
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->airTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    .line 1589
    return-void
.end method

.method public setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;)V
    .locals 1
    .param p1, "autoAnswerStatus"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

    .prologue
    .line 1581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    .line 1582
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->autoAnswerStatus:Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;

    .line 1580
    return-void
.end method

.method public setCurrentTtyMode(S)V
    .locals 1
    .param p1, "currentTtyMode"    # S

    .prologue
    .line 1608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    .line 1609
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;-><init>(S)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->currentTtyMode:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiByte;

    .line 1607
    return-void
.end method

.method public setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;)V
    .locals 1
    .param p1, "preferredVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    .prologue
    .line 1617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    .line 1618
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->preferredVoiceSo:Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;

    .line 1616
    return-void
.end method

.method public setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;)V
    .locals 1
    .param p1, "roamTimerCount"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    .prologue
    .line 1599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->inSetMode:Z

    .line 1600
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$VoiceConfig;->roamTimerCount:Lcom/qualcomm/qcnvitems/QmiItemTypes$TimerCount;

    .line 1598
    return-void
.end method
