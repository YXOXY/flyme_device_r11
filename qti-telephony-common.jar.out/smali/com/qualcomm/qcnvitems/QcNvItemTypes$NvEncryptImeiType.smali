.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvEncryptImeiType"
.end annotation


# instance fields
.field private mEncryptImei:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 874
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->mEncryptImei:[B

    .line 872
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
    const/16 v4, 0xf

    .line 877
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 879
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->mEncryptImei:[B

    .line 881
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 883
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 885
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->mEncryptImei:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_0
    return-void
.end method


# virtual methods
.method public getEncryptImei()Ljava/lang/String;
    .locals 4

    .prologue
    .line 891
    const-string/jumbo v1, ""

    .line 893
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->mEncryptImei:[B

    aget-byte v3, v3, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 912
    const/16 v0, 0x80

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 905
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->mEncryptImei:[B

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 907
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 917
    const-string/jumbo v0, "encrypt_imei:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvEncryptImeiType;->getEncryptImei()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
