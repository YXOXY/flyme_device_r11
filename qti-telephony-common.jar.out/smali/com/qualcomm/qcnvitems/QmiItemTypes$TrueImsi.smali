.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;
.super Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
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
    .line 715
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;-><init>()V

    .line 716
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsiAddrNum:S

    .line 714
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
    .line 721
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0, p5}, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->setImsiAddrNum(S)V

    .line 720
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
    .line 726
    invoke-direct {p0, p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;-><init>([B)V

    .line 727
    invoke-super {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;->getSize()I

    move-result v2

    .line 728
    .local v2, "sSize":I
    array-length v3, p1

    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_0

    .line 729
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 731
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 732
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 733
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    iput-short v3, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsiAddrNum:S

    .line 725
    return-void
.end method


# virtual methods
.method public getImsiAddrNum()S
    .locals 1

    .prologue
    .line 739
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsiAddrNum:S

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 753
    invoke-super {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;->getSize()I

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
    .line 744
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkByte(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsiAddrNum:S

    .line 742
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
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

    .line 758
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->getSize()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 759
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 760
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->mcc:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsi11_12:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 765
    :cond_1
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    .line 766
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsiS1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 768
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 769
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsiS2:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 771
    :cond_3
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsiAddrNum:S

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseByte(S)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 772
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imsiAddrNum=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;->imsiAddrNum:S

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
