.class public Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;
.super Ljava/lang/Object;
.source "ExpOperatorSwitchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils$1;,
        Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils$2;
    }
.end annotation


# static fields
.field private static final EVENT_NOTIFY_OPERATOR_CHANGED_DELAY_TIME:I = 0x7d0

.field private static final EVENT_NOTIFY_OPERATOR_CHANGED_WAIT:I = 0x64

.field private static IS_OPPO_HW_MTK:Z = false

.field private static IS_OPPO_HW_QCOM:Z = false

.field private static final MTK_COMMONSOFT_FLAG_BACKUP_PATH:Ljava/lang/String; = "/data/nvram/APCFG/APRDEB/CARRIER_VER"

.field private static final MTK_PARTITION_PATH_OPERATOR_SWITCH:Ljava/lang/String; = "/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/reserve_exp1"

.field private static final OPERATOR_SWITCH_OFFSET:J = 0x0L

.field private static final QCOM_PARTITION_PATH_OPERATOR_SWITCH:Ljava/lang/String; = "/dev/block/bootdevice/by-name/reserve_exp1"

.field private static final RW_RETRY_TIMES:I = 0x3

.field private static final SIM_FIRST_INSERT_FLAG:Ljava/lang/String; = "sim_first_insert_flag"

.field private static final TAG:Ljava/lang/String; = "ExpOperatorSwitchUtils"

.field private static mContext:Landroid/content/Context; = null

.field private static mHaswriteOperatorSwitch:Z = false

.field private static mInWelcomePage:Landroid/database/ContentObserver; = null

.field private static mOperatorHandler:Landroid/os/Handler; = null

.field private static mOperatorSwitchComplete:Z = false

.field private static mQcNvItems:Lcom/qualcomm/qcnvitems/QcNvItems; = null

.field private static nameIndex:I = 0x0

.field private static nvIndex:I = 0x0

.field private static opIndex:I = 0x0

.field private static final operatorNV:Ljava/lang/String; = "00000000"

