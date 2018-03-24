.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
.super Lcom/android/internal/telephony/SubscriptionController;
.source "QtiSubscriptionController.java"


# static fields
.field private static final ACTION_SUBSCRIPTION_RECORD_ADDED:Ljava/lang/String; = "org.codeaurora.intent.action.SUBSCRIPTION_INFO_RECORD_ADDED"

.field private static final APM_SIM_NOT_PWDN_PROPERTY:Ljava/lang/String; = "persist.radio.apm_sim_not_pwdn"

.field private static final DUMMY_SUB_ID_BASE:I = 0x7ffffffb

.field static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionController"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static final SETTING_USER_PREF_DATA_SUB:Ljava/lang/String; = "user_preferred_data_sub"

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sNumPhones:I


# instance fields
.field private mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    .line 113
    const-string/jumbo v0, " init by Context"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mDefaultPhoneId:I

    .line 116
    const v0, 0x7ffffffb

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mDefaultFallbackSubId:I

    .line 117
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 118
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    return-void
.end method

.method private clearVoiceSubId()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[clearVoiceSubId] records: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string/jumbo v1, "[clearVoiceSubId] clear voice sub id"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 127
    const v1, 0x7ffffffb

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 105
    const-string/jumbo v0, "QtiSubscriptionController"

    const-string/jumbo v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    return-object v0
.end method

.method private getPhoneIdFromDummySubId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 177
    const v0, 0x7ffffffb

    sub-int v0, p1, v0

    return v0
.end method

.method private getUiccProvisionStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 474
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 475
    .local v0, "uiccCardProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    return v1

    .line 478
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private getUserPrefDataSubIdFromDB()I
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 561
    const-string/jumbo v1, "user_preferred_data_sub"

    const/4 v2, -0x1

    .line 560
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDataPreference(I)V
    .locals 9
    .param p1, "nextActiveSubId"    # I

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUserPrefDataSubIdFromDB()I

    move-result v5

    .line 442
    .local v5, "userPrefDataSubId":I
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 445
    .local v0, "currentDataSubId":I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 446
    .local v4, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v4, :cond_0

    .line 447
    return-void

    .line 449
    :cond_0
    const/4 v6, 0x0

    .line 450
    .local v6, "userPrefSubValid":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 451
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 452
    const/4 v6, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "havePrefSub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " user pref subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 456
    const-string/jumbo v8, " current dds "

    .line 455
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 457
    const-string/jumbo v8, " next active subId "

    .line 455
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 460
    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 461
    if-eq v0, v5, :cond_4

    .line 462
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 469
    :cond_3
    :goto_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    .line 470
    .local v1, "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setDdsIfRequired(Z)V

    .line 440
    return-void

    .line 463
    .end local v1    # "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    :cond_4
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 464
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 91
    const-class v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 94
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 95
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sNumPhones:I

    .line 99
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :cond_0
    :try_start_1
    const-string/jumbo v0, "QtiSubscriptionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isNonSimAccountFound()Z
    .locals 5

    .prologue
    .line 529
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 531
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 533
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 534
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    .line 535
    const/4 v4, -0x1

    .line 534
    if-ne v3, v4, :cond_0

    .line 536
    const-string/jumbo v3, "Other than SIM account found. "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 537
    const/4 v3, 0x1

    return v3

    .line 540
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const-string/jumbo v3, "Other than SIM account not found "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 541
    const/4 v3, 0x0

    return v3
.end method

