.class public Lcom/qualcomm/qcrilhook/QcRilHook;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/IQcRilHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/QcRilHook$1;,
        Lcom/qualcomm/qcrilhook/QcRilHook$2;
    }
.end annotation


# static fields
.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field private static final AVOIDANCE_BUFF_LEN:I = 0xa4

.field private static final BYTE_SIZE:I = 0x1

.field private static final DEFAULT_PHONE:I = 0x0

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "QC_RIL_OEM_HOOK"

.field private static final MAX_PDC_ID_LEN:I = 0x7c

.field private static final MAX_REQUEST_BUFFER_SIZE:I = 0x400

.field private static final MAX_SPC_LEN:I = 0x6

.field public static final QCRIL_MSG_TUNNEL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel"

.field public static final QCRIL_MSG_TUNNEL_SERVICE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

.field private static mRegistrants:Landroid/os/RegistrantList;


# instance fields
.field private final ENCODING:Ljava/lang/String;

.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private final mHeaderSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qcrilhook/QcRilHook;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1717
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "QOEMHOOK"

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 75
    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 81
    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 83
    const-string/jumbo v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->ENCODING:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1683
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$2;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 97
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 99
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcRilOemHook Service Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcRilOemHook Service Created Successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v3, "QOEMHOOK"

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 65
    const-string/jumbo v3, "QOEMHOOK"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 75
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 80
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 81
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 83
    const-string/jumbo v3, "ISO-8859-1"

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->ENCODING:Ljava/lang/String;

    .line 138
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1683
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook$2;

    invoke-direct {v3, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$2;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 114
    iput-object p2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 115
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    sput-object v3, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 117
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.qualcomm.qcrilmsgtunnel"

    const-string/jumbo v4, "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "Starting QcrilMsgTunnel Service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 125
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "The QcrilMsgTunnelService will be connected soon "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "Registering for intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Uncaught Exception while while registering ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW intent. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 230
    const-string/jumbo v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 228
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 213
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 215
    return-object v0
.end method

.method public static declared-synchronized notifyOnServiceConnect()V
    .locals 3

    .prologue
    const-class v1, Lcom/qualcomm/qcrilhook/QcRilHook;

    monitor-enter v1

    .line 1734
    :try_start_0
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v2, "Notifying registrants: OnServiceConnect"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1732
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyRegistrants(Landroid/os/AsyncResult;)V
    .locals 2
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1676
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1677
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1675
    :goto_0
    return-void

    .line 1679
    :cond_0
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcRilOemHook notifyRegistrants Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static register(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1639
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1640
    .local v0, "r":Landroid/os/Registrant;
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 1641
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1638
    return-void

    .line 1640
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static registerOnServiceConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1721
    const-string/jumbo v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOnServiceConnected, H:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1723
    .local v0, "r":Landroid/os/Registrant;
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1719
    return-void
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method private sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;
    .locals 11
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "phoneId"    # I

    .prologue
    const/4 v10, 0x0

    .line 253
    const/16 v7, 0x800

    new-array v4, v7, [B

    .line 255
    .local v4, "response":[B
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    iget-object v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v7, p2, v4, p3}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRaw([B[BI)I

    move-result v5

    .line 259
    .local v5, "retVal":I
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendOemRilRequestRaw returns value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-ltz v5, :cond_1

    .line 261
    const/4 v6, 0x0

    .line 263
    .local v6, "validResponseBytes":[B
    if-lez v5, :cond_0

    .line 264
    new-array v6, v5, [B

    .line 265
    .local v6, "validResponseBytes":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v6, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 267
    .end local v6    # "validResponseBytes":[B
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v7, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 290
    .end local v5    # "retVal":I
    .local v0, "ar":Landroid/os/AsyncResult;
    :goto_0
    return-object v0

    .line 274
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v5    # "retVal":I
    :cond_1
    array-length v7, v4

    new-array v6, v7, [B

    .line 275
    .restart local v6    # "validResponseBytes":[B
    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 276
    mul-int/lit8 v7, v5, -0x1

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 277
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p2, v6, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 284
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v5    # "retVal":I
    .end local v6    # "validResponseBytes":[B
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NullPointerException caught at sendOemRilRequestRaw.RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 286
    const-string/jumbo v9, ". Return Error"

    .line 285
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 279
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 280
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendOemRilRequestRaw RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 281
    const-string/jumbo v9, " exception, unable to send RIL request from this application"

    .line 280
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0
.end method

.method private sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/IOemHookCallback;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 303
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendRilOemHookMsgAsync: Outgoing Data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v2, p2, p3, p4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NullPointerException caught at sendOemRilRequestRawAsync.RequestID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 313
    const-string/jumbo v4, ". Throw to the caller"

    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    throw v1

    .line 308
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendOemRilRequestRawAsync RequestID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 310
    const-string/jumbo v4, " exception, unable to send RIL request from this application"

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unregister(Landroid/os/Handler;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 1646
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 1647
    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1645
    return-void

    .line 1646
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unregisterOnServiceConnected(Landroid/os/Handler;)V
    .locals 3
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 1728
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterOnServiceConnected, H:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1726
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 195
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    if-eqz v0, :cond_0

    .line 196
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "dispose(): Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 200
    :cond_0
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "dispose(): Unregistering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1672
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return-void
.end method

.method public oppo_dispose()V
    .locals 2

    .prologue
    .line 1739
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "[oppo] dispose of QcRilHook."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->dispose()V

    .line 1738
    return-void
.end method

.method public qcRilAbortNetworkScan(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const v5, 0x8005f

    .line 1211
    const/4 v3, 0x0

    .line 1212
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v4, [B

    .line 1214
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1216
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, v5, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1218
    invoke-direct {p0, v5, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1221
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1222
    const/4 v3, 0x1

    .line 1227
    :goto_0
    return v3

    .line 1224
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL cancel ongoing nw scan returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1225
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilActivateConfig(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilActivateConfig(II)Z

    move-result v0

    return v0
.end method

.method public qcRilActivateConfig(II)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .prologue
    const v4, 0x80032

    .line 656
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 657
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 658
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x5

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 659
    int-to-byte v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 660
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 662
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 663
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 664
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_ACT_CONFIGS failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 665
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 664
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v3, 0x0

    return v3

    .line 668
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public qcRilCdmaAvoidCurNwk()Z
    .locals 5

    .prologue
    .line 1113
    const/4 v1, 0x0

    .line 1114
    .local v1, "retval":Z
    const v2, 0x8000e

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1116
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1117
    const/4 v1, 0x1

    .line 1122
    :goto_0
    return v1

    .line 1119
    :cond_0
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL Avoid the current cdma network Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1120
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilCdmaClearAvoidanceList()Z
    .locals 5

    .prologue
    .line 1147
    const/4 v1, 0x0

    .line 1148
    .local v1, "retval":Z
    const v2, 0x8000f

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1150
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1151
    const/4 v1, 0x1

    .line 1156
    :goto_0
    return v1

    .line 1153
    :cond_0
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL Clear the cdma avoidance list Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1154
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilCdmaGetAvoidanceList()[B
    .locals 6

    .prologue
    .line 1160
    const/4 v2, 0x0

    .line 1161
    .local v2, "retval":[B
    const v3, 0x80010

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1163
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1164
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1169
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 1170
    .local v1, "result":[B
    array-length v3, v1

    const/16 v4, 0xa4

    if-ne v3, v4, :cond_0

    .line 1173
    move-object v2, v1

    .line 1187
    .end local v1    # "result":[B
    .end local v2    # "retval":[B
    :goto_0
    return-object v2

    .line 1175
    .restart local v1    # "result":[B
    .restart local v2    # "retval":[B
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL Get unexpected cdma avoidance list buffer length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1176
    array-length v5, v1

    .line 1175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1179
    .end local v1    # "result":[B
    :cond_1
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL Get cdma avoidance list command returned a null result."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1183
    :cond_2
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL Get the cdma avoidance list Command returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1184
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilCleanupConfigs()Z
    .locals 5

    .prologue
    .line 747
    const/4 v1, 0x0

    .line 748
    .local v1, "retval":Z
    const v2, 0x8001f

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 750
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 751
    const/4 v1, 0x1

    .line 757
    :goto_0
    return v1

    .line 753
    :cond_0
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL_EVT_HOOK_DELETE_ALL_CONFIGS failed w/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 754
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 753
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilDeactivateConfigs()Z
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilDeactivateConfigs(I)Z

    move-result v0

    return v0
.end method

.method public qcRilDeactivateConfigs(I)Z
    .locals 7
    .param p1, "mbnType"    # I

    .prologue
    const v5, 0x8002c

    .line 773
    const/4 v3, 0x0

    .line 774
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v1, v4, [B

    .line 775
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 777
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v2, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 778
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 780
    invoke-direct {p0, v5, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 782
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 783
    const/4 v3, 0x1

    .line 789
    :goto_0
    return v3

    .line 785
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_DEACT_CONFIGS failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 786
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 785
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetAllConfigs()Z
    .locals 4

    .prologue
    .line 730
    const v1, 0x80017

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 731
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 732
    const-string/jumbo v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS failed w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 733
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v1, 0x0

    return v1

    .line 736
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilGetAvailableConfigs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 718
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "qcRilGetAvailableConfigs is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x0

    return-object v0
.end method

.method public qcRilGetConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(II)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .prologue
    const v6, 0x80016

    const/4 v7, 0x0

    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 331
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 333
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x5

    invoke-direct {p0, v3, v6, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 334
    int-to-byte v5, p1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 337
    invoke-direct {p0, v6, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 339
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 340
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 341
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 340
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-object v4

    .line 345
    :cond_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 346
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ null result"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-object v4

    .line 352
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_CONFIG returned w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-object v4

    .line 353
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-object v7
.end method

.method public qcRilGetCsgId()I
    .locals 6

    .prologue
    .line 1065
    const/4 v1, -0x1

    .line 1066
    .local v1, "csgId":I
    const v3, 0x80018

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1067
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1068
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1069
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1070
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1071
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilGetCsgId: csg Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    .end local v2    # "response":[B
    :goto_0
    return v1

    .line 1073
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "qcRilGetCsgId: Null Response"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1076
    :cond_1
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilGetCsgId: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 838
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "mbnType"    # I

    .prologue
    const v8, 0x80021

    const/4 v7, 0x0

    .line 843
    const/4 v4, 0x0

    .line 844
    .local v4, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 846
    .local v3, "payload":[B
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7c

    if-gt v5, v6, :cond_2

    .line 848
    :try_start_0
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    const-string/jumbo v6, "ISO-8859-1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    new-array v3, v5, [B

    .line 849
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 851
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x4

    .line 850
    const v6, 0x80021

    invoke-direct {p0, v1, v6, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 852
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 853
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    invoke-direct {p0, v8, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 861
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 862
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 863
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 862
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-object v4

    .line 854
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :catch_0
    move-exception v2

    .line 855
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-object v7

    .line 867
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    :cond_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 868
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ null result"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-object v4

    .line 874
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 879
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_META_INFO returned w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 875
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    :catch_1
    move-exception v2

    .line 876
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-object v7

    .line 881
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .local v3, "payload":[B
    .local v4, "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get meta info with incorrect config id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetOemVersionOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const v5, 0x80030

    const/4 v6, 0x0

    .line 524
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    return-object v6

    .line 527
    :cond_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 528
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 529
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 530
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 532
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 533
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 534
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 535
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-object v6

    .line 538
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 539
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ null result"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-object v6

    .line 544
    :cond_2
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE returned w/ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    return-object v3
.end method

.method public qcRilGetOemVersionOfID(Ljava/lang/String;)[B
    .locals 8
    .param p1, "config_id"    # Ljava/lang/String;

    .prologue
    const v6, 0x80031

    const/4 v7, 0x0

    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1

    .line 601
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config_id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-object v7

    .line 605
    :cond_1
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 606
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 608
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 607
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 610
    :try_start_0
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 617
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 618
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 619
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 618
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-object v7

    .line 611
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-object v7

    .line 622
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 623
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-object v7

    .line 628
    :cond_3
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID returned w/ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    return-object v4
.end method

.method public qcRilGetPreferredNetworkAcqOrder(I)B
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    .line 1296
    const/4 v0, 0x0

    .line 1297
    .local v0, "acq_order":B
    const v5, 0x8001c

    .line 1298
    .local v5, "requestId":I
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v4, v7, [B

    .line 1299
    .local v4, "request":[B
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1301
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x4

    invoke-direct {p0, v3, v5, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1302
    invoke-direct {p0, v5, v4, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1304
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 1305
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1306
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 1307
    .local v6, "result":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1308
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1309
    .local v0, "acq_order":B
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "acq order is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    .end local v0    # "acq_order":B
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "result":[B
    :goto_0
    return v0

    .line 1311
    .local v0, "acq_order":B
    :cond_0
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "no acq order result return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1314
    :cond_1
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetPreferredNetworkBandPref(II)B
    .locals 10
    .param p1, "bandType"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1536
    const/4 v1, 0x0

    .line 1537
    .local v1, "band_pref":B
    const v5, 0x80026

    .line 1538
    .local v5, "requestId":I
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v4, v7, [B

    .line 1539
    .local v4, "request":[B
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1541
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x4

    invoke-direct {p0, v3, v5, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1542
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1544
    invoke-direct {p0, v5, v4, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1546
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 1547
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1548
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 1549
    .local v6, "result":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1550
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1551
    .local v1, "band_pref":B
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "band pref is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    .end local v1    # "band_pref":B
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "result":[B
    :goto_0
    return v1

    .line 1553
    .local v1, "band_pref":B
    :cond_0
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "no band pref result return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1556
    :cond_1
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL get band perf cmd returned exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetPrioritySub()I
    .locals 7

    .prologue
    .line 910
    const/4 v3, 0x0

    .line 911
    .local v3, "retval":I
    const v4, 0x80008

    invoke-virtual {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v2

    .line 913
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 914
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL  get priority sub Command returned Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 915
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :goto_0
    return v3

    .line 916
    :cond_0
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 917
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 918
    .local v0, "buf":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 919
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 920
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "qcRilGetPrioritySub: priority subscription is :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 922
    .end local v0    # "buf":[B
    .end local v1    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_1
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL get priority sub Command returned null response "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetPrioritySubscription()I
    .locals 6

    .prologue
    .line 1082
    const/4 v2, 0x0

    .line 1083
    .local v2, "subscriptionIndex":I
    const v3, 0x80008

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1084
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1085
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1086
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 1087
    .local v1, "response":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1088
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilGetPrioritySubscription: subscriptionIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .end local v1    # "response":[B
    :goto_0
    return v2

    .line 1091
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "qcRilGetPrioritySubscription: Null Response"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1094
    :cond_1
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilGetPrioritySubscription: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetQcVersionOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const v5, 0x8002d

    const/4 v6, 0x0

    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    return-object v6

    .line 493
    :cond_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 494
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 495
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 498
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 499
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 500
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 501
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-object v6

    .line 504
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 505
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ null result"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-object v6

    .line 510
    :cond_2
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE returned w/ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    return-object v3
.end method

.method public qcRilGetQcVersionOfID(Ljava/lang/String;)[B
    .locals 8
    .param p1, "configId"    # Ljava/lang/String;

    .prologue
    const v6, 0x8002f

    const/4 v7, 0x0

    .line 558
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1

    .line 559
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-object v7

    .line 563
    :cond_1
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 564
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 566
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 565
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 568
    :try_start_0
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 575
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 576
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 577
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-object v7

    .line 569
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-object v7

    .line 580
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 581
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-object v7

    .line 586
    :cond_3
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID returned w/ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    return-object v4
.end method

.method public qcRilGetTuneAway()Z
    .locals 8

    .prologue
    .line 1023
    const/4 v3, 0x0

    .line 1025
    .local v3, "tuneAway":Z
    const v5, 0x80006

    invoke-virtual {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1027
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 1028
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1029
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1030
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1031
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1032
    .local v4, "tuneAwayValue":B
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qcRilGetTuneAway: tuneAwayValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1035
    const/4 v3, 0x1

    .line 1043
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "response":[B
    .end local v4    # "tuneAwayValue":B
    :cond_0
    :goto_0
    return v3

    .line 1038
    :cond_1
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "qcRilGetTuneAway: Null Response"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    :cond_2
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qcRilGetTuneAway: Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGoDormant(Ljava/lang/String;)Z
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 894
    const/4 v1, 0x0

    .line 895
    .local v1, "retval":Z
    const v2, 0x80003

    invoke-virtual {p0, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 897
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 899
    const/4 v1, 0x1

    .line 904
    :goto_0
    return v1

    .line 901
    :cond_0
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go Dormant Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilInformShutDown(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1100
    const-string/jumbo v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QCRIL Inform shutdown for phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$3;

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$3;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1107
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    const v1, 0x8000a

    invoke-virtual {p0, v1, v4, v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1109
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilPerformIncrManualScan(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const v5, 0x80012

    .line 1191
    const/4 v3, 0x0

    .line 1192
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v4, [B

    .line 1194
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1196
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, v5, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1198
    invoke-direct {p0, v5, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1201
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1202
    const/4 v3, 0x1

    .line 1207
    :goto_0
    return v3

    .line 1204
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL perform incr manual scan returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1205
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSelectConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSelectConfig(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSelectConfig(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I
    .param p3, "mbnType"    # I

    .prologue
    const v6, 0x80020

    const/4 v7, 0x0

    .line 808
    const/4 v3, 0x0

    .line 809
    .local v3, "payload":[B
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-gt v4, v5, :cond_0

    .line 811
    :try_start_0
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x4

    .line 812
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    .line 811
    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 813
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 815
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    .line 814
    add-int/lit8 v4, v4, 0x5

    const v5, 0x80020

    invoke-direct {p0, v1, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 816
    int-to-byte v4, p2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 817
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 818
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 825
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 826
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_SEL_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 827
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 826
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return v7

    .line 819
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :catch_0
    move-exception v2

    .line 820
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return v7

    .line 831
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .local v3, "payload":[B
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select with incorrect config id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return v7

    .line 834
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .local v3, "payload":[B
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public qcRilSendApnInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "isValid"    # I
    .param p4, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1421
    const v4, 0x8002a

    .line 1422
    .local v4, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$6;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$6;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1435
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0xc

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x2

    .line 1437
    .local v1, "payloadSize":I
    const/16 v5, 0x400

    if-le v1, v5, :cond_0

    .line 1438
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "APN sent is larger than maximum buffer. Bail out"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    return-void

    .line 1441
    :cond_0
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v5, v1

    new-array v3, v5, [B

    .line 1442
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1443
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1444
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1445
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1446
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1447
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1448
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1449
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1450
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1451
    invoke-direct {p0, v4, v3, v0, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1420
    return-void
.end method

.method public qcRilSendDDSInfo(II)Z
    .locals 8
    .param p1, "dds"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1455
    const/4 v4, 0x0

    .line 1456
    .local v4, "retval":Z
    const v3, 0x80027

    .line 1457
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1458
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1460
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dds phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1462
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1464
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1465
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1466
    const/4 v4, 0x1

    .line 1470
    :goto_0
    return v4

    .line 1468
    :cond_0
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL send dds sub info returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSendDataEnableStatus(II)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1363
    const v3, 0x80028

    .line 1364
    .local v3, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$4;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$4;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1370
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v2, v4, [B

    .line 1371
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1372
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1373
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1374
    invoke-direct {p0, v3, v2, v0, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1362
    return-void
.end method

.method public qcRilSendDataRoamingEnableStatus(II)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1388
    const v3, 0x80029

    .line 1389
    .local v3, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$5;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$5;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1395
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v2, v4, [B

    .line 1396
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1397
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1398
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1399
    invoke-direct {p0, v3, v2, v0, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1387
    return-void
.end method

.method public qcRilSendProtocolBufferMessage([BI)[B
    .locals 5
    .param p1, "protocolBuffer"    # [B
    .param p2, "phoneId"    # I

    .prologue
    .line 986
    const/4 v1, 0x0

    .line 987
    .local v1, "returnValue":[B
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSendProtoBufMessage: protocolBuffer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const v2, 0x80065

    invoke-virtual {p0, v2, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 991
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 992
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSendProtoBufMessage: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-object v1

    .line 995
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 996
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    const-string/jumbo v3, "QCRIL_EVT_HOOK_PROTOBUF_MSG returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-object v1

    .line 999
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2
.end method

.method public qcRilSetCdmaSubSrcWithSpc(ILjava/lang/String;)Z
    .locals 11
    .param p1, "cdmaSubscription"    # I
    .param p2, "spc"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 945
    const/4 v5, 0x0

    .line 947
    .local v5, "retval":Z
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "qcRilSetCdmaSubSrcWithSpc: Set Cdma Subscription to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-gt v7, v8, :cond_4

    .line 951
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [B

    .line 956
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 957
    .local v1, "buf":Ljava/nio/ByteBuffer;
    int-to-byte v7, p1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 958
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 960
    const v7, 0x8000b

    invoke-virtual {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 962
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    .line 963
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 964
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 965
    .local v4, "result":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 966
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 967
    .local v6, "succeed":B
    const-string/jumbo v8, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL Set Cdma Subscription Source Command "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 968
    if-ne v6, v10, :cond_1

    const-string/jumbo v7, "Succeed."

    .line 967
    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    if-ne v6, v10, :cond_2

    .line 970
    const/4 v5, 0x1

    .line 982
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    .end local v4    # "result":[B
    .end local v6    # "succeed":B
    :cond_0
    :goto_1
    return v5

    .line 968
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    .restart local v4    # "result":[B
    .restart local v6    # "succeed":B
    :cond_1
    const-string/jumbo v7, "Failed."

    goto :goto_0

    .line 972
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 976
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v4    # "result":[B
    .end local v6    # "succeed":B
    :cond_3
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL Set Cdma Subscription Source Command returned Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 977
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 976
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 980
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :cond_4
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL Set Cdma Subscription Source Command incorrect SPC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public qcRilSetConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    .line 477
    invoke-virtual {p0, p1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I
    .param p4, "mbnType"    # I

    .prologue
    const v6, 0x80015

    const/4 v7, 0x0

    .line 414
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-gt v4, v5, :cond_0

    .line 415
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set with incorrect config id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return v7

    .line 416
    :cond_1
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x4

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 416
    add-int/2addr v4, v5

    .line 417
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 416
    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 418
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 424
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 423
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 425
    int-to-byte v4, p3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 426
    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 427
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 430
    :try_start_0
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 438
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 439
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_SET_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 440
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 439
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return v7

    .line 431
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v7

    .line 448
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public qcRilSetFieldTestMode(IBI)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "ratType"    # B
    .param p3, "enable"    # I

    .prologue
    const v7, 0x80013

    .line 1126
    const/4 v3, 0x0

    .line 1128
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 1129
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1131
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v7, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1132
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1133
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1134
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ratType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-direct {p0, v7, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1137
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1138
    const/4 v3, 0x1

    .line 1143
    :goto_0
    return v3

    .line 1140
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL enable engineer mode cmd returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1141
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1140
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetLteTuneaway(ZI)Z
    .locals 9
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 1331
    const/4 v4, 0x0

    .line 1332
    .local v4, "retval":Z
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    .line 1333
    .local v5, "tuneaway":B
    :goto_0
    const v3, 0x8002b

    .line 1334
    .local v3, "requestId":I
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v6, v6, 0x1

    new-array v2, v6, [B

    .line 1335
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1338
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "qcRilSetLteTuneaway enable :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v6, 0x1

    invoke-direct {p0, v1, v3, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1340
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1342
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1343
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 1344
    const/4 v4, 0x1

    .line 1349
    :goto_1
    return v4

    .line 1332
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reqBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "request":[B
    .end local v3    # "requestId":I
    .end local v5    # "tuneaway":B
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "tuneaway":B
    goto :goto_0

    .line 1346
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "reqBuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "request":[B
    .restart local v3    # "requestId":I
    :cond_1
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QCRIL set lte tune away returned exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public qcRilSetPreferredNetworkAcqOrder(II)Z
    .locals 8
    .param p1, "acqOrder"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1266
    const/4 v4, 0x0

    .line 1267
    .local v4, "retval":Z
    const v3, 0x8001b

    .line 1268
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1269
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1272
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "acq order: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1274
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1276
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1277
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1278
    const/4 v4, 0x1

    .line 1283
    :goto_0
    return v4

    .line 1280
    :cond_0
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetPreferredNetworkBandPref(II)Z
    .locals 8
    .param p1, "bandPref"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1505
    const/4 v4, 0x0

    .line 1506
    .local v4, "retval":Z
    const v3, 0x80025

    .line 1507
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1508
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1511
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "band pref: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1513
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1515
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1516
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1517
    const/4 v4, 0x1

    .line 1522
    :goto_0
    return v4

    .line 1519
    :cond_0
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL set band pref cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetPrioritySub(I)Z
    .locals 6
    .param p1, "priorityIndex"    # I

    .prologue
    .line 928
    const/4 v2, 0x0

    .line 929
    .local v2, "retval":Z
    int-to-byte v0, p1

    .line 931
    .local v0, "payload":B
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySub: Outgoing priority subscription is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const v3, 0x80007

    invoke-virtual {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v1

    .line 934
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 935
    const/4 v2, 0x1

    .line 940
    :goto_0
    return v2

    .line 937
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL set priority sub Command returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 938
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetPrioritySubscription(I)Z
    .locals 6
    .param p1, "priorityIndex"    # I

    .prologue
    .line 1047
    const/4 v2, 0x0

    .line 1048
    .local v2, "returnValue":Z
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySubscription: PrioritySubscription to be set to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    int-to-byte v1, p1

    .line 1052
    .local v1, "payload":B
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySubscription: PrioritySubscription payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const v3, 0x80007

    invoke-virtual {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1056
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1057
    const/4 v2, 0x1

    .line 1061
    :goto_0
    return v2

    .line 1059
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySubscription: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetTuneAway(Z)Z
    .locals 6
    .param p1, "tuneAway"    # Z

    .prologue
    .line 1003
    const/4 v2, 0x0

    .line 1004
    .local v2, "returnValue":Z
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetTuneAway: tuneAway Value to be set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v1, 0x0

    .line 1007
    .local v1, "payload":B
    if-eqz p1, :cond_0

    .line 1008
    const/4 v1, 0x1

    .line 1010
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetTuneAway: tuneAway payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const v3, 0x80005

    invoke-virtual {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1014
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1015
    const/4 v2, 0x1

    .line 1019
    :goto_0
    return v2

    .line 1017
    :cond_1
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetTuneAway: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilValidateConfig(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "configId"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 683
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1

    .line 684
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return v7

    .line 687
    :cond_1
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 688
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 690
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    .line 689
    const v5, 0x8002e

    invoke-direct {p0, v1, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 691
    int-to-byte v4, p2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 693
    :try_start_0
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 700
    const v4, 0x80021

    invoke-direct {p0, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 701
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 702
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_VALIDATE_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 703
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 702
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return v7

    .line 694
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return v7

    .line 706
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public qcrilSetBuiltInPLMNList([BI)Z
    .locals 7
    .param p1, "payload"    # [B
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x80011

    .line 1231
    const/4 v3, 0x0

    .line 1232
    .local v3, "retval":Z
    if-nez p1, :cond_0

    .line 1233
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "payload is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v4, 0x0

    return v4

    .line 1237
    :cond_0
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v5, p1

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 1238
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1241
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v4, p1

    .line 1240
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1242
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1244
    invoke-direct {p0, v6, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1246
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 1247
    const/4 v3, 0x1

    .line 1252
    :goto_0
    return v3

    .line 1249
    :cond_1
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL set builtin PLMN list returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1250
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1249
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1661
    return-void
.end method

.method public registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1651
    return-void
.end method

.method public sendQcRilHookMsg(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 1563
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v2, [B

    .line 1564
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1566
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1568
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(IB)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # B

    .prologue
    .line 1572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IBI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(IBI)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B
    .param p3, "phoneId"    # I

    .prologue
    .line 1575
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    .line 1576
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1578
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1579
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1581
    invoke-direct {p0, p1, v1, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(II)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .prologue
    .line 1598
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 1599
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1601
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1602
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1604
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 1608
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 1609
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1611
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1612
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1614
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 1585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "phoneId"    # I

    .prologue
    .line 1588
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 1589
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1591
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1592
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1594
    invoke-direct {p0, p1, v1, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;

    .prologue
    .line 1618
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1617
    return-void
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;
    .param p4, "phoneId"    # I

    .prologue
    .line 1623
    const/4 v0, 0x0

    .line 1624
    .local v0, "payloadLength":I
    if-eqz p2, :cond_0

    .line 1625
    array-length v0, p2

    .line 1628
    :cond_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v3, v0

    new-array v2, v3, [B

    .line 1629
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1631
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1632
    if-eqz p2, :cond_1

    .line 1633
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1635
    :cond_1
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1622
    return-void
.end method

.method public setLocalCallHold(IZ)Z
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1474
    const/4 v5, 0x0

    .line 1475
    .local v5, "retval":Z
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 1476
    .local v1, "lchStatus":B
    :goto_0
    const v4, 0x81b58

    .line 1477
    .local v4, "requestId":I
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [B

    .line 1478
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1480
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLocalCallHold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    const/4 v6, 0x1

    invoke-direct {p0, v2, v4, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1482
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1484
    invoke-direct {p0, v4, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1485
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 1486
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    const-string/jumbo v7, "setLocalCallHold success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/4 v5, 0x1

    .line 1491
    :goto_1
    return v5

    .line 1475
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "lchStatus":B
    .end local v2    # "reqBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "request":[B
    .end local v4    # "requestId":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "lchStatus":B
    goto :goto_0

    .line 1489
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "reqBuffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "request":[B
    .restart local v4    # "requestId":I
    :cond_1
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QCRIL setLocalCallHold returned exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setQcilLogOn(IZ)Z
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1747
    const/4 v5, 0x0

    .line 1748
    .local v5, "retval":Z
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 1749
    .local v1, "logon":B
    :goto_0
    const v4, 0x800da

    .line 1750
    .local v4, "requestId":I
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [B

    .line 1751
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1753
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setQcilLogOn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 v6, 0x1

    invoke-direct {p0, v2, v4, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1755
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1757
    invoke-direct {p0, v4, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1758
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 1759
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    const-string/jumbo v7, "setQcilLogOn success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/4 v5, 0x1

    .line 1764
    :goto_1
    return v5

    .line 1748
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "logon":B
    .end local v2    # "reqBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "request":[B
    .end local v4    # "requestId":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "logon":B
    goto :goto_0

    .line 1762
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "reqBuffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "request":[B
    .restart local v4    # "requestId":I
    :cond_1
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QCRIL setQcilLogOn returned exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1666
    return-void
.end method

.method public unregisterForFieldTestData(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1656
    return-void
.end method
