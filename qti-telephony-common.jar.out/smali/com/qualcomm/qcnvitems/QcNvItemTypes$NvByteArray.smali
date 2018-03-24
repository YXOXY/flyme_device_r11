.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvByteArray"
.end annotation


# instance fields
.field private data:[B


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
    .line 1257
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1258
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    .line 1259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1257
    :cond_0
    return-void
.end method


# virtual methods
.method public getByte(I)B
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getByteArray()[B
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    array-length v0, v0

    return v0
.end method

.method public getSpecifyByteArray(II[B)Z
    .locals 5
    .param p1, "startIdx"    # I
    .param p2, "length"    # I
    .param p3, "outBuf"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1277
    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    .line 1278
    :cond_0
    return v4

    .line 1277
    :cond_1
    add-int v2, p1, p2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    array-length v3, v3

    if-gt v2, v3, :cond_0

    .line 1281
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p1

    .end local p1    # "startIdx":I
    .local v1, "startIdx":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1282
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "startIdx":I
    .restart local p1    # "startIdx":I
    aget-byte v2, v2, v1

    aput-byte v2, p3, v0

    .line 1281
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    .end local p1    # "startIdx":I
    .restart local v1    # "startIdx":I
    goto :goto_0

    .line 1284
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1313
    const-string/jumbo v1, ""

    .line 1314
    .local v1, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    array-length v2, v3

    .line 1315
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    aget-byte v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    :cond_0
    return-object v1
.end method

.method public setByte(IB)B
    .locals 1
    .param p1, "idx"    # I
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    aput-byte p2, v0, p1

    return p2
.end method

.method public setSpecifyByteArray(II[B)Z
    .locals 5
    .param p1, "startIdx"    # I
    .param p2, "length"    # I
    .param p3, "srcBuf"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1288
    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    .line 1289
    :cond_0
    return v4

    .line 1288
    :cond_1
    add-int v2, p1, p2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    array-length v3, v3

    if-gt v2, v3, :cond_0

    .line 1292
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p1

    .end local p1    # "startIdx":I
    .local v1, "startIdx":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1293
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "startIdx":I
    .restart local p1    # "startIdx":I
    aget-byte v3, p3, v0

    aput-byte v3, v2, v1

    .line 1292
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    .end local p1    # "startIdx":I
    .restart local v1    # "startIdx":I
    goto :goto_0

    .line 1295
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 1299
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    array-length v2, v3

    .line 1300
    .local v2, "size":I
    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1301
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1302
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->data:[B

    aget-byte v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1322
    const-string/jumbo v0, "NvByteArrary:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByteArray;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