.field private static operatorSwitchInfo:[[Ljava/lang/String;

.field private static sIndex:I

.field private static simCodeIndex:I

.field private static versionIndex:I


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mOperatorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0()I
    .locals 1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->getOperatorIndexValue()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->oppoHandlerChangeOperator(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mQcNvItems:Lcom/qualcomm/qcnvitems/QcNvItems;

    .line 61
    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_MTK:Z

    .line 62
    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_QCOM:Z

    .line 63
    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mOperatorSwitchComplete:Z

    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->sIndex:I

    .line 77
    sput v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->opIndex:I

    .line 78
    sput v4, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->simCodeIndex:I

    .line 79
    sput v5, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->nameIndex:I

    .line 80
    sput v6, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->nvIndex:I

    .line 81
    sput v7, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->versionIndex:I

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    .line 83
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "SGOP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "52501"

    aput-object v2, v1, v4

    const-string/jumbo v2, "Singtel"

    aput-object v2, v1, v5

    const-string/jumbo v2, "00100100"

    aput-object v2, v1, v6

    const-string/jumbo v2, "SINGTEL"

    aput-object v2, v1, v7

    aput-object v1, v0, v3

    .line 84
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "SGOP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "52505"

    aput-object v2, v1, v4

    const-string/jumbo v2, "Starhub"

    aput-object v2, v1, v5

    const-string/jumbo v2, "00100101"

    aput-object v2, v1, v6

    const-string/jumbo v2, "STARHUB"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    .line 85
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "SGOP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "52503"

    aput-object v2, v1, v4

    const-string/jumbo v2, "M1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "00100110"

    aput-object v2, v1, v6

    const-string/jumbo v2, "M1"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    .line 86
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "NZOP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "53024"

    aput-object v2, v1, v4

    const-string/jumbo v2, "2Degrees"

    aput-object v2, v1, v5

    const-string/jumbo v2, "00101001"

    aput-object v2, v1, v6

    const-string/jumbo v2, "2DEGREES"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    .line 87
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "NZOP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "53005"

    aput-object v2, v1, v4

    const-string/jumbo v2, "Spark"

    aput-object v2, v1, v5

    const-string/jumbo v2, "00101010"

    aput-object v2, v1, v6

    const-string/jumbo v2, "SPARK"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    .line 82
    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    .line 450
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mInWelcomePage:Landroid/database/ContentObserver;

    .line 462
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils$2;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils$2;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mOperatorHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_MTK:Z

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/reserve_exp1"

    return-object v0

    .line 150
    :cond_0
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_QCOM:Z

    if-eqz v0, :cond_1

    .line 151
    const-string/jumbo v0, "/dev/block/bootdevice/by-name/reserve_exp1"

    return-object v0

    .line 153
    :cond_1
    const-string/jumbo v0, "/dev/block/bootdevice/by-name/reserve_exp1"

    return-object v0
.end method

.method private static getOperatorIndexValue()I
    .locals 1

    .prologue
    .line 480
    sget v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->sIndex:I

    return v0
.end method

.method private static getOperatorVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->readPartitionValues(J)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "operatorPartition":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 102
    .local v0, "operatorNVRAM":Ljava/lang/String;
    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_MTK:Z

    if-eqz v2, :cond_1

    .line 103
    const-string/jumbo v2, "/data/nvram/APCFG/APRDEB/CARRIER_VER"

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->readOperatorSwitchMTKNV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    :goto_0
    const-string/jumbo v2, "ExpOperatorSwitchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOperatoVersion,operatorPartition=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",operatorNVRAM=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v0

    .line 104
    :cond_1
    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_QCOM:Z

    if-eqz v2, :cond_0

    .line 105
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->readOperatorSwitchQCNV()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    .line 92
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->isBasedOnMtk(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_MTK:Z

    .line 94
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->isBasedOnQcom(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_QCOM:Z

    .line 95
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItems;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mQcNvItems:Lcom/qualcomm/qcnvitems/QcNvItems;

    .line 90
    :cond_0
    return-void
.end method

.method public static isBasedOnMtk(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBasedOnQcom(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oppo.hw.manufacturer.qualcomm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isBootWizardCompleted()Z
    .locals 4

    .prologue
    .line 444
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 445
    const-string/jumbo v2, "device_provisioned"

    const/4 v3, 0x0

    .line 444
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 445
    const/4 v2, 0x1

    .line 444
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 446
    .local v0, "isBootWizardCompleted":Z
    :goto_0
    const-string/jumbo v1, "ExpOperatorSwitchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBootWizardCompleted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v0

    .line 444
    .end local v0    # "isBootWizardCompleted":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isBootWizardCompleted":Z
    goto :goto_0
.end method

.method public static isFirstInsertSim()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 343
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sim_first_insert_flag"

    .line 342
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 344
    .local v0, "hasSet":I
    if-eqz v0, :cond_0

    .line 345
    return v3

    .line 347
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static notifyOpVersionChange(II)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "slot"    # I

    .prologue
    .line 423
    const-string/jumbo v0, "ro.oppo.operator"

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    aget-object v1, v1, p0

    sget v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->versionIndex:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->oppoSetDataRoamingEnabled(II)V

    .line 426
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->oppoHandlerChangeOperator(I)V

    .line 422
    return-void
.end method

.method private static oppoBroadCastChangeOperator(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 387
    const-string/jumbo v1, "ExpOperatorSwitchUtils"

    const-string/jumbo v2, "oppoBroadCastChangeOperator"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oppo.intent.action.CHANGE_OPERATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    if-ltz p1, :cond_0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 391
    const-string/jumbo v1, "operatorname"

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    aget-object v2, v2, p1

    sget v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->nameIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string/jumbo v1, "operatorcode"

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    aget-object v2, v2, p1

    sget v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->simCodeIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string/jumbo v1, "switchreboot"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    :goto_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->resetOperatorIndexValue()V

    .line 386
    return-void

    .line 396
    :cond_0
    const-string/jumbo v1, "ExpOperatorSwitchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oppoBroadCastChangeOperator,index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static oppoBroadCastDelayHotswap()V
    .locals 3

    .prologue
    .line 401
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.commcenter.reboot.dialog"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    const-string/jumbo v1, "ExpOperatorSwitchUtils"

    const-string/jumbo v2, "oppoBroadCastDelayHotswap,needn\'t show reboot dialog"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 405
    :cond_0
    const-string/jumbo v1, "ExpOperatorSwitchUtils"

    const-string/jumbo v2, "oppoBroadCastDelayHotswap"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oppo.intent.action.HOT_SWAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "operatorname"

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string/jumbo v1, "operatorcode"

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string/jumbo v1, "switchreboot"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method private static oppoHandlerChangeOperator(I)V
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 430
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->isBootWizardCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->oppoBroadCastChangeOperator(Landroid/content/Context;I)V

    .line 429
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->oppoRegisterBootWizard(I)V

    goto :goto_0
.end method

.method public static oppoIsSpecOperator(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p0, "simCode"    # Ljava/lang/String;
    .param p1, "slot"    # I
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 354
    const/4 v2, 0x0

    .line 355
    .local v2, "isNeedChange":Z
    const/4 v1, -0x1

    .line 356
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 357
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    aget-object v3, v3, v0

    sget v4, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->opIndex:I

    aget-object v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    aget-object v3, v3, v0

    sget v4, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->simCodeIndex:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    const/4 v2, 0x1

    .line 360
    move v1, v0

    .line 365
    :cond_0
    const-string/jumbo v3, "ExpOperatorSwitchUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oppoIsSpecOperator,isNeedChange=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",index=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz v2, :cond_3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 367
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    aget-object v3, v3, v1

    sget v4, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->nvIndex:I

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->setOperatorVersion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    sput-boolean v7, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mOperatorSwitchComplete:Z

    .line 373
    :goto_1
    const-string/jumbo v3, "ExpOperatorSwitchUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oppoIsSpecOperator,mOperatorSwitchComplete ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mOperatorSwitchComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mOperatorSwitchComplete:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->getOperatorVersion()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    aget-object v4, v4, v1

    sget v5, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->nvIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->setOperatorIndexValue(I)V

    .line 377
    invoke-static {v1, p1}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->notifyOpVersionChange(II)V

    .line 378
    const-string/jumbo v3, "ExpOperatorSwitchUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oppoIsSpecOperator, set slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "NVRAM and Partition to modem complete!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v7

    .line 356
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 370
    :cond_2
    sput-boolean v6, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mOperatorSwitchComplete:Z

    goto :goto_1

    .line 382
    :cond_3
    return v6
.end method

.method private static oppoRegisterBootWizard(I)V
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 438
    const-string/jumbo v0, "ExpOperatorSwitchUtils"

    const-string/jumbo v1, "bootreg welcomepage showing, no need show sim changed dialog"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 440
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mInWelcomePage:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 439
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 437
    return-void
.end method

.method private static oppoSetDataRoamingEnabled(II)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "slot"    # I

    .prologue
    .line 414
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->operatorSwitchInfo:[[Ljava/lang/String;

    aget-object v1, v1, p0

    sget v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->simCodeIndex:I

    aget-object v1, v1, v2

    const-string/jumbo v2, "53024"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    .line 416
    .local v0, "colorOSTelephonyManager":Landroid/telephony/ColorOSTelephonyManager;
    if-eqz v0, :cond_0

    .line 417
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ColorOSTelephonyManager;->colorSetDataRoamingEnabled(IZ)V

    .line 419
    :cond_0
    const-string/jumbo v1, "ExpOperatorSwitchUtils"

    const-string/jumbo v2, "colorSetDataRoamingEnabled is true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v0    # "colorOSTelephonyManager":Landroid/telephony/ColorOSTelephonyManager;
    :cond_1
    return-void
.end method

.method private static readOperatorSwitchMTKNV(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "res":[B
    const/4 v0, 0x0

    .line 266
    .local v0, "operatorNVRAM":Ljava/lang/String;
    const-string/jumbo v2, "ExpOperatorSwitchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readOperatorSwitchMTKNV,operatorNVRAM=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v0
.end method

.method private static readOperatorSwitchQCNV()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, "operatorNVRAM":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "ExpOperatorSwitchUtils"

    const-string/jumbo v3, "readOperatorSwitchQCNV"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mQcNvItems:Lcom/qualcomm/qcnvitems/QcNvItems;

    invoke-virtual {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->getCarrierVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 323
    .end local v1    # "operatorNVRAM":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 324
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "operatorNVRAM":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "ExpOperatorSwitchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readOperatorSwitchQCNV,operatorNVRAM=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v1

    .line 320
    .local v1, "operatorNVRAM":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ExpOperatorSwitchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readOperatorSwitchQCNV IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readPartitionValues(J)Ljava/lang/String;
    .locals 14
    .param p0, "offSet"    # J

    .prologue
    .line 198
    const-string/jumbo v10, "00000000"

    .line 199
    .local v10, "version":Ljava/lang/String;
    const/4 v8, -0x1

    .line 200
    .local v8, "result":I
    const/16 v11, 0x9

    new-array v0, v11, [B

    .line 201
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 202
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 203
    .local v5, "lock":Ljava/nio/channels/FileLock;
    const/4 v6, 0x0

    .line 205
    .local v6, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, "file":Ljava/io/File;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/io/File;->setReadable(Z)Z

    move-result v9

    .line 208
    .local v9, "setReadable":Z
    const-string/jumbo v11, "ExpOperatorSwitchUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readPartitionValues setReadable "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v11, "rw"

    invoke-direct {v7, v3, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .local v7, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    move-result-object v4

    .line 212
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v5

    .line 213
    .local v5, "lock":Ljava/nio/channels/FileLock;
    invoke-virtual {v7, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 214
    long-to-int v11, p0

    const-string/jumbo v12, "00000000"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7, v0, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    .line 219
    if-eqz v5, :cond_0

    .line 220
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V

    .line 223
    :cond_0
    if-eqz v4, :cond_1

    .line 224
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 227
    :cond_1
    if-eqz v7, :cond_2

    .line 228
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v6, v7

    .line 234
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v5    # "lock":Ljava/nio/channels/FileLock;
    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v9    # "setReadable":Z
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 235
    new-instance v10, Ljava/lang/String;

    .end local v10    # "version":Ljava/lang/String;
    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 237
    .restart local v10    # "version":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x8

    if-le v11, v12, :cond_5

    .line 238
    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 240
    :cond_5
    const-string/jumbo v11, "ExpOperatorSwitchUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readPartitionValues,result=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",version=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v10

    .line 230
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v5    # "lock":Ljava/nio/channels/FileLock;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "setReadable":Z
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v9    # "setReadable":Z
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    .local v5, "lock":Ljava/nio/channels/FileLock;
    .restart local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 216
    .end local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v5    # "lock":Ljava/nio/channels/FileLock;
    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v11, "ExpOperatorSwitchUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readData Exception e = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    if-eqz v5, :cond_6

    .line 220
    :try_start_4
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V

    .line 223
    :cond_6
    if-eqz v4, :cond_7

    .line 224
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 227
    :cond_7
    if-eqz v6, :cond_3

    .line 228
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 230
    :catch_2
    move-exception v1

    .line 231
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 219
    :goto_3
    if-eqz v5, :cond_8

    .line 220
    :try_start_5
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V

    .line 223
    :cond_8
    if-eqz v4, :cond_9

    .line 224
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 227
    :cond_9
    if-eqz v6, :cond_a

    .line 228
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 217
    :cond_a
    :goto_4
    throw v11

    .line 230
    :catch_3
    move-exception v1

    .line 231
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "setReadable":Z
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v6, "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 215
    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private static resetOperatorIndexValue()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->sIndex:I

    .line 483
    return-void
.end method

.method public static setFirstInsertSimFlag(I)V
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 350
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sim_first_insert_flag"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    return-void
.end method

.method private static setOperatorIndexValue(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 476
    sput p0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->sIndex:I

    .line 475
    return-void
.end method

.method public static setOperatorVersion(Ljava/lang/String;)Z
    .locals 2
    .param p0, "opVersion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->writeOperatorSwitchPartition(Ljava/lang/String;)V

    .line 115
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_MTK:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->writeOperatorSwitchMTKNV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    return v1

    .line 119
    :cond_0
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->IS_OPPO_HW_QCOM:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->writeOperatorSwitchQCNV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    return v1

    .line 124
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static writeCommSoftMTKNV(Ljava/lang/String;[B)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 312
    .local v0, "res":Z
    const-string/jumbo v1, "ExpOperatorSwitchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeCommSoftNVRAM,res=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v0
.end method

.method private static writeOperatorSwitchMTKNV(Ljava/lang/String;)Z
    .locals 7
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 270
    const-string/jumbo v3, "ExpOperatorSwitchUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOperatorVersion,operator=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-nez p0, :cond_0

    .line 272
    const-string/jumbo v3, "ExpOperatorSwitchUtils"

    const-string/jumbo v4, "value null setOperatorVersion fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v6

    .line 274
    :cond_0
    const/16 v3, 0x9

    new-array v0, v3, [B

    .line 275
    .local v0, "buff":[B
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 277
    .local v2, "temp":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 278
    aget-char v3, v2, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 279
    const-string/jumbo v3, "ExpOperatorSwitchUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "byte = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    aput-byte v6, v0, v3

    .line 282
    const-string/jumbo v3, "ExpOperatorSwitchUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string/jumbo v3, "/data/nvram/APCFG/APRDEB/CARRIER_VER"

    invoke-static {v3, v0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->writeCommSoftMTKNV(Ljava/lang/String;[B)Z

    move-result v3

    return v3
.end method

.method private static writeOperatorSwitchPartition(Ljava/lang/String;)V
    .locals 4
    .param p0, "opVersion"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x3

    .line 137
    .local v1, "retryTimes":I
    :goto_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->writePartitionValues(JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 139
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private static writeOperatorSwitchQCNV(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 332
    .local v1, "result":Z
    :try_start_0
    const-string/jumbo v2, "ExpOperatorSwitchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOperatorVersion,value=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->mQcNvItems:Lcom/qualcomm/qcnvitems/QcNvItems;

    invoke-virtual {v2, p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setCarrierVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    const/4 v1, 0x1

    .line 338
    :goto_0
    return v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ExpOperatorSwitchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOperatorVersion IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static writePartitionValues(JLjava/lang/String;)Z
    .locals 12
    .param p0, "offSet"    # J
    .param p2, "opVersion"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, "result":Z
    const/4 v3, 0x0

    .line 159
    .local v3, "fileChannel":Ljava/nio/channels/FileChannel;
    const/4 v4, 0x0

    .line 160
    .local v4, "lock":Ljava/nio/channels/FileLock;
    const/4 v5, 0x0

    .line 162
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "file":Ljava/io/File;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/File;->setWritable(Z)Z

    move-result v8

    .line 166
    .local v8, "setWritable":Z
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rw"

    invoke-direct {v6, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .local v6, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    move-result-object v3

    .line 168
    .local v3, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4

    .line 171
    .local v4, "lock":Ljava/nio/channels/FileLock;
    invoke-virtual {v6, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 172
    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v9, "ExpOperatorSwitchUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writePartitionValues "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", write opVersion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    const/4 v7, 0x1

    .line 179
    if-eqz v4, :cond_0

    .line 180
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    .line 183
    :cond_0
    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 187
    :cond_1
    if-eqz v6, :cond_2

    .line 188
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v5, v6

    .line 194
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "lock":Ljava/nio/channels/FileLock;
    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v8    # "setWritable":Z
    :cond_3
    :goto_1
    return v7

    .line 190
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "lock":Ljava/nio/channels/FileLock;
    .restart local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "setWritable":Z
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v8    # "setWritable":Z
    .local v3, "fileChannel":Ljava/nio/channels/FileChannel;
    .local v4, "lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 176
    .end local v3    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "lock":Ljava/nio/channels/FileLock;
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v9, "ExpOperatorSwitchUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeData Exception e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    if-eqz v4, :cond_4

    .line 180
    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    .line 183
    :cond_4
    if-eqz v3, :cond_5

    .line 184
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 187
    :cond_5
    if-eqz v5, :cond_3

    .line 188
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 190
    :catch_2
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 179
    :goto_3
    if-eqz v4, :cond_6

    .line 180
    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    .line 183
    :cond_6
    if-eqz v3, :cond_7

    .line 184
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 187
    :cond_7
    if-eqz v5, :cond_8

    .line 188
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 177
    :cond_8
    :goto_4
    throw v9

    .line 190
    :catch_3
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "setWritable":Z
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 175
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
