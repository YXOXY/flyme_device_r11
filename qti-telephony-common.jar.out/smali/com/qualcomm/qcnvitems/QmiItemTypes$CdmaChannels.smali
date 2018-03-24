.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaChannels"
.end annotation


# static fields
.field public static final PRIMARY_A_SIZE:I = 0x2

.field public static final PRIMARY_B_SIZE:I = 0x2

.field public static final SECONDARY_A_SIZE:I = 0x2

.field public static final SECONDARY_B_SIZE:I = 0x2


# instance fields
.field private primaryA:I

.field private primaryB:I

.field private secondaryA:I

.field private secondaryB:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "primaryA"    # I
    .param p2, "primaryB"    # I
    .param p3, "secondaryA"    # I
    .param p4, "secondaryB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 798
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->setPrimaryChannelA(I)V

    .line 799
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->setPrimaryChannelB(I)V

    .line 800
    invoke-virtual {p0, p3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->setSecondaryChannelA(I)V

    .line 801
    invoke-virtual {p0, p4}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->setSecondaryChannelB(I)V

    .line 797
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 805
    array-length v1, p1

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 806
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 808
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 809
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryA:I

    .line 810
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryB:I

    .line 811
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryA:I

    .line 812
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryB:I

    .line 804
    return-void
.end method


# virtual methods
.method public getPrimaryChannelA()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryA:I

    return v0
.end method

.method public getPrimaryChannelB()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryB:I

    return v0
.end method

.method public getSecondaryChannelA()I
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryA:I

    return v0
.end method

.method public getSecondaryChannelB()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 869
    const/16 v0, 0x8

    return v0
.end method

.method public setPrimaryChannelA(I)V
    .locals 3
    .param p1, "primaryA"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 821
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryA:I

    .line 819
    return-void

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPrimaryChannelB(I)V
    .locals 3
    .param p1, "primaryB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 834
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryB:I

    .line 832
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSecondaryChannelA(I)V
    .locals 3
    .param p1, "secondaryA"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 847
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryA:I

    .line 845
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSecondaryChannelB(I)V
    .locals 3
    .param p1, "secondaryB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 860
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryB:I

    .line 858
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 875
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryA:I

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 876
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryB:I

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 877
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryA:I

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 878
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryB:I

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 879
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 884
    const-string/jumbo v0, "primaryA=%d, primaryB=%d, secondaryA=%d, secondaryB=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 885
    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->primaryB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;->secondaryB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 884
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
