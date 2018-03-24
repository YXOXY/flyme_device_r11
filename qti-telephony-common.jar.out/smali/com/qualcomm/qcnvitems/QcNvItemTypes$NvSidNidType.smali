.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvSidNidType"
.end annotation


# instance fields
.field mNam:B

.field mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mNam:B

    .line 347
    const-class v0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    .line 345
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .param p1, "bArray"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 350
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 351
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 352
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mNam:B

    .line 353
    invoke-virtual {p0, v0, v5}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->skipPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 354
    const-class v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    filled-new-array {v6, v5}, [I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    iput-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 356
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 357
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v3, v3, v1

    new-instance v4, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    invoke-direct {v4}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;-><init>()V

    aput-object v4, v3, v2

    .line 358
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput-short v4, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    .line 359
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput-short v4, v3, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 355
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v2    # "j":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 365
    const/16 v0, 0xa

    return v0
.end method

.method public toByteArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 383
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->getSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 384
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mNam:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 385
    invoke-virtual {p0, v0, v4}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->addPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 387
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 388
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 370
    const-string/jumbo v2, ""

    .line 372
    .local v2, "ppString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidType;->mPair:[[Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method
