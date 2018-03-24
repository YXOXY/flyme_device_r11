.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvMin2Type"
.end annotation


# instance fields
.field mMin2:[S

.field mNam:B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mNam:B

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    .line 154
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
    const/4 v4, 0x1

    .line 159
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 160
    const/4 v1, 0x2

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    .line 161
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mNam:B

    .line 163
    invoke-virtual {p0, v0, v4}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->skipPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 164
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/4 v3, 0x0

    aput-short v2, v1, v3

    .line 165
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    aput-short v2, v1, v4

    .line 159
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x6

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 170
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mNam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {p0, v0, v3}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->addPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 172
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    const-string/jumbo v0, "nam:%x, min1[0]:%x, min1[1]:%x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v2, v2, v3

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin2Type;->mMin2:[S

    aget-short v2, v2, v4

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
