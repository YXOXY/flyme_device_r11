.class public Lcom/qualcomm/qcnvitems/QcNvItems;
.super Ljava/lang/Object;
.source "QcNvItems.java"

# interfaces
.implements Lcom/qualcomm/qcnvitems/IQcNvItems;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcnvitems/QcNvItems$1;,
        Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;
    }
.end annotation


# static fields
.field private static final DEFAULT_SPC:Ljava/lang/String; = "000000"

.field private static final HEADER_SIZE:I = 0x8

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MAX_SPC_LEN:I = 0x6

.field private static final enableVLog:Z = true


# instance fields
.field private mIsQcRilHookReady:Z

.field private mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# direct methods
.method static synthetic -set0(Lcom/qualcomm/qcnvitems/QcNvItems;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mIsQcRilHookReady:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "QC_NV_ITEMS"

    sput-object v0, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mIsQcRilHookReady:Z

    .line 86
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItems$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcnvitems/QcNvItems$1;-><init>(Lcom/qualcomm/qcnvitems/QcNvItems;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 68
    const-string/jumbo v0, "QcNvItems instance created."

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mIsQcRilHookReady:Z

    .line 86
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItems$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcnvitems/QcNvItems$1;-><init>(Lcom/qualcomm/qcnvitems/QcNvItems;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 75
    const-string/jumbo v0, "QcNvItems instance created."

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 73
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 139
    if-nez p0, :cond_0

    return-object v3

    .line 140
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 141
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 143
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 144
    .local v0, "b":I
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 146
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private checkSpc(Ljava/lang/String;)V
    .locals 2
    .param p1, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "SPC is null or longer than 6 bytes."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    return-void
.end method

.method private doNvRead(I)[B
    .locals 6
    .param p1, "itemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-boolean v1, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mIsQcRilHookReady:Z

    if-nez v1, :cond_0

    .line 155
    sget-object v1, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "QcRilHook isn\'t ready yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v2, 0x80001

    invoke-virtual {v1, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(II)Landroid/os/AsyncResult;

    move-result-object v0

    .line 163
    .local v0, "result":Landroid/os/AsyncResult;
    if-nez v0, :cond_1

    .line 164
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 167
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 168
    sget-object v1, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "doNvRead() Failed : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 173
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 175
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1
.end method

.method private doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V
    .locals 7
    .param p1, "nvItem"    # Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
    .param p2, "itemId"    # I
    .param p3, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 113
    iget-boolean v2, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mIsQcRilHookReady:Z

    if-nez v2, :cond_0

    .line 115
    sget-object v2, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "QcRilHook isn\'t ready yet."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 119
    :cond_0
    invoke-direct {p0, p3}, Lcom/qualcomm/qcnvitems/QcNvItems;->checkSpc(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 127
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const v4, 0x80002

    invoke-virtual {v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v1

    .line 130
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 131
    sget-object v2, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "doNvWrite() Failed : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 132
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 131
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 110
    :cond_1
    return-void
.end method

.method private getAutoAnswer()Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1220
    iget-boolean v3, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mIsQcRilHookReady:Z

    if-nez v3, :cond_0

    .line 1222
    return-object v6

    .line 1227
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;-><init>()V

    .line 1229
    .local v0, "mAutoAnswer":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v6, 0x80001

    .line 1230
    const/16 v7, 0x4a

    .line 1229
    invoke-virtual {v3, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(II)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1232
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1233
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    array-length v3, v3

    invoke-static {}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->getSize()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 1234
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 1236
    .local v1, "responseData":[B
    aget-byte v3, v1, v4

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->enable:Z

    .line 1237
    aget-byte v3, v1, v5

    iput-byte v3, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->rings:B

    .line 1243
    return-object v0

    :cond_1
    move v3, v5

    .line 1236
    goto :goto_0

    .line 1239
    .end local v1    # "responseData":[B
    :cond_2
    sget-object v3, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unable to read Auto Answer Value from NV Memory"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private getNvDirNumber()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const-string/jumbo v1, "getNvDirNumber()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 286
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;

    .line 287
    const/16 v1, 0xb2

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    .line 286
    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;-><init>([B)V

    .line 288
    .local v0, "retVal":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->getDirNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static intToIpAddress(I)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # I

    .prologue
    .line 1299
    const-string/jumbo v0, ""

    .line 1300
    .local v0, "ipAddr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    return-object v0
.end method

.method public static ipAddressStringToInt(Ljava/lang/String;)I
    .locals 7
    .param p0, "ipAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 1279
    const-string/jumbo v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "add":[Ljava/lang/String;
    array-length v4, v0

    if-eq v4, v6, :cond_0

    .line 1281
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string/jumbo v5, "Incorrectly formatted IP Address."

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1284
    :cond_0
    const/4 v2, 0x0

    .line 1285
    .local v2, "ip":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 1286
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1287
    .local v3, "t":I
    and-int/lit16 v4, v3, -0x100

    if-eqz v4, :cond_1

    .line 1288
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string/jumbo v5, "Incorrectly formatted IP Address."

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1290
    :cond_1
    shl-int/lit8 v4, v2, 0x8

    and-int/lit16 v5, v3, 0xff

    add-int v2, v4, v5

    .line 1291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, v3, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1295
    .end local v3    # "t":I
    :cond_2
    return v2
.end method

.method private setAutoAnswer(Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;Ljava/lang/String;)V
    .locals 6
    .param p1, "mAutoAnswer"    # Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1247
    iget-boolean v4, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mIsQcRilHookReady:Z

    if-nez v4, :cond_0

    .line 1249
    return-void

    .line 1253
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->checkSpc(Ljava/lang/String;)V

    .line 1254
    invoke-static {}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->getSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 1255
    .local v2, "requestData":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1257
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v4, 0x4a

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1258
    invoke-static {}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->getSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1261
    iget-boolean v4, p1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->enable:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1262
    iget-byte v4, p1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->rings:B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1263
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1265
    iget-object v4, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v5, 0x80002

    invoke-virtual {v4, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1268
    .local v3, "result":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 1269
    sget-object v4, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to Set Auto Answer"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "requestData":[B
    .end local v3    # "result":Landroid/os/AsyncResult;
    :catch_0
    move-exception v1

    .line 1273
    .local v1, "e":Ljava/security/InvalidParameterException;
    sget-object v4, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/InvalidParameterException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    .end local v1    # "e":Ljava/security/InvalidParameterException;
    :cond_1
    return-void

    .line 1261
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v2    # "requestData":[B
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setNvDirNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dirNumber"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 295
    const-string/jumbo v1, "setNvDirNumber()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 297
    if-nez p1, :cond_0

    .line 298
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 301
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;-><init>()V

    .line 302
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mNam:B

    .line 303
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->setDirNumber(Ljava/lang/String;)V

    .line 305
    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 294
    return-void
.end method

.method private static vLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logString"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method


# virtual methods
.method public disableAutoAnswer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->disableAutoAnswer(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public disableAutoAnswer(Ljava/lang/String;)V
    .locals 3
    .param p1, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 822
    const-string/jumbo v1, "disableAutoAnswer()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 824
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;-><init>()V

    .line 825
    .local v0, "mAutoAnswer":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;
    iput-boolean v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->enable:Z

    .line 826
    iput-byte v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->rings:B

    .line 827
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItems;->setAutoAnswer(Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->dispose()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mIsQcRilHookReady:Z

    .line 80
    return-void
.end method

.method public enableAutoAnswer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->enableAutoAnswer(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method public enableAutoAnswer(Ljava/lang/String;)V
    .locals 1
    .param p1, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->enableAutoAnswer(S)V

    .line 848
    return-void
.end method

.method public enableAutoAnswer(S)V
    .locals 1
    .param p1, "rings"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 845
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->enableAutoAnswer(SLjava/lang/String;)V

    .line 844
    return-void
.end method

.method public enableAutoAnswer(SLjava/lang/String;)V
    .locals 2
    .param p1, "rings"    # S
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 836
    const-string/jumbo v1, "enableAutoAnswer()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 838
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;-><init>()V

    .line 839
    .local v0, "mAutoAnswer":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->enable:Z

    .line 840
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v1

    iput-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->rings:B

    .line 841
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setAutoAnswer(Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method public get3gpp2SubscriptionInfo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getDirectoryNumber()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "dirNum":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getHomeSidNid()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    move-result-object v3

    .line 186
    .local v3, "sidNid":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v4

    .line 187
    .local v4, "minImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v5

    .line 188
    .local v5, "trueImsi":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    move-result-object v6

    .line 189
    .local v6, "cdmaChannels":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;

    const-string/jumbo v1, ""

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V

    return-object v0
.end method

.method public getAirTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    const-string/jumbo v1, "getAirTimerCount()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 859
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;

    const/16 v1, 0xa8

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;-><init>([B)V

    .line 860
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 862
    new-instance v1, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    iget v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->mCount:I

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;-><init>(J)V

    return-object v1
.end method

.method public getAmrStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 974
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;-><init>()V

    return-object v0
.end method

.method public getAnalogHomeSid()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const-string/jumbo v1, "getAnalogHomeSid()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;-><init>([B)V

    .line 218
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 220
    iget-short v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mSid:S

    return v1
.end method

.method public getAutoAnswerStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    const-string/jumbo v1, "getAutoAnswerStatus()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 799
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getAutoAnswer()Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;

    move-result-object v0

    .line 801
    .local v0, "mAutoAnswer":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;
    new-instance v1, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    iget-boolean v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->enable:Z

    iget-byte v3, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->rings:B

    int-to-short v3, v3

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;-><init>(ZS)V

    return-object v1
.end method

.method public getCalibrateInformation()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1786
    const-string/jumbo v1, "getCalibrateInformation()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1788
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;

    const/16 v1, 0x1acc

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;-><init>([B)V

    .line 1789
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->getByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getCarrierVersion()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1875
    const-string/jumbo v1, "getCarrierVersion()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1877
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;

    const/16 v1, 0x1ac5

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;-><init>([B)V

    .line 1879
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->getCarrierVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 627
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getPrimaryCdmaChannels()[I

    move-result-object v0

    .line 628
    .local v0, "primaryChannels":[I
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getSecondaryCdmaChannels()[I

    move-result-object v1

    .line 629
    .local v1, "secondaryChannels":[I
    new-instance v2, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    aget v3, v0, v5

    aget v4, v0, v6

    aget v5, v1, v5

    .line 630
    aget v6, v1, v6

    .line 629
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;-><init>(IIII)V

    return-object v2
.end method

.method public getCurrentTtyMode()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultBaudRate()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    const-string/jumbo v1, "getDefaultBaudRate()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;

    const/16 v1, 0x1c6

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;-><init>([B)V

    .line 1039
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1041
    iget-short v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->mVal:S

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceSerials()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
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
    .line 247
    const-string/jumbo v0, "getDirectoryNumber()"

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getNvDirNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEccList()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1077
    const-string/jumbo v1, "getEccList()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1079
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;

    const/16 v1, 0x234

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;-><init>([B)V

    .line 1080
    .local v0, "r":Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->getEcclist()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEmailGateway()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncryptImei()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1549
    const-string/jumbo v1, "getEncryptImei()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1551
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;

    const/16 v1, 0x9c4

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;-><init>([B)V

    .line 1553
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->getEncryptImei()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFtmMode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;

    const/16 v1, 0x1c5

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;-><init>([B)V

    .line 991
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 992
    iget-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGpsOnePdeAddress()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    const-string/jumbo v1, "getGpsOnePdeAddress()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;

    const/16 v1, 0x191

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;-><init>([B)V

    .line 1158
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1160
    iget v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->mVal:I

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->intToIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGpsOnePdePort()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1187
    const-string/jumbo v1, "getGpsOnePdePort()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1189
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;

    const/16 v1, 0x1aa

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;-><init>([B)V

    .line 1190
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1192
    iget v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->mVal:I

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGpsSnr()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1605
    const-string/jumbo v1, "getGpsSnr()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1607
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;

    const/16 v1, 0x1ac8

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;-><init>([B)V

    .line 1609
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->getGpsSnrByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getHomeSidNid()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x14

    .line 309
    const-string/jumbo v4, "getHomeSidNid()"

    invoke-static {v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 311
    new-instance v2, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;

    const/16 v4, 0x103

    invoke-direct {p0, v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;-><init>([B)V

    .line 312
    .local v2, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;
    invoke-virtual {v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 314
    new-array v3, v5, [I

    .line 315
    .local v3, "sid":[I
    new-array v1, v5, [I

    .line 317
    .local v1, "nid":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 318
    iget-object v4, v2, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v4, v4, v0

    iget-short v4, v4, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v4

    aput v4, v3, v0

    .line 319
    iget-object v4, v2, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v4, v4, v0

    iget-short v4, v4, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v4

    aput v4, v1, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    new-instance v4, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    invoke-direct {v4, v3, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;-><init>([I[I)V

    return-object v4
.end method

.method public getImsi11_12()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    const-string/jumbo v1, "getImsi11_12()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;

    const/16 v1, 0xb1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;-><init>([B)V

    .line 448
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 450
    iget-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mImsi1112:B

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImsiMcc()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    const-string/jumbo v1, "getImsiMcc()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 415
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;

    const/16 v1, 0xb0

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;-><init>([B)V

    .line 416
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 418
    iget-short v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mImsiMcc:S

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImsiMin1()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1390
    const-string/jumbo v2, "getImsiMin1()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1392
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>([B)V

    .line 1393
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1395
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1396
    .local v1, "retVal":[Ljava/lang/String;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    aget v2, v2, v3

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1397
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    aget v2, v2, v4

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1399
    return-object v1
.end method

.method public getImsiMin2()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1427
    const-string/jumbo v2, "getImsiMin2()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1429
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>([B)V

    .line 1430
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1432
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1433
    .local v1, "retVal":[Ljava/lang/String;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v2, v2, v3

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1434
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v2, v2, v4

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1436
    return-object v1
.end method

.method public getLightSensor()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1720
    const-string/jumbo v1, "getLightSensor()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1722
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;

    const/16 v1, 0x1aca

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;-><init>([B)V

    .line 1723
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->getLightSensor()[I

    move-result-object v1

    return-object v1
.end method

.method public getLockCode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    const-string/jumbo v1, "getLockCode()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1131
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;

    const/16 v1, 0x52

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;-><init>([B)V

    .line 1132
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->getLockCode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const-string/jumbo v5, "getMinImsi()"

    invoke-static {v5}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getImsiMcc()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getImsi11_12()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "imsi11_12":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getMinImsiNumber()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "num":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "s1":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "s2":Ljava/lang/String;
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public getMinImsiNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 383
    const-string/jumbo v2, "getMinImsiNumber()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 385
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>([B)V

    .line 386
    .local v0, "min1":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>([B)V

    .line 388
    .local v1, "min2":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    aget v2, v2, v4

    iget-object v3, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v3, v3, v4

    invoke-static {v2, v3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->minToPhString(IS)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMobCaiRev()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    const-string/jumbo v1, "getMobCaiRev()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 733
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;-><init>([B)V

    .line 734
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 736
    iget-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    return v1
.end method

.method public getNVBackupFlag()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1756
    const-string/jumbo v1, "getNVBackupFlag()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1758
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;

    const/16 v1, 0x9c1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;-><init>([B)V

    .line 1759
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1761
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->getByte(I)B

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
    .line 211
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getPcbNumber()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    const-string/jumbo v1, "getPcbNumber()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1568
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;

    const/16 v1, 0x1ac7

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;-><init>([B)V

    .line 1570
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->getPcbNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPreferredVoiceSo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    const-string/jumbo v5, "getPreferredVoiceSo()"

    invoke-static {v5}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 936
    new-instance v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;

    const/16 v5, 0x11d

    invoke-direct {p0, v5}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;-><init>([B)V

    .line 937
    .local v3, "r":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;
    invoke-virtual {v3}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->toDebugString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 939
    iget-boolean v5, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mEvrcCapabilityEnabled:Z

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 940
    .local v0, "evrc":S
    :goto_0
    iget-short v5, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomePageVoiceSo:S

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 941
    .local v2, "hpvs":I
    iget-short v5, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomeOrigVoiceSo:S

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    .line 942
    .local v1, "hovs":I
    iget-short v5, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mRoamOrigVoiceSo:S

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v4

    .line 944
    .local v4, "rovs":I
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    invoke-direct {v5, v0, v2, v1, v4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;-><init>(SIII)V

    return-object v5

    .line 939
    .end local v0    # "evrc":S
    .end local v1    # "hovs":I
    .end local v2    # "hpvs":I
    .end local v4    # "rovs":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "evrc":S
    goto :goto_0
.end method

.method public getPrimaryCdmaChannels()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    const-string/jumbo v2, "getPrimaryCdmaChannels()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 657
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;-><init>([B)V

    .line 658
    .local v0, "r":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 660
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 661
    .local v1, "retVal":[I
    iget-short v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelA:S

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 662
    iget-short v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelB:S

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 664
    return-object v1
.end method

.method public getProductLineTestFlag()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1836
    const-string/jumbo v1, "==getProductLineTestFlag()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1837
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;

    const/16 v1, 0x1acb

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;-><init>([B)V

    .line 1838
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->getByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getProductLineTestFlagEx()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1815
    const-string/jumbo v1, "==getProductLineTestFlag()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1816
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;

    const v1, 0xc381

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;-><init>([B)V

    .line 1817
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->getByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getRoamTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    const-string/jumbo v1, "getRoamTimerCount()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 891
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;

    const/16 v1, 0xa9

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;-><init>([B)V

    .line 892
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 894
    new-instance v1, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    iget v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->mCount:I

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;-><init>(J)V

    return-object v1
.end method

.method public getRtreConfig()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public getSecCode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    const-string/jumbo v1, "getSecCode()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1105
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;

    const/16 v1, 0x55

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;-><init>([B)V

    .line 1106
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;->getSecCode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSecondaryCdmaChannels()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    const-string/jumbo v2, "getSecondaryCdmaChannels()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 695
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;

    const/16 v2, 0x15

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;-><init>([B)V

    .line 696
    .local v0, "r":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 698
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 699
    .local v1, "retVal":[I
    iget-short v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelA:S

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 700
    iget-short v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelB:S

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 702
    return-object v1
.end method

.method public getSidNid()[[Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1338
    const-string/jumbo v4, "getSidNid()"

    invoke-static {v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1340
    new-instance v2, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;

    const/16 v4, 0x26

    invoke-direct {p0, v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;-><init>([B)V

    .line 1341
    .local v2, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;
    invoke-virtual {v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1343
    const-class v4, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;

    filled-new-array {v7, v6}, [I

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;

    .line 1344
    .local v3, "retVal":[[Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1345
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 1346
    aget-object v4, v3, v0

    new-instance v5, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;

    invoke-direct {v5, p0}, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;-><init>(Lcom/qualcomm/qcnvitems/QcNvItems;)V

    aput-object v5, v4, v1

    .line 1347
    aget-object v4, v3, v0

    aget-object v4, v4, v1

    iget-object v5, v2, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-short v5, v5, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->setSid(Ljava/lang/String;)V

    .line 1348
    aget-object v4, v3, v0

    aget-object v4, v4, v1

    iget-object v5, v2, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-short v5, v5, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->setNid(Ljava/lang/String;)V

    .line 1345
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1352
    .end local v1    # "j":I
    :cond_1
    return-object v3
.end method

.method public getSpcChangeEnabled()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1011
    const-string/jumbo v2, "getSpcChangeEnabled()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1013
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;

    const/16 v2, 0x128

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;-><init>([B)V

    .line 1014
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1016
    iget-byte v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSrvDomainPref()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1683
    const-string/jumbo v1, "getSrvDomainPref()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1685
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;

    const/16 v1, 0x352

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;-><init>([B)V

    .line 1686
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->getSrvDomainPref()I

    move-result v1

    return v1
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    const-string/jumbo v0, "getTrueImsi()"

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getTrueImsiMcc()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getTrueImsi11_12()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "imsi11_12":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getTrueImsiNumber()Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, "num":Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v7, 0x7

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "s1":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "s2":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getTrueImsiAddrNum()S

    move-result v5

    .line 483
    .local v5, "imsiAddrNum":S
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    return-object v0
.end method

.method public getTrueImsi11_12()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    const-string/jumbo v1, "getTrueImsi11_12()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 567
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;

    const/16 v1, 0x109

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;-><init>([B)V

    .line 568
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 570
    iget-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mImsi1112:B

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTrueImsiAddrNum()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    const-string/jumbo v1, "getTrueImsiAddrNum()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 599
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;

    .line 600
    const/16 v1, 0x10a

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    .line 599
    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;-><init>([B)V

    .line 601
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 603
    iget-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNum:B

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    return v1
.end method

.method public getTrueImsiMcc()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    const-string/jumbo v1, "getTrueImsiMcc()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 535
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;

    const/16 v1, 0x108

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;-><init>([B)V

    .line 536
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 538
    iget-short v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mImsiMcc:S

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTrueImsiNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 503
    const-string/jumbo v2, "getTrueImsiNumber()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 505
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    const/16 v2, 0x106

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>([B)V

    .line 506
    .local v0, "min1":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    const/16 v2, 0x107

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>([B)V

    .line 508
    .local v1, "min2":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    aget v2, v2, v4

    iget-object v3, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v3, v3, v4

    invoke-static {v2, v3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->minToPhString(IS)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTrueImsiS1()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1464
    const-string/jumbo v2, "getTrueImsiS1()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    const/16 v2, 0x106

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>([B)V

    .line 1467
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1469
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1470
    .local v1, "retVal":[Ljava/lang/String;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    aget v2, v2, v3

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1471
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    aget v2, v2, v4

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1473
    return-object v1
.end method

.method public getTrueImsiS2()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1501
    const-string/jumbo v2, "getTrueImsiS2()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1503
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    const/16 v2, 0x107

    invoke-direct {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>([B)V

    .line 1504
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1506
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1507
    .local v1, "retVal":[Ljava/lang/String;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v2, v2, v3

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1508
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v2, v2, v4

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsignedString(S)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1510
    return-object v1
.end method

.method public getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    const-string/jumbo v0, "getVoiceConfig()"

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getAutoAnswerStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    move-result-object v1

    .line 769
    .local v1, "aa":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getAirTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    move-result-object v2

    .line 770
    .local v2, "atc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getRoamTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    move-result-object v3

    .line 771
    .local v3, "rtc":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getCurrentTtyMode()S

    move-result v4

    .line 772
    .local v4, "tty":S
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getPreferredVoiceSo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    move-result-object v5

    .line 773
    .local v5, "pvs":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getAmrStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;

    move-result-object v6

    .line 774
    .local v6, "amr":Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItems;->getVoicePrivacyPref()S

    move-result v7

    .line 775
    .local v7, "vp":S
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;-><init>(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;SLcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;S)V

    return-object v0
.end method

.method public getVoicePrivacyPref()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiPerf()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1644
    const-string/jumbo v1, "getWifiPerf()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1646
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;

    const/16 v1, 0x1ac9

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;-><init>([B)V

    .line 1648
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->getWifiPerfInteger()I

    move-result v1

    return v1
.end method

.method public isEnableDiag()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1799
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;

    const/16 v1, 0x9c2

    invoke-direct {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;-><init>([B)V

    .line 1800
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;
    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1801
    const-string/jumbo v1, "wjp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnableDiag mval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    if-ne v1, v4, :cond_0

    .line 1803
    return v4

    .line 1805
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public registerOnServiceConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-eqz v0, :cond_0

    .line 1859
    const-string/jumbo v0, " mQcRilOemHook.registerOnServiceConnected(h, what, obj)"

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1860
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {p1, p2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->registerOnServiceConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1856
    :cond_0
    return-void
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
    .line 206
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;Ljava/lang/String;)V
    .locals 1
    .param p1, "threegpp2Info"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getDirNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getSidNid()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setHomeSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V
    .locals 1
    .param p1, "timerCnt"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 885
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method public setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Ljava/lang/String;)V
    .locals 4
    .param p1, "timerCnt"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 867
    const-string/jumbo v2, "setAirTimerCount()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 869
    if-nez p1, :cond_0

    .line 870
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 873
    :cond_0
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;-><init>()V

    .line 875
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;
    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->getTimerCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseInt(J)I

    move-result v2

    iput v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->mCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    const/16 v2, 0xa8

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 866
    return-void

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAnalogHomeSid(I)V
    .locals 1
    .param p1, "analogHomeSid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 239
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setAnalogHomeSid(ILjava/lang/String;)V

    .line 238
    return-void
.end method

.method public setAnalogHomeSid(ILjava/lang/String;)V
    .locals 4
    .param p1, "analogHomeSid"    # I
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 225
    const-string/jumbo v2, "setAnalogHomeSid()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 227
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;-><init>()V

    .line 229
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mSid:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    const/16 v2, 0x12

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 224
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;)V
    .locals 1
    .param p1, "autoAnswer"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 818
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;Ljava/lang/String;)V
    .locals 2
    .param p1, "autoAnswer"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 806
    const-string/jumbo v1, "setAutoAnswerStatus()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 807
    if-nez p1, :cond_0

    .line 808
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 810
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;-><init>()V

    .line 811
    .local v0, "mAutoAnswer":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->enable:Z

    .line 812
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->getRings()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v1

    iput-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;->rings:B

    .line 813
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setAutoAnswer(Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public setCarrierVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "carreirVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1893
    const-string/jumbo v1, "setCarrierVersion()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1895
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 1897
    :cond_0
    sget-object v1, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setCarrierVersion() Failed : Invalid Parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1901
    :cond_1
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;-><init>(Ljava/lang/String;)V

    .line 1903
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;
    const-string/jumbo v1, "000000"

    const/16 v2, 0x1ac5

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1891
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
    .line 651
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;Ljava/lang/String;)V
    .locals 6
    .param p1, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 638
    :cond_0
    new-array v0, v5, [I

    .line 639
    .local v0, "primaryChannels":[I
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getPrimaryChannelA()I

    move-result v2

    aput v2, v0, v3

    .line 640
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getPrimaryChannelB()I

    move-result v2

    aput v2, v0, v4

    .line 641
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setPrimaryCdmaChannels([ILjava/lang/String;)V

    .line 643
    new-array v1, v5, [I

    .line 644
    .local v1, "secondaryChannels":[I
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getSecondaryChannelA()I

    move-result v2

    aput v2, v1, v3

    .line 645
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getSecondaryChannelB()I

    move-result v2

    aput v2, v1, v4

    .line 646
    invoke-virtual {p0, v1, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setSecondaryCdmaChannels([ILjava/lang/String;)V

    .line 634
    return-void
.end method

.method public setCurrentTtyMode(S)V
    .locals 1
    .param p1, "ttyMode"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 930
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setCurrentTtyMode(SLjava/lang/String;)V

    .line 929
    return-void
.end method

.method public setCurrentTtyMode(SLjava/lang/String;)V
    .locals 0
    .param p1, "ttyMode"    # S
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 925
    return-void
.end method

.method public setDefaultBaudRate(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultBaudrate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1063
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setDefaultBaudRate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method public setDefaultBaudRate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "defaultBaudrate"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1046
    const-string/jumbo v2, "setDefaultBaudRate()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1048
    if-nez p1, :cond_0

    .line 1049
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 1052
    :cond_0
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;-><init>()V

    .line 1054
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->mVal:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    const/16 v2, 0x1c6

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1045
    return-void

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDirectoryNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "phNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 280
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public setDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phNumber"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x21

    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 262
    const-string/jumbo v2, "setDirectoryNumber()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 267
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    invoke-direct {p0, v5}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>([B)V

    .line 268
    .local v0, "min1":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    invoke-direct {p0, v6}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>([B)V

    .line 270
    .local v1, "min2":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin1(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    .line 271
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin2(Ljava/lang/String;)S

    move-result v3

    aput-short v3, v2, v4

    .line 273
    invoke-direct {p0, v0, v5, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 274
    invoke-direct {p0, v1, v6, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setNvDirNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setEccList([Ljava/lang/String;)V
    .locals 1
    .param p1, "eccList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1099
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setEccList([Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public setEccList([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eccList"    # [Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1087
    const-string/jumbo v1, "setEccList()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1089
    if-nez p1, :cond_0

    .line 1090
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1092
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;-><init>()V

    .line 1093
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->setEccList([Ljava/lang/String;)V

    .line 1095
    const/16 v1, 0x234

    invoke-direct {p0, v0, v1, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1086
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
    .line 1072
    return-void
.end method

.method public setGpsOnePdeAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "gpsOnePdeAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1183
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setGpsOnePdeAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    return-void
.end method

.method public setGpsOnePdeAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "gpsOnePdeAddress"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1165
    const-string/jumbo v2, "setGpsOnePdeAddress()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1167
    if-nez p1, :cond_0

    .line 1168
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 1171
    :cond_0
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;-><init>()V

    .line 1173
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QcNvItems;->ipAddressStringToInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->mVal:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    const/16 v2, 0x191

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1164
    return-void

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setGpsOnePdePort(Ljava/lang/String;)V
    .locals 1
    .param p1, "gpsOnePdePort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1214
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setGpsOnePdePort(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-void
.end method

.method public setGpsOnePdePort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "gpsOnePdePort"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1197
    const-string/jumbo v2, "setGpsOnePdePort()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1199
    if-nez p1, :cond_0

    .line 1200
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 1203
    :cond_0
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;-><init>()V

    .line 1205
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->mVal:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    const/16 v2, 0x1aa

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1196
    return-void

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setGpsSnr([B)V
    .locals 3
    .param p1, "gpsSnr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1623
    const-string/jumbo v1, "setGpsSnr()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1625
    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0x7c

    if-le v1, v2, :cond_1

    .line 1627
    :cond_0
    sget-object v1, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setGpsSnr() Failed : Invalid Parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1631
    :cond_1
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;-><init>([B)V

    .line 1633
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;
    const-string/jumbo v1, "000000"

    const/16 v2, 0x1ac8

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1621
    return-void
.end method

.method public setHomeSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;)V
    .locals 1
    .param p1, "homeSidNid"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 354
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setHomeSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public setHomeSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;Ljava/lang/String;)V
    .locals 7
    .param p1, "homeSidNid"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 327
    const-string/jumbo v5, "setHomeSidNid()"

    invoke-static {v5}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 329
    if-nez p1, :cond_0

    .line 330
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-direct {v5}, Ljava/security/InvalidParameterException;-><init>()V

    throw v5

    .line 333
    :cond_0
    new-instance v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;

    invoke-direct {v3}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;-><init>()V

    .line 335
    .local v3, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x14

    if-ge v1, v5, :cond_1

    .line 339
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->getSid(I)I

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v4

    .line 340
    .local v4, "sid":S
    invoke-virtual {p1, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->getNid(I)I

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 345
    .local v2, "nid":S
    iget-object v5, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    new-instance v6, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    invoke-direct {v6}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;-><init>()V

    aput-object v6, v5, v1

    .line 346
    iget-object v5, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v5, v5, v1

    iput-short v4, v5, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    .line 347
    iget-object v5, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v5, v5, v1

    iput-short v2, v5, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "nid":S
    .end local v4    # "sid":S
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 350
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v5, 0x103

    invoke-direct {p0, v3, v5, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 326
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
    .line 472
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setImsi11_12(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public setImsi11_12(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi11_12"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 455
    const-string/jumbo v2, "setImsi11_12()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 458
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 461
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;-><init>()V

    .line 462
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;
    const/4 v2, 0x0

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mNam:B

    .line 464
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mImsi1112:B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    const/16 v2, 0xb1

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 454
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 441
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setImsiMcc(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public setImsiMcc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imsiMcc"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 423
    const-string/jumbo v2, "setImsiMcc()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 425
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 426
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 429
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;-><init>()V

    .line 430
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;
    const/4 v2, 0x0

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mNam:B

    .line 432
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mImsiMcc:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    const/16 v2, 0xb0

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 422
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setImsiMin1([Ljava/lang/String;)V
    .locals 1
    .param p1, "minString"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1423
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setImsiMin1([Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    return-void
.end method

.method public setImsiMin1([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "minString"    # [Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1404
    const-string/jumbo v2, "setImsiMin1()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1406
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1407
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 1411
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>()V

    .line 1413
    .local v1, "min":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    const/4 v2, 0x0

    :try_start_0
    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mNam:B

    .line 1414
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1415
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    const/16 v2, 0x20

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1403
    return-void

    .line 1416
    :catch_0
    move-exception v0

    .line 1417
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setImsiMin2([Ljava/lang/String;)V
    .locals 1
    .param p1, "minString"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1460
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setImsiMin2([Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method public setImsiMin2([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "minString"    # [Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1441
    const-string/jumbo v2, "setImsiMin2()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1443
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1444
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 1448
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>()V

    .line 1450
    .local v1, "min":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    const/4 v2, 0x0

    :try_start_0
    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mNam:B

    .line 1451
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v3

    const/4 v4, 0x0

    aput-short v3, v2, v4

    .line 1452
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v3

    const/4 v4, 0x1

    aput-short v3, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    const/16 v2, 0x21

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1440
    return-void

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setLightSensor([I)V
    .locals 3
    .param p1, "lightSensor"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1737
    const-string/jumbo v1, "setLightSensor()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1739
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 1741
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1744
    :cond_1
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;-><init>([I)V

    .line 1746
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;
    const-string/jumbo v1, "000000"

    const/16 v2, 0x1aca

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1735
    return-void
.end method

.method public setLockCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "lockCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1151
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setLockCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return-void
.end method

.method public setLockCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lockCode"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1139
    const-string/jumbo v1, "setLockCode()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1141
    if-nez p1, :cond_0

    .line 1142
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1144
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;-><init>()V

    .line 1145
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->setLockCode(Ljava/lang/String;)V

    .line 1147
    const/16 v1, 0x52

    invoke-direct {p0, v0, v1, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1138
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
    .line 379
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;Ljava/lang/String;)V
    .locals 1
    .param p1, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 369
    const-string/jumbo v0, "setMinImsi()"

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setImsiMcc(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getImsi11_12()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setImsi11_12(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getImsiNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setMinImsiNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
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
    .line 409
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setMinImsiNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public setMinImsiNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phNumber"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x21

    const/16 v5, 0x20

    const/4 v4, 0x1

    .line 393
    const-string/jumbo v2, "setMinImsiNumber()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 395
    if-nez p1, :cond_0

    .line 396
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 398
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    invoke-direct {p0, v5}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>([B)V

    .line 399
    .local v0, "min1":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    invoke-direct {p0, v6}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>([B)V

    .line 401
    .local v1, "min2":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin1(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    .line 402
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin2(Ljava/lang/String;)S

    move-result v3

    aput-short v3, v2, v4

    .line 404
    invoke-direct {p0, v0, v5, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 405
    invoke-direct {p0, v1, v6, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 392
    return-void
.end method

.method public setMobCaiRev(S)V
    .locals 1
    .param p1, "mobCaiRev"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 753
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setMobCaiRev(SLjava/lang/String;)V

    .line 752
    return-void
.end method

.method public setMobCaiRev(SLjava/lang/String;)V
    .locals 4
    .param p1, "mobCaiRev"    # S
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 741
    const-string/jumbo v2, "setMobCaiRev()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 743
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;-><init>()V

    .line 745
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v2

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    const/4 v2, 0x6

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 740
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setNVBackupFlag(B)V
    .locals 4
    .param p1, "flag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9c1

    const/4 v2, 0x0

    .line 1769
    const-string/jumbo v1, "setNVBackupFlag()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1771
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1772
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1775
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;

    invoke-direct {p0, v3}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;-><init>([B)V

    .line 1776
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
    invoke-virtual {v0, v2, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->setByte(IB)B

    .line 1778
    const-string/jumbo v1, "000000"

    invoke-direct {p0, v0, v3, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1768
    return-void
.end method

.method public setPcbNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "pcbNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1584
    const-string/jumbo v1, "setPcbNumber()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1586
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 1588
    :cond_0
    sget-object v1, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPcbNumber() Failed : Invalid Parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1592
    :cond_1
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;
    const-string/jumbo v1, "000000"

    const/16 v2, 0x1ac7

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1582
    return-void
.end method

.method public setPlmnList([B)V
    .locals 3
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1911
    const-string/jumbo v1, "setPlmnList()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1912
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;-><init>([B)V

    .line 1913
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
    const-string/jumbo v1, "000000"

    const v2, 0xc3b8

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1909
    return-void
.end method

.method public setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;)V
    .locals 1
    .param p1, "prefVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 969
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefVoiceSo"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 949
    const-string/jumbo v3, "setPreferredVoiceSo()"

    invoke-static {v3}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 951
    if-nez p1, :cond_0

    .line 952
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 954
    :cond_0
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;-><init>()V

    .line 955
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;->getEvrcCapability()S

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mEvrcCapabilityEnabled:Z

    .line 957
    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;->getHomePageVoiceSo()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomePageVoiceSo:S

    .line 958
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;->getHomeOrigVoiceSo()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomeOrigVoiceSo:S

    .line 959
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;->getRoamOrigVoiceSo()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mRoamOrigVoiceSo:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    const/16 v2, 0x11d

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 948
    return-void

    .line 955
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 689
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setPrimaryCdmaChannels([ILjava/lang/String;)V

    .line 688
    return-void
.end method

.method public setPrimaryCdmaChannels([ILjava/lang/String;)V
    .locals 5
    .param p1, "primaryChannels"    # [I
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 669
    const-string/jumbo v2, "setPrimaryCdmaChannels()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 671
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 672
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 675
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;-><init>()V

    .line 676
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;
    iput-byte v4, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mNam:B

    .line 678
    const/4 v2, 0x0

    :try_start_0
    aget v2, p1, v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelA:S

    .line 679
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelB:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    const/16 v2, 0x14

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 668
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setProductLineTestFlag([B)V
    .locals 3
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==setProductLineTestFlag()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1845
    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0x7c

    if-le v1, v2, :cond_1

    .line 1846
    :cond_0
    return-void

    .line 1849
    :cond_1
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;-><init>([B)V

    .line 1850
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
    const-string/jumbo v1, "000000"

    const/16 v2, 0x1acb

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1843
    return-void
.end method

.method public setProductLineTestFlagEx([B)V
    .locals 3
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==setProductLineTestFlag()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1824
    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    .line 1825
    :cond_0
    return-void

    .line 1828
    :cond_1
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;-><init>([B)V

    .line 1829
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
    const-string/jumbo v1, "000000"

    const v2, 0xc381

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1822
    return-void
.end method

.method public setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V
    .locals 1
    .param p1, "timerCnt"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 917
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method public setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Ljava/lang/String;)V
    .locals 4
    .param p1, "timerCnt"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 899
    const-string/jumbo v2, "setRoamCount()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 901
    if-nez p1, :cond_0

    .line 902
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 905
    :cond_0
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;-><init>()V

    .line 907
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;
    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->getTimerCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseInt(J)I

    move-result v2

    iput v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->mCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    const/16 v2, 0xa9

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 898
    return-void

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setRtreConfig(S)V
    .locals 0
    .param p1, "rtreCfg"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 761
    return-void
.end method

.method public setSecCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "securityCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1125
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setSecCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method public setSecCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "securityCode"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1113
    const-string/jumbo v1, "setSecCode()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1115
    if-nez p1, :cond_0

    .line 1116
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1118
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;-><init>()V

    .line 1119
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSecCodeType;->setSecCode(Ljava/lang/String;)V

    .line 1121
    const/16 v1, 0x55

    invoke-direct {p0, v0, v1, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1112
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
    .line 727
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setSecondaryCdmaChannels([ILjava/lang/String;)V

    .line 726
    return-void
.end method

.method public setSecondaryCdmaChannels([ILjava/lang/String;)V
    .locals 5
    .param p1, "secondaryChannels"    # [I
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 707
    const-string/jumbo v2, "setSecondaryCdmaChannels()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 709
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 710
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 713
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;-><init>()V

    .line 714
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;
    iput-byte v4, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mNam:B

    .line 716
    const/4 v2, 0x0

    :try_start_0
    aget v2, p1, v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelA:S

    .line 717
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelB:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    const/16 v2, 0x15

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 706
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setSidNid([[Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;)V
    .locals 1
    .param p1, "sn"    # [[Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1386
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setSidNid([[Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;Ljava/lang/String;)V

    .line 1385
    return-void
.end method

.method public setSidNid([[Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;Ljava/lang/String;)V
    .locals 8
    .param p1, "sn"    # [[Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1357
    const-string/jumbo v6, "setSidNid()"

    invoke-static {v6}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1359
    if-nez p1, :cond_0

    .line 1360
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-direct {v6}, Ljava/security/InvalidParameterException;-><init>()V

    throw v6

    .line 1362
    :cond_0
    new-instance v4, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;

    invoke-direct {v4}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;-><init>()V

    .line 1364
    .local v4, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x2

    if-ge v1, v6, :cond_3

    .line 1365
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v6, 0x1

    if-ge v2, v6, :cond_2

    .line 1369
    :try_start_0
    aget-object v6, p1, v1

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->getSid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v5

    .line 1370
    .local v5, "sid":S
    aget-object v6, p1, v1

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->getNid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1374
    .local v3, "nid":S
    const v6, 0x8000

    and-int/2addr v6, v5

    if-eqz v6, :cond_1

    .line 1375
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Parameter out of range : 0<=sid<=32767"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1371
    .end local v3    # "nid":S
    .end local v5    # "sid":S
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1377
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "nid":S
    .restart local v5    # "sid":S
    :cond_1
    iget-object v6, v4, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v6, v6, v1

    new-instance v7, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    invoke-direct {v7}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;-><init>()V

    aput-object v7, v6, v2

    .line 1378
    iget-object v6, v4, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iput-short v5, v6, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    .line 1379
    iget-object v6, v4, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iput-short v3, v6, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    .line 1365
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1364
    .end local v3    # "nid":S
    .end local v5    # "sid":S
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1382
    .end local v2    # "j":I
    :cond_3
    const/16 v6, 0x26

    invoke-direct {p0, v4, v6, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1356
    return-void
.end method

.method public setSpcChangeEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "spcChangeEnabled"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1031
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setSpcChangeEnabled(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 1030
    return-void
.end method

.method public setSpcChangeEnabled(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2
    .param p1, "spcChangeEnabled"    # Ljava/lang/Boolean;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1021
    const-string/jumbo v1, "setSpcChangeEnabled()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;

    invoke-direct {v0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;-><init>()V

    .line 1024
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    .line 1026
    const/16 v1, 0x128

    invoke-direct {p0, v0, v1, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1020
    return-void

    .line 1024
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSrvDomainPref(I)V
    .locals 3
    .param p1, "srvDomainPref"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1700
    const-string/jumbo v1, "setSrvDomainPref()"

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1702
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 1704
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1707
    :cond_1
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;-><init>(I)V

    .line 1709
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;
    const-string/jumbo v1, "000000"

    const/16 v2, 0x352

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1698
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
    .line 499
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;Ljava/lang/String;)V
    .locals 1
    .param p1, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 488
    const-string/jumbo v0, "setTrueImsi()"

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 489
    if-nez p1, :cond_0

    .line 490
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setImsiMcc(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getImsi11_12()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setImsi11_12(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getImsiNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setMinImsiNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getImsiAddrNum()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsiAddrNum(SLjava/lang/String;)V

    .line 487
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
    .line 593
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsi11_12(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public setTrueImsi11_12(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imsiT11_12"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 575
    const-string/jumbo v2, "setTrueImsi11_12()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 578
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 581
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;-><init>()V

    .line 582
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;
    const/4 v2, 0x0

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mNam:B

    .line 584
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mImsi1112:B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    const/16 v2, 0x109

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 574
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 623
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsiAddrNum(SLjava/lang/String;)V

    .line 622
    return-void
.end method

.method public setTrueImsiAddrNum(SLjava/lang/String;)V
    .locals 4
    .param p1, "imsiTAddrNum"    # S
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 608
    const-string/jumbo v2, "setTrueImsiAddrNum()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 610
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;-><init>()V

    .line 611
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;
    const/4 v2, 0x0

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNam:B

    .line 613
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v2

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNum:B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    const/16 v2, 0x10a

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 607
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 561
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsiMcc(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public setTrueImsiMcc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imsiTMcc"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 543
    const-string/jumbo v2, "setTrueImsiMcc()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 545
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 546
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 549
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;-><init>()V

    .line 550
    .local v1, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;
    const/4 v2, 0x0

    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mNam:B

    .line 552
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v2

    iput-short v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mImsiMcc:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    const/16 v2, 0x108

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 542
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 529
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsiNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public setTrueImsiNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phNumber"    # Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x107

    const/16 v5, 0x106

    const/4 v4, 0x1

    .line 513
    const-string/jumbo v2, "setTrueImsiNumber()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 515
    if-nez p1, :cond_0

    .line 516
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 518
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    invoke-direct {p0, v5}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>([B)V

    .line 519
    .local v0, "min1":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    invoke-direct {p0, v6}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvRead(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>([B)V

    .line 521
    .local v1, "min2":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    iget-object v2, v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin1(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    .line 522
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->phStringToMin2(Ljava/lang/String;)S

    move-result v3

    aput-short v3, v2, v4

    .line 524
    invoke-direct {p0, v0, v5, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 525
    invoke-direct {p0, v1, v6, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 512
    return-void
.end method

.method public setTrueImsiS1([Ljava/lang/String;)V
    .locals 1
    .param p1, "imsiTS1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1497
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsiS1([Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public setTrueImsiS1([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "imsiTS1"    # [Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1478
    const-string/jumbo v2, "setTrueImsiS1()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1480
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1481
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 1485
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;-><init>()V

    .line 1487
    .local v1, "min":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
    const/4 v2, 0x0

    :try_start_0
    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mNam:B

    .line 1488
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1489
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    const/16 v2, 0x106

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1477
    return-void

    .line 1490
    :catch_0
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setTrueImsiS2([Ljava/lang/String;)V
    .locals 1
    .param p1, "imsiTS2"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1534
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setTrueImsiS2([Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method public setTrueImsiS2([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "imsiTS2"    # [Ljava/lang/String;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1515
    const-string/jumbo v2, "setTrueImsiS2()"

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1517
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1518
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 1522
    :cond_1
    new-instance v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;

    invoke-direct {v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;-><init>()V

    .line 1524
    .local v1, "min":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
    const/4 v2, 0x0

    :try_start_0
    iput-byte v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mNam:B

    .line 1525
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v3

    const/4 v4, 0x0

    aput-short v3, v2, v4

    .line 1526
    iget-object v2, v1, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseUnsignedShort(Ljava/lang/String;)S

    move-result v3

    const/4 v4, 0x1

    aput-short v3, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    const/16 v2, 0x107

    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1514
    return-void

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V
    .locals 1
    .param p1, "voiceConfig"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 793
    const-string/jumbo v0, "000000"

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "voiceConfig"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    .param p2, "spc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 780
    const-string/jumbo v0, "setVoiceConfig()"

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 781
    if-nez p1, :cond_0

    .line 782
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getAutoAnswerStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getAirTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getRoamTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getCurrentTtyMode()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setCurrentTtyMode(SLjava/lang/String;)V

    .line 788
    invoke-virtual {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;->getPreferredVoiceSo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/qcnvitems/QcNvItems;->setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public setWifiPerf(I)V
    .locals 3
    .param p1, "wifiPerf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1662
    const-string/jumbo v1, "setWifiPerf()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->vLog(Ljava/lang/String;)V

    .line 1664
    if-gez p1, :cond_0

    .line 1666
    sget-object v1, Lcom/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setWifiPerf() Failed : Invalid Parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1670
    :cond_0
    new-instance v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;-><init>(I)V

    .line 1672
    .local v0, "o":Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;
    const-string/jumbo v1, "000000"

    const/16 v2, 0x1ac9

    invoke-direct {p0, v0, v2, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->doNvWrite(Lcom/qualcomm/qcnvitems/BaseQCNvItemType;ILjava/lang/String;)V

    .line 1660
    return-void
.end method

.method public unregisterOnServiceConnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->unregisterOnServiceConnected(Landroid/os/Handler;)V

    .line 1864
    :cond_0
    return-void
.end method

.method public updateAkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "akey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 179
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
    .line 1001
    return-void
.end method
