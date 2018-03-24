.class public Lcom/qualcomm/qcnvitems/QmiNvItems;
.super Ljava/lang/Object;
.source "QmiNvItems.java"

# interfaces
.implements Lcom/qualcomm/qcnvitems/IQcNvItems;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final enableVLog:Z = true

.field private static modemId:I


# instance fields
.field private mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "SERVICE_PROG"

    sput-object v0, Lcom/qualcomm/qcnvitems/QmiNvItems;->LOG_TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qcnvitems/QmiNvItems;->modemId:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "Service Programming instance created."

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qcrilhook/QmiOemHook;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 34
    return-void
.end method

.method public static getModemId()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/qualcomm/qcnvitems/QmiNvItems;->modemId:I

    return v0
.end method

.method public static setModemId(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 51
    sput p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->modemId:I

    .line 50
    return-void
.end method

.method private static vLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logString"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/qualcomm/qcnvitems/QmiNvItems;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method


# virtual methods
.method public disableAutoAnswer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    const-string/jumbo v1, "disableAutoAnswer"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 704
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    new-instance v1, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;)V

    .line 705
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V

    .line 701
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->dispose()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 41
    return-void
.end method

.method public enableAutoAnswer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    const-string/jumbo v1, "enableAutoAnswer"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 711
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    new-instance v1, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;)V

    .line 712
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V

    .line 708
    return-void
.end method

.method public get3gpp2SubscriptionInfo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    return-object v0
.end method

