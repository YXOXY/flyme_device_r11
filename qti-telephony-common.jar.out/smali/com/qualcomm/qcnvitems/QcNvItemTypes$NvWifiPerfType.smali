.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvWifiPerfType"
.end annotation


# instance fields
.field private mWifiPerf:[I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "wifiPerf"    # I

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1046
    const/16 v0, 0x1f

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->mWifiPerf:[I

    .line 1047
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->mWifiPerf:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1044
    return-void
.end method

.method constructor <init>([B)V
    .locals 5
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f

    .line 1050
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1052
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->mWifiPerf:[I

    .line 1053
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1055
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1057
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->mWifiPerf:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 1055
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 1085
    const/16 v0, 0x7c

    return v0
.end method

.method public getWifiPerf()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->mWifiPerf:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiPerfInteger()I
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->mWifiPerf:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1075
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    .line 1077
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->mWifiPerf:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1075
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1090
    const-string/jumbo v0, "wifiperf:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvWifiPerfType;->getWifiPerf()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
