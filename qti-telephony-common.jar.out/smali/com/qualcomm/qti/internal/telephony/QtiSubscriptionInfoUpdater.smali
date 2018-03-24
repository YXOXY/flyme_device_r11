.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
.super Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.source "QtiSubscriptionInfoUpdater.java"


# static fields
.field private static final DELAY_COUNT:I = 0x5

.field private static final EVENT_ADD_SUBINFO_RECORD:I = 0x64

.field public static final EVENT_SIM_READ_DELAY:I = 0x1e

.field private static final EVENT_UPDATE_NV_RECORD:I = 0x65

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "DUMMY_NV_ID"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionInfoUpdater"

.field private static final mNumPhones:I

.field private static mQtiPhone:[Lcom/android/internal/telephony/Phone;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;


# instance fields
.field private isNVSubAvailable:Z

.field private mDelayCount:I

.field private mIsRecordUpdateRequired:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 76
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    .line 88
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 61
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 73
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mDelayCount:I

    .line 87
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    .line 112
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aput-boolean v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    sput-object p2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mQtiPhone:[Lcom/android/internal/telephony/Phone;

    .line 119
    const-string/jumbo v1, "ro.oppo.version"

    const-string/jumbo v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->init(Landroid/content/Context;)V

    .line 110
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-object v0
.end method

.method private declared-synchronized handleAddSubInfoRecordEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 202
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 202
    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Record already exists ignore duplicate update, existing IccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    const-string/jumbo v2, " recvd iccId["

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    const-string/jumbo v2, "] = "

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 207
    return-void

    .line 210
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_4

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 227
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mDelayCount:I

    .line 230
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 232
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 194
    return-void

    .line 217
    :cond_4
    :try_start_2
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDelayCount:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mDelayCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] for slot:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mDelayCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 220
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mDelayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mDelayCount:I

    .line 221
    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the iccid is not clear for slot:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "],so delay 500ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 223
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 92
    const-class v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    .line 98
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 96
    :cond_0
    :try_start_1
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setOperatorConf(Ljava/lang/String;)V
    .locals 10
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->isFirstInsertSim()Z

    move-result v6

    if-nez v6, :cond_0

    .line 297
    const-string/jumbo v6, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v7, "setOperatorConf, not first insert simcard!!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 301
    :cond_0
    const/4 v2, 0x0

    .line 302
    .local v2, "isSpecOperator":Z
    const/4 v1, 0x0

    .line 303
    .local v1, "isInsertSim":Z
    const/4 v5, 0x0

    .local v5, "slot":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 304
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v6, v6, v5

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 305
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mQtiPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 306
    .local v4, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v3, 0x0

    .line 307
    .local v3, "operator":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 308
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .local v3, "operator":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 310
    .end local v3    # "operator":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x1e

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v6, v8, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    return-void

    .line 314
    .restart local v3    # "operator":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->setFirstInsertSimFlag(I)V

    .line 315
    const/4 v1, 0x1

    .line 317
    const-string/jumbo v6, "QtiSubscriptionInfoUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setOperatorConf, slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " operator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {v3, v5, p1}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->oppoIsSpecOperator(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 319
    const/4 v2, 0x1

    .line 325
    .end local v3    # "operator":Ljava/lang/String;
    .end local v4    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    const-string/jumbo v6, "com.oppo.sim_plug_in"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "hotStatus":Ljava/lang/String;
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    const-string/jumbo v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 327
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->oppoBroadCastDelayHotswap()V

    .line 295
    :cond_4
    return-void

    .line 303
    .end local v0    # "hotStatus":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method addSubInfoRecord(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 186
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-lt p1, v0, :cond_1

    .line 187
    :cond_0
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addSubInfoRecord, invalid input IccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_1
    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    const-string/jumbo v4, "QtiSubscriptionInfoUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " handleMessage: EVENT:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 156
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 130
    :sswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 134
    :sswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleUpdateNVRecord(I)V

    goto :goto_0

    .line 138
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 139
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 140
    .local v3, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    iget v2, v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    .line 141
    .local v2, "slotId":I
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, ""

    if-ne v4, v5, :cond_2

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 144
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 149
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "slotId":I
    .end local v3    # "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    :sswitch_3
    const-string/jumbo v4, "ro.oppo.operator"

    const-string/jumbo v5, "OPPO"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "operatorVersion":Ljava/lang/String;
    const-string/jumbo v4, "SGOP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "NZOP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    :cond_3
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->setOperatorConf(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x1e -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method protected handleSimAbsentOrError(ILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v0, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_2

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 255
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsentOrError(ILjava/lang/String;)V

    .line 246
    return-void
.end method

.method protected handleSimLoaded(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 239
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 242
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    .line 238
    return-void
.end method

.method public handleUpdateNVRecord(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 170
    const-string/jumbo v1, "DUMMY_NV_ID"

    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 174
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v1, p1, v4, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "subInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateNVRecord, active IccID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DUMMY_NV_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string/jumbo v1, "ABSENT"

    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleSimAbsentOrError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateNVRecord(ZI)V
    .locals 3
    .param p1, "isNVReady"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 162
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNVRecord, isNVReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 164
    const/16 v0, 0x65

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "isUpdateRequired":Z
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    :try_start_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    .line 263
    const/4 v1, 0x1

    .line 268
    :cond_0
    if-eqz v1, :cond_6

    .line 269
    invoke-super {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 270
    const-string/jumbo v3, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v4, "SIM state changed, Updating user preference "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 279
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v3, :cond_3

    .line 280
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_3
    const-string/jumbo v3, "ro.oppo.operator"

    const-string/jumbo v4, "OPPO"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "operatorVersion":Ljava/lang/String;
    const-string/jumbo v3, "SGOP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "NZOP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 286
    :cond_4
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->setOperatorConf(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "operatorVersion":Ljava/lang/String;
    :cond_5
    :goto_2
    monitor-exit p0

    .line 259
    return-void

    .line 290
    :cond_6
    :try_start_1
    const-string/jumbo v3, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v4, "Ignoring subscription update event"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