.method public get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    .locals 5
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v1, "get3gpp2SubscriptionInfo()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 73
    new-instance v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v2, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    .line 72
    const v3, 0x81001

    const/4 v4, 0x1

    .line 71
    invoke-virtual {v1, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;-><init>([B)V

    .line 74
    .local v0, "result":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method public getAirTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    const-string/jumbo v1, "getAirTimerCount()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 718
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getAirTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    move-result-object v1

    return-object v1
.end method

.method public getAmrStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    const-string/jumbo v1, "getAmrStatus()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 782
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getAmrStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    move-result-object v1

    return-object v1
.end method

.method public getAnalogHomeSid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoAnswerStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    const-string/jumbo v1, "getAutoAnswerStatus()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 687
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getAutoAnswerStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    move-result-object v1

    return-object v1
.end method

.method public getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getCdmaChannels(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaChannels(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    const-string/jumbo v1, "getCdmaChannels()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 530
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentTtyMode()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    const-string/jumbo v1, "getCurrentTtyMode()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 752
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getCurrentTtyMode()S

    move-result v1

    return v1
.end method

.method public getDefaultBaudRate()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSerials()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectoryNumber()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getDirectoryNumber(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryNumber(S)Ljava/lang/String;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const-string/jumbo v1, "getDirectoryNumber()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 130
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getDirNum()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEccList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmailGateway()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFtmMode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGpsOnePdeAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGpsOnePdePort()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHomeSidNid()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getHomeSidNid(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    move-result-object v0

    return-object v0
.end method

.method public getHomeSidNid(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const-string/jumbo v1, "getSidNid()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 156
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getSidNid()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    move-result-object v1

    return-object v1
.end method

.method public getImsi11_12()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getImsi11_12(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi11_12(S)Ljava/lang/String;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const-string/jumbo v1, "getImsi11_12()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 260
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getImsi11_12()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImsiMcc()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getImsiMcc(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsiMcc(S)Ljava/lang/String;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const-string/jumbo v1, "getImsiMcc()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 233
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getMcc()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImsiMin1()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getImsiMin1(S)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsiMin1(S)[Ljava/lang/String;
    .locals 8
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const-string/jumbo v6, "getImsiMin1()"

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getDirectoryNumber(S)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "dirNum":Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin1(Ljava/lang/String;)I

    move-result v2

    .line 291
    .local v2, "min1_0":I
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v1

    .line 292
    .local v1, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v4

    .line 293
    .local v4, "minImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    invoke-virtual {v4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getImsiNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin1(Ljava/lang/String;)I

    move-result v3

    .line 295
    .local v3, "min1_1":I
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    .line 296
    .local v5, "retVal":[Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 297
    invoke-static {v3}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 298
    return-object v5
.end method

.method public getImsiMin2()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getImsiMin2(S)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsiMin2(S)[Ljava/lang/String;
    .locals 8
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const-string/jumbo v6, "getImsiMin2()"

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getDirectoryNumber(S)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "dirNum":Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin2(Ljava/lang/String;)S

    move-result v2

    .line 347
    .local v2, "min2_0":I
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v1

    .line 348
    .local v1, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v4

    .line 349
    .local v4, "minImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    invoke-virtual {v4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getImsiNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin2(Ljava/lang/String;)S

    move-result v3

    .line 351
    .local v3, "min2_1":I
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    .line 352
    .local v5, "retVal":[Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 353
    invoke-static {v3}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 354
    return-object v5
.end method

.method public getLockCode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getMinImsi(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v0

    return-object v0
.end method

.method public getMinImsi(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const-string/jumbo v1, "getMinImsi()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 181
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v1

    return-object v1
.end method

.method public getMinImsiNumber()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getMinImsiNumber(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinImsiNumber(S)Ljava/lang/String;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const-string/jumbo v1, "getMinImsiNumber()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 206
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getImsiNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMobCaiRev()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    const-string/jumbo v1, "getMobCaiRev()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 622
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const v2, 0x81003

    invoke-virtual {v1, v2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>([B)V

    .line 623
    .local v0, "result":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toShort()S

    move-result v1

    return v1
.end method

.method public getNamName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getNamName(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamName(S)Ljava/lang/String;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const-string/jumbo v1, "getNamName()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 111
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getNamName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPreferredVoiceSo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    const-string/jumbo v1, "getPreferredVoiceSo()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 765
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getPreferredVoiceSo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    move-result-object v1

    return-object v1
.end method

.method public getPrimaryCdmaChannels()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getPrimaryCdmaChannels(S)[I

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryCdmaChannels(S)[I
    .locals 5
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    const-string/jumbo v3, "getPrimaryCdmaChannels()"

    invoke-static {v3}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v1

    .line 556
    .local v1, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    move-result-object v0

    .line 557
    .local v0, "cdmaChannels":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 558
    .local v2, "retVal":[I
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getPrimaryChannelA()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 559
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getPrimaryChannelB()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 560
    return-object v2
.end method

.method public getRoamTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    const-string/jumbo v1, "getRoamTimerCount()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 735
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getRoamTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    move-result-object v1

    return-object v1
.end method

.method public getRtreConfig()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    const-string/jumbo v1, "getRtreConfig()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 640
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const v2, 0x81005

    invoke-virtual {v1, v2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>([B)V

    .line 641
    .local v0, "result":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toShort()S

    move-result v1

    return v1
.end method

.method public getSecCode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondaryCdmaChannels()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getSecondaryCdmaChannels(S)[I

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryCdmaChannels(S)[I
    .locals 5
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    const-string/jumbo v3, "getSecondaryCdmaChannels()"

    invoke-static {v3}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v1

    .line 589
    .local v1, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    move-result-object v0

    .line 590
    .local v0, "cdmaChannels":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 591
    .local v2, "retVal":[I
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getSecondaryChannelA()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 592
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getSecondaryChannelB()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 593
    return-object v2
.end method

.method public getSpcChangeEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getTrueImsi(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v0

    return-object v0
.end method

.method public getTrueImsi(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    const-string/jumbo v1, "getTrueImsi()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 399
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    return-object v1
.end method

.method public getTrueImsi11_12()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getTrueImsi11_12(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrueImsi11_12(S)Ljava/lang/String;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    const-string/jumbo v1, "getTrueImsi11_12()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 478
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getImsi11_12()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTrueImsiAddrNum()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getTrueImsiAddrNum(S)S

    move-result v0

    return v0
.end method

.method public getTrueImsiAddrNum(S)S
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const-string/jumbo v1, "getTrueImsiAddrNum()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 505
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getImsiAddrNum()S

    move-result v1

    return v1
.end method

.method public getTrueImsiMcc()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getTrueImsiMcc(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrueImsiMcc(S)Ljava/lang/String;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    const-string/jumbo v1, "getTrueImsiMcc()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 451
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getMcc()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTrueImsiNumber()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getTrueImsiNumber(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrueImsiNumber(S)Ljava/lang/String;
    .locals 2
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const-string/jumbo v1, "getTrueImsiNumber()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 424
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getImsiNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    const-string/jumbo v1, "getVoiceConfig()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 667
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 668
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getTypes(Z)[S

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->generateRequest()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v3

    .line 667
    const v4, 0x8100e

    invoke-virtual {v1, v4, v2, v3}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;-><init>([B)V

    .line 669
    .local v0, "result":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 671
    return-object v0
.end method

.method public getVoicePrivacyPref()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    const-string/jumbo v1, "getVoicePrivacyPref()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 788
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getVoicePrivacy()S

    move-result v1

    return v1
.end method

.method public isEnableDiag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;)V
    .locals 1
    .param p1, "threegpp2Info"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 104
    return-void
.end method

.method public set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V
    .locals 7
    .param p1, "threegpp2Info"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    const-string/jumbo v4, "set3gpp2SubscriptionInfo()"

    invoke-static {v4}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v4, Ljava/security/InvalidParameterException;

    invoke-direct {v4}, Ljava/security/InvalidParameterException;-><init>()V

    throw v4

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTypes()[S

    move-result-object v0

    .line 90
    .local v0, "s":[S
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v1

    .line 92
    .local v1, "t":[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [S

    .line 93
    .local v3, "types":[S
    aput-short v6, v3, v5

    .line 94
    array-length v4, v0

    invoke-static {v0, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 96
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 97
    .local v2, "tlvs":[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    new-instance v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v4, p2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    aput-object v4, v2, v5

    .line 98
    array-length v4, v1

    invoke-static {v1, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget-object v4, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const v5, 0x81002

    invoke-virtual {v4, v5, v3, v2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    .line 83
    return-void
.end method

.method public setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V
    .locals 2
    .param p1, "airTimerCount"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 723
    const-string/jumbo v1, "setAirTimerCount()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 724
    if-nez p1, :cond_0

    .line 725
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 728
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V

    .line 729
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V

    .line 722
    return-void
.end method

.method public setAnalogHomeSid(I)V
    .locals 0
    .param p1, "sid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method public setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;)V
    .locals 2
    .param p1, "autoAnswer"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 692
    const-string/jumbo v1, "setAutoAnswerStatus()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 693
    if-nez p1, :cond_0

    .line 694
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 697
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;)V

    .line 698
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V

    .line 691
    return-void
.end method

.method public setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V
    .locals 1
    .param p1, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;S)V

    .line 549
    return-void
.end method

.method public setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;S)V
    .locals 2
    .param p1, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 539
    const-string/jumbo v1, "setCdmaChannels()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 540
    if-nez p1, :cond_0

    .line 541
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 543
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 544
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V

    .line 545
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 538
    return-void
.end method

.method public setCurrentTtyMode(S)V
    .locals 2
    .param p1, "ttyMode"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 756
    const-string/jumbo v1, "setCurrentTtyMode()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 758
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->setCurrentTtyMode(S)V

    .line 759
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V

    .line 755
    return-void
.end method

.method public setDefaultBaudRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "baudRate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 827
    return-void
.end method

.method public setDirectoryNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "directoryNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setDirectoryNumber(Ljava/lang/String;S)V

    .line 149
    return-void
.end method

.method public setDirectoryNumber(Ljava/lang/String;S)V
    .locals 2
    .param p1, "directoryNumber"    # Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 139
    const-string/jumbo v1, "setDirectoryNumber()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 143
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 144
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setDirNum(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 138
    return-void
.end method

.method public setEccList([Ljava/lang/String;)V
    .locals 0
    .param p1, "eccList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 846
    return-void
.end method

.method public setEmailGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 837
    return-void
.end method

.method public setGpsOnePdeAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "gps1PdeAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 874
    return-void
.end method

.method public setGpsOnePdePort(Ljava/lang/String;)V
    .locals 0
    .param p1, "gps1PdePort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 883
    return-void
.end method

.method public setHomeSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;)V
    .locals 1
    .param p1, "sidNid"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setHomeSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;S)V

    .line 174
    return-void
.end method

.method public setHomeSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;S)V
    .locals 2
    .param p1, "sidNid"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 165
    const-string/jumbo v1, "setSidNid()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 169
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 170
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;)V

    .line 171
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 164
    return-void
.end method

.method public setImsi11_12(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi11_12"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setImsi11_12(Ljava/lang/String;S)V

    .line 280
    return-void
.end method

.method public setImsi11_12(Ljava/lang/String;S)V
    .locals 3
    .param p1, "imsi11_12"    # Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 269
    const-string/jumbo v2, "setImsi11_12()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 273
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 274
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v1

    .line 275
    .local v1, "minImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsi11_12(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;)V

    .line 277
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 268
    return-void
.end method

.method public setImsiMcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsiMcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setImsiMcc(Ljava/lang/String;S)V

    .line 253
    return-void
.end method

.method public setImsiMcc(Ljava/lang/String;S)V
    .locals 3
    .param p1, "imsiMcc"    # Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 242
    const-string/jumbo v2, "setImsiMcc()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 243
    if-nez p1, :cond_0

    .line 244
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 246
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 247
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v1

    .line 248
    .local v1, "minImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setMcc(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;)V

    .line 250
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 241
    return-void
.end method

.method public setImsiMin1([Ljava/lang/String;)V
    .locals 1
    .param p1, "min1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setImsiMin1([Ljava/lang/String;S)V

    .line 336
    return-void
.end method

.method public setImsiMin1([Ljava/lang/String;S)V
    .locals 9
    .param p1, "min1"    # [Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 313
    const-string/jumbo v6, "setImsiMin1()"

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-direct {v6}, Ljava/security/InvalidParameterException;-><init>()V

    throw v6

    .line 319
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "min1_0":I
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 325
    .local v2, "min1_1":I
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getImsiMin2(S)[Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "min2":[Ljava/lang/String;
    aget-object v6, v3, v7

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v4

    .line 327
    .local v4, "min2_0":S
    aget-object v6, v3, v8

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v5

    .line 329
    .local v5, "min2_1":S
    invoke-static {v1, v4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->minToPhString(IS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setDirectoryNumber(Ljava/lang/String;S)V

    .line 330
    invoke-static {v2, v5}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->minToPhString(IS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setMinImsiNumber(Ljava/lang/String;S)V

    .line 312
    return-void

    .line 321
    .end local v1    # "min1_0":I
    .end local v2    # "min1_1":I
    .end local v3    # "min2":[Ljava/lang/String;
    .end local v4    # "min2_0":S
    .end local v5    # "min2_1":S
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setImsiMin2([Ljava/lang/String;)V
    .locals 1
    .param p1, "min2"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setImsiMin2([Ljava/lang/String;S)V

    .line 392
    return-void
.end method

.method public setImsiMin2([Ljava/lang/String;S)V
    .locals 9
    .param p1, "min2"    # [Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 369
    const-string/jumbo v6, "setImsiMin2()"

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-direct {v6}, Ljava/security/InvalidParameterException;-><init>()V

    throw v6

    .line 375
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v4

    .line 376
    .local v4, "min2_0":S
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 381
    .local v5, "min2_1":S
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getImsiMin1(S)[Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "min1":[Ljava/lang/String;
    aget-object v6, v1, v7

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v2

    .line 383
    .local v2, "min1_0":I
    aget-object v6, v1, v8

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v3

    .line 385
    .local v3, "min1_1":I
    invoke-static {v2, v4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->minToPhString(IS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setDirectoryNumber(Ljava/lang/String;S)V

    .line 386
    invoke-static {v3, v5}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->minToPhString(IS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setMinImsiNumber(Ljava/lang/String;S)V

    .line 368
    return-void

    .line 377
    .end local v1    # "min1":[Ljava/lang/String;
    .end local v2    # "min1_0":I
    .end local v3    # "min1_1":I
    .end local v4    # "min2_0":S
    .end local v5    # "min2_1":S
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setLockCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "lockCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 864
    return-void
.end method

.method public setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;)V
    .locals 1
    .param p1, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;S)V

    .line 199
    return-void
.end method

.method public setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;S)V
    .locals 2
    .param p1, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 190
    const-string/jumbo v1, "setMinImsi()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 194
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 195
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;)V

    .line 196
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 189
    return-void
.end method

.method public setMinImsiNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "phNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setMinImsiNumber(Ljava/lang/String;S)V

    .line 226
    return-void
.end method

.method public setMinImsiNumber(Ljava/lang/String;S)V
    .locals 3
    .param p1, "phNumber"    # Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 215
    const-string/jumbo v2, "setMinImsiNumber()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 219
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 220
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v1

    .line 221
    .local v1, "minImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsiNumber(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;)V

    .line 214
    return-void
.end method

.method public setMobCaiRev(S)V
    .locals 4
    .param p1, "mobCaiRev"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 629
    const-string/jumbo v1, "setMobCaiRev()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 632
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    .line 633
    .local v0, "o":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const v2, 0x81004

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    .line 628
    return-void
.end method

.method public setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;)V
    .locals 2
    .param p1, "preferredVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 770
    const-string/jumbo v1, "setPreferredVoiceSo()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 771
    if-nez p1, :cond_0

    .line 772
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 775
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;)V

    .line 776
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V

    .line 769
    return-void
.end method

.method public setPrimaryCdmaChannels([I)V
    .locals 1
    .param p1, "primaryChannels"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setPrimaryCdmaChannels([IS)V

    .line 582
    return-void
.end method

.method public setPrimaryCdmaChannels([IS)V
    .locals 4
    .param p1, "primaryChannels"    # [I
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 569
    const-string/jumbo v2, "setPrimaryCdmaChannels()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 570
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 571
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 573
    :cond_1
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v1

    .line 574
    .local v1, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    move-result-object v0

    .line 575
    .local v0, "cdmaChannels":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->setPrimaryChannelA(I)V

    .line 576
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->setPrimaryChannelB(I)V

    .line 577
    invoke-virtual {v1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V

    .line 578
    invoke-virtual {p0, v1, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 568
    return-void
.end method

.method public setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V
    .locals 2
    .param p1, "roamTimerCount"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 740
    const-string/jumbo v1, "setRoamTimerCount()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 741
    if-nez p1, :cond_0

    .line 742
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    move-result-object v0

    .line 745
    .local v0, "vc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V

    .line 746
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V

    .line 739
    return-void
.end method

.method public setRtreConfig(S)V
    .locals 4
    .param p1, "rtreCfg"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 647
    const-string/jumbo v1, "setRtreConfig()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 649
    if-gez p1, :cond_0

    .line 650
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 653
    :cond_0
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    .line 654
    .local v0, "o":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const v2, 0x81006

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    .line 646
    return-void
.end method

.method public setSecCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 855
    return-void
.end method

.method public setSecondaryCdmaChannels([I)V
    .locals 1
    .param p1, "secondaryChannels"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setSecondaryCdmaChannels([IS)V

    .line 615
    return-void
.end method

.method public setSecondaryCdmaChannels([IS)V
    .locals 4
    .param p1, "secondaryChannels"    # [I
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 602
    const-string/jumbo v2, "setSecondaryCdmaChannels()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 603
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 604
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 606
    :cond_1
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v1

    .line 607
    .local v1, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    move-result-object v0

    .line 608
    .local v0, "cdmaChannels":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->setPrimaryChannelA(I)V

    .line 609
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->setPrimaryChannelB(I)V

    .line 610
    invoke-virtual {v1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V

    .line 611
    invoke-virtual {p0, v1, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 601
    return-void
.end method

.method public setSpcChangeEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "spcChangeEnabled"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 817
    return-void
.end method

.method public setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;)V
    .locals 1
    .param p1, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;S)V

    .line 417
    return-void
.end method

.method public setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;S)V
    .locals 2
    .param p1, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 408
    const-string/jumbo v1, "setTrueImsi()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 409
    if-nez p1, :cond_0

    .line 410
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 412
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 413
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;)V

    .line 414
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 407
    return-void
.end method

.method public setTrueImsi11_12(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsiT11_12"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setTrueImsi11_12(Ljava/lang/String;S)V

    .line 498
    return-void
.end method

.method public setTrueImsi11_12(Ljava/lang/String;S)V
    .locals 3
    .param p1, "imsiT11_12"    # Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 487
    const-string/jumbo v2, "setTrueImsi11_12()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 488
    if-nez p1, :cond_0

    .line 489
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 491
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 492
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    .line 493
    .local v1, "trueImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->setImsi11_12(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;)V

    .line 495
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 486
    return-void
.end method

.method public setTrueImsiAddrNum(S)V
    .locals 1
    .param p1, "imsiTAddrNum"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setTrueImsiAddrNum(SS)V

    .line 523
    return-void
.end method

.method public setTrueImsiAddrNum(SS)V
    .locals 3
    .param p1, "imsiTAddrNum"    # S
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 514
    const-string/jumbo v2, "setTrueImsiAddrNum()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 516
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    .line 517
    .local v1, "trueImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->setImsiAddrNum(S)V

    .line 518
    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;)V

    .line 519
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 513
    return-void
.end method

.method public setTrueImsiMcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsiTMcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setTrueImsiMcc(Ljava/lang/String;S)V

    .line 471
    return-void
.end method

.method public setTrueImsiMcc(Ljava/lang/String;S)V
    .locals 3
    .param p1, "imsiTMcc"    # Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 460
    const-string/jumbo v2, "setTrueImsiMcc()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 461
    if-nez p1, :cond_0

    .line 462
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 464
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 465
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    .line 466
    .local v1, "trueImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->setMcc(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;)V

    .line 468
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;S)V

    .line 459
    return-void
.end method

.method public setTrueImsiNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "phNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->setTrueImsiNumber(Ljava/lang/String;S)V

    .line 444
    return-void
.end method

.method public setTrueImsiNumber(Ljava/lang/String;S)V
    .locals 3
    .param p1, "phNumber"    # Ljava/lang/String;
    .param p2, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 433
    const-string/jumbo v2, "setTrueImsiNumber()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 437
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItems;->get3gpp2SubscriptionInfo(S)Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    move-result-object v0

    .line 438
    .local v0, "info":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v1

    .line 439
    .local v1, "trueImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsiNumber(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;)V

    .line 441
    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;)V

    .line 432
    return-void
.end method

.method public setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V
    .locals 4
    .param p1, "voiceConfig"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 676
    const-string/jumbo v0, "setVoiceConfig()"

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getTypes()[S

    move-result-object v1

    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v2

    const v3, 0x8100d

    invoke-virtual {v0, v3, v1, v2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    .line 675
    return-void
.end method

.method public updateAkey(Ljava/lang/String;)V
    .locals 4
    .param p1, "akey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 63
    const-string/jumbo v1, "updateAkey()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItems;->vLog(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "o":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItems;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const v2, 0x81000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    .line 62
    return-void
.end method

.method public updateSpCode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    return-void
.end method
