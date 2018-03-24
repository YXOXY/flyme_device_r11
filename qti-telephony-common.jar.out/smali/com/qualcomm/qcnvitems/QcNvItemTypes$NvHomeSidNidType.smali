.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvHomeSidNidType"
.end annotation


# instance fields
.field mNam:B

.field mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 402
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mNam:B

    .line 403
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    .line 401
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "bArray"    # [B

    .prologue
    const/16 v4, 0x14

    .line 406
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 407
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 408
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mNam:B

    .line 409
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->skipPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 410
    new-array v2, v4, [Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    .line 411
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 412
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    new-instance v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    invoke-direct {v3}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;-><init>()V

    aput-object v3, v2, v1

    .line 413
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    .line 414
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 419
    const/16 v0, 0x52

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 436
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mNam:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->addPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 438
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 423
    const-string/jumbo v1, ""

    .line 425
    .local v1, "ppString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvHomeSidNidType;->mPair:[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->toDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    return-object v1
.end method
