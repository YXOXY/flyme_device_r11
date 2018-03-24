.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvIntegerArray"
.end annotation


# instance fields
.field private mVal:[I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x1f

    .line 1201
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1202
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 1203
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 1205
    :cond_1
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->mVal:[I

    .line 1206
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->mVal:[I

    aput p2, v0, p1

    .line 1201
    return-void
.end method

.method constructor <init>([B)V
    .locals 5
    .param p1, "bArray"    # [B

    .prologue
    const/16 v4, 0x1f

    .line 1209
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1210
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->mVal:[I

    .line 1211
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1213
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1214
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->mVal:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 1213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1209
    :cond_0
    return-void
.end method


# virtual methods
.method public getInteger(I)I
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1237
    if-ltz p1, :cond_0

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_1

    .line 1238
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->mVal:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1223
    const/16 v0, 0x7c

    return v0
.end method

.method public setInteger(II)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1244
    if-ltz p1, :cond_0

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_1

    .line 1245
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->mVal:[I

    aput p2, v0, p1

    .line 1243
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1229
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    .line 1230
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->mVal:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1233
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1219
    const-string/jumbo v0, "val1=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvIntegerArray;->mVal:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
