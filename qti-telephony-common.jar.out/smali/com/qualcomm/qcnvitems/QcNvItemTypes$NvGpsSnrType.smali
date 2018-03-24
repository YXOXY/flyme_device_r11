.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvGpsSnrType"
.end annotation


# instance fields
.field private mGpsSnr:[B


# direct methods
.method constructor <init>([B)V
    .locals 3
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 992
    const/16 v1, 0x7c

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->mGpsSnr:[B

    .line 993
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->mGpsSnr:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    :cond_0
    return-void
.end method


# virtual methods
.method public getGpsSnr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1001
    const-string/jumbo v1, ""

    .line 1003
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x7c

    if-ge v0, v2, :cond_0

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->mGpsSnr:[B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    return-object v1
.end method

.method public getGpsSnrByteArray()[B
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->mGpsSnr:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1030
    const/16 v0, 0x7c

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1020
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x7c

    if-ge v1, v2, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->mGpsSnr:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1035
    const-string/jumbo v0, "gpssnr:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvGpsSnrType;->getGpsSnr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
