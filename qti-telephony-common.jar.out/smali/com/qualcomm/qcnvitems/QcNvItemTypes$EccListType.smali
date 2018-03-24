.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EccListType"
.end annotation


# instance fields
.field mEccList:[[B


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 765
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v1, 0xa

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    .line 764
    return-void
.end method

.method constructor <init>([B)V
    .locals 7
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 768
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 769
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 770
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v5}, [I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iput-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    .line 772
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 773
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 774
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    aget-object v3, v3, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v2

    .line 773
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 772
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v2    # "j":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getEcclist()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 804
    new-array v3, v6, [Ljava/lang/String;

    .line 806
    .local v3, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 807
    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    .line 808
    const/4 v1, 0x1

    .line 809
    .local v1, "isAllZero":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 810
    iget-object v4, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v2

    if-eqz v4, :cond_0

    .line 811
    const/4 v1, 0x0

    .line 813
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    aget-object v5, v5, v0

    aget-byte v5, v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 815
    :cond_1
    if-eqz v1, :cond_2

    .line 816
    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    .line 806
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    .end local v1    # "isAllZero":Z
    .end local v2    # "j":I
    :cond_3
    return-object v3
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 834
    const/16 v0, 0x1e

    return v0
.end method

.method public setEccList([Ljava/lang/String;)V
    .locals 7
    .param p1, "in"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x3

    .line 781
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v4}, [I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    .line 783
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eq v2, v5, :cond_1

    .line 784
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 787
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_6

    .line 788
    aget-object v2, p1, v0

    if-eqz v2, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 789
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 790
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    aget-object v2, v2, v0

    aput-byte v6, v2, v1

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 794
    .end local v1    # "j":I
    :cond_3
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 795
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 798
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 799
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 787
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    .end local v1    # "j":I
    :cond_6
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->getSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 825
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 826
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 827
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    aget-object v3, v3, v1

    aget-byte v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 826
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 825
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 830
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 838
    const-string/jumbo v2, ""

    .line 839
    .local v2, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%d : "

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 841
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$EccListType;->mEccList:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 844
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    .end local v1    # "j":I
    :cond_1
    const-string/jumbo v3, "ecc_list : %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
