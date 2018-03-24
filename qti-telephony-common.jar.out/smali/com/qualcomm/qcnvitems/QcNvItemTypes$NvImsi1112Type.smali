.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvImsi1112Type"
.end annotation


# instance fields
.field mImsi1112:B

.field mNam:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 193
    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mNam:B

    .line 194
    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mImsi1112:B

    .line 192
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 198
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mNam:B

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mImsi1112:B

    .line 197
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x2

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 205
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mNam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 206
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mImsi1112:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 207
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    const-string/jumbo v0, "nam:%x, imsi_11_12:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsi1112Type;->mImsi1112:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
