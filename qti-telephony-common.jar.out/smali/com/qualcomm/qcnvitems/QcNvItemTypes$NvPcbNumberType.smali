.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvPcbNumberType"
.end annotation


# instance fields
.field private mPcbNumber:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 927
    const/16 v0, 0x21

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    .line 926
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "pcbNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 942
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 945
    const/16 v3, 0x21

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    .line 947
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 949
    .local v2, "szTemp":[B
    array-length v1, v2

    .line 950
    .local v1, "length":I
    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    .line 951
    const/16 v1, 0x1f

    .line 954
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    add-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 956
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 957
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v4, v2, v4

    aput-byte v4, v3, v0

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    aput-byte v5, v3, v0

    .line 942
    return-void
.end method

.method constructor <init>([B)V
    .locals 4
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 932
    const/16 v2, 0x21

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    .line 934
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 936
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 937
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 939
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    .line 930
    return-void
.end method


# virtual methods
.method public getPcbNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 963
    const-string/jumbo v1, ""

    .line 964
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    aget-byte v3, v3, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 966
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 977
    const/16 v0, 0x20

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 971
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 972
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->mPcbNumber:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 973
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 981
    const-string/jumbo v0, "pcb_number:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPcbNumberType;->getPcbNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