.method private isRadioAvailableOnAllSubs()Z
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sNumPhones:I

    if-ge v0, v1, :cond_2

    .line 314
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 316
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private isShuttingDown()Z
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sNumPhones:I

    if-ge v0, v1, :cond_1

    .line 321
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isSubProvisioned(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 485
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    .line 487
    .local v0, "isSubIdUsable":Z
    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSlotId(I)I

    move-result v1

    .line 489
    .local v1, "slotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7ffffffb

    if-lt p1, v2, :cond_2

    .line 490
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x0

    .line 499
    .end local v0    # "isSubIdUsable":Z
    .end local v1    # "slotId":I
    :cond_1
    :goto_0
    return v0

    .line 493
    .restart local v0    # "isSubIdUsable":Z
    .restart local v1    # "slotId":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 494
    const/4 v0, 0x0

    .line 496
    .end local v0    # "isSubIdUsable":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSubProvisioned, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 565
    const-string/jumbo v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 573
    const-string/jumbo v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 569
    const-string/jumbo v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 546
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 548
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 549
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 550
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 551
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 552
    return-object v1

    .line 556
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public addSubInfoRecord(Ljava/lang/String;I)I
    .locals 8
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->addSubInfoRecord(Ljava/lang/String;I)I

    move-result v1

    .line 222
    .local v1, "retVal":I
    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 223
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addSubInfoRecord: broadcast intent subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    .line 227
    new-instance v4, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v7, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 226
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.intent.action.SUBSCRIPTION_INFO_RECORD_ADDED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    aget v3, v2, v6

    invoke-static {v0, p2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 230
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 5

    .prologue
    .line 258
    const-string/jumbo v3, "clearDefaultsForInactiveSubIds"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 264
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 265
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[clearDefaultsForInactiveSubIds] records: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 268
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default sms sub id"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 272
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default voice sub id"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 276
    const v3, 0x7ffffffb

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    return-void

    .line 278
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    .line 279
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    throw v3
.end method

.method protected getDummySubIds(I)[I
    .locals 4
    .param p1, "slotIdx"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubInfoCountMax()I

    move-result v2

    .line 184
    .local v2, "numSubs":I
    if-lez v2, :cond_1

    .line 185
    new-array v0, v2, [I

    .line 186
    .local v0, "dummyValues":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 187
    const v3, 0x7ffffffb

    add-int/2addr v3, p1

    aput v3, v0, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-object v0

    .line 195
    .end local v0    # "dummyValues":[I
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 155
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[getPhoneId] asked for default subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const-string/jumbo v0, "[getPhoneId]- invalid subId return=-1"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 165
    const/4 v0, -0x1

    return v0

    .line 168
    :cond_1
    const v0, 0x7ffffffb

    if-lt p1, v0, :cond_2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPhoneId, received dummy subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneIdFromDummySubId(I)I

    move-result v0

    return v0

    .line 173
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getSlotId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 135
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 138
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    const-string/jumbo v0, "[getSlotId]- subId invalid"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 140
    const/4 v0, -0x1

    return v0

    .line 143
    :cond_1
    const v0, 0x7ffffffb

    if-lt p1, v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPhoneId, received dummy subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneIdFromDummySubId(I)I

    move-result v0

    return v0

    .line 147
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public isRadioInValidState()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    const-string/jumbo v2, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    .line 328
    .local v1, "isApmSimNotPwrDown":Z
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 329
    const-string/jumbo v3, "airplane_mode_on"

    .line 328
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 332
    .local v0, "isAPMOn":I
    if-ne v0, v5, :cond_0

    if-eqz v1, :cond_2

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioAvailableOnAllSubs()Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    const-string/jumbo v2, " isRadioInValidState, radio not available"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 341
    return v4

    .line 327
    .end local v0    # "isAPMOn":I
    .end local v1    # "isApmSimNotPwrDown":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isApmSimNotPwrDown":Z
    goto :goto_0

    .line 333
    .restart local v0    # "isAPMOn":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRadioInValidState, isApmSimNotPwrDown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    const-string/jumbo v3, ", isAPMOn:"

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 335
    return v4

    .line 345
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    const-string/jumbo v2, " isRadioInValidState: device shutdown in progress "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 347
    return v4

    .line 349
    :cond_4
    return v5
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 507
    .local v2, "value":I
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 508
    const-string/jumbo v4, "multi_sim_sms_prompt"

    .line 507
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 512
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 515
    :goto_1
    return v0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public registerForAddSubscriptionRecord(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 200
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    .local v0, "r":Landroid/os/Registrant;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    monitor-enter v3

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 204
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 199
    return-void

    .line 201
    .end local v1    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDefaultDataSubId(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 237
    const-string/jumbo v2, "setDefaultDataSubId"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v2, "persist.radio.flexmap_type"

    const-string/jumbo v3, "nw_mode"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "flexMapSupportType":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "dds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    .line 247
    .local v1, "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isBothPhonesMappedToSameStack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->initNormalMappingRequest()Z

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setDefaultDataSubId init normal mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 253
    .end local v1    # "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 236
    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 520
    const-string/jumbo v1, "setSMSPromptEnabled"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 521
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 522
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 523
    const-string/jumbo v2, "multi_sim_sms_prompt"

    .line 522
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSMSPromptOption to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 519
    return-void

    .line 521
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method protected shouldDefaultBeCleared(Ljava/util/List;I)Z
    .locals 8
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 288
    return v7

    .line 290
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 293
    return v6

    .line 295
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 296
    .local v1, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 297
    .local v0, "id":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] Record.id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 298
    if-ne v0, p2, :cond_2

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 300
    return v6

    .line 303
    .end local v0    # "id":I
    .end local v1    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSlotId(I)I

    move-result v3

    .line 304
    .local v3, "slotId":I
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return false subId is provisioned, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 306
    return v6

    .line 308
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 309
    return v7
.end method

.method public unregisterForAddSubscriptionRecord(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 211
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method declared-synchronized updateUserPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    monitor-enter p0

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    const/4 v0, 0x0

    .line 360
    .local v0, "activeCount":I
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioInValidState()Z

    move-result v7

    if-nez v7, :cond_0

    .line 361
    const-string/jumbo v7, "Radio is in Invalid state, Ignore Updating User Preference!!!"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 362
    return-void

    .line 364
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 367
    .local v3, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v9, :cond_2

    .line 368
    :cond_1
    const-string/jumbo v7, "updateUserPreferences: Subscription list is empty"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->clearVoiceSubId()V

    .line 372
    const v7, 0x7ffffffb

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultFallbackSubId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 373
    return-void

    .line 378
    :cond_2
    :try_start_2
    const-string/jumbo v7, "persist.radio.aosp_usr_pref_sel"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 379
    const-string/jumbo v7, "updateUserPreferences: AOSP user preference option enabled "

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 380
    return-void

    .line 384
    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v1    # "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    .local v6, "subInfo$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 385
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 386
    add-int/lit8 v0, v0, 0x1

    .line 387
    if-nez v1, :cond_4

    move-object v1, v5

    .local v1, "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    .line 390
    .end local v1    # "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateUserPreferences:: active sub count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " dds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 391
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v8

    .line 390
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 391
    const-string/jumbo v8, " voice = "

    .line 390
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 391
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v8

    .line 390
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 392
    const-string/jumbo v8, " sms = "

    .line 390
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 392
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v8

    .line 390
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 396
    if-ne v0, v9, :cond_6

    .line 397
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 403
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubInfoCountMax()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-ne v7, v9, :cond_8

    :cond_7
    monitor-exit p0

    return-void

    .line 413
    :cond_8
    :try_start_4
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 414
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 416
    :cond_9
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 417
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 425
    :cond_a
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isNonSimAccountFound()Z

    move-result v7

    if-nez v7, :cond_b

    if-ne v0, v9, :cond_b

    .line 426
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 427
    .local v4, "subId":I
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 428
    .local v2, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set default phoneaccount to  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 429
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v7, v2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 431
    .end local v2    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "subId":I
    :cond_b
    sget v7, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mDefaultFallbackSubId:I

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 432
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultFallbackSubId(I)V

    .line 435
    :cond_c
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->notifySubscriptionInfoChanged()V

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateUserPreferences: after currentDds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " voice = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 437
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v8

    .line 436
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 437
    const-string/jumbo v8, " sms = "

    .line 436
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 437
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v8

    .line 436
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 357
    return-void

    .end local v3    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v6    # "subInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
