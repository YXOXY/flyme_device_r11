.class public Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
.super Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
.source "QmiNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrueImsi"
.end annotation


# static fields
.field public static final IMSI_ADDR_NUM_SIZE:I = 0x1


# instance fields
.field private imsiAddrNum:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;-><init>()V

    .line 441
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsiAddrNum:S

    .line 439
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "imsi11_12"    # Ljava/lang/String;
    .param p3, "imsiS1"    # Ljava/lang/String;
    .param p4, "imsiS2"    # Ljava/lang/String;
    .param p5, "imsiAddrNum"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0, p5}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->setImsiAddrNum(S)V

    .line 445
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;-><init>([B)V

    .line 452
    invoke-super {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getSize()I

    move-result v2

    .line 453
    .local v2, "sSize":I
    array-length v3, p1

    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_0

    .line 454
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 456
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 457
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 458
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    iput-short v3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsiAddrNum:S

    .line 450
    return-void
.end method


# virtual methods
.method public getImsiAddrNum()S
    .locals 1

    .prologue
    .line 464
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsiAddrNum:S

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 478
    invoke-super {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setImsiAddrNum(S)V
    .locals 3
    .param p1, "imsiAddrNum"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkByte(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsiAddrNum:S

    .line 467
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 483
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->getSize()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 484
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 485
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->mcc:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 488
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsi11_12:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 490
    :cond_1
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    .line 491
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsiS1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 493
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 494
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsiS2:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 496
    :cond_3
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsiAddrNum:S

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 497
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imsiAddrNum=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;->imsiAddrNum:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
