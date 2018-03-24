.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvByte"
.end annotation


# instance fields
.field mVal:B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    .line 33
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .param p1, "bArray"    # [B

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 38
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    .line 37
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    const-string/jumbo v0, "val=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvByte;->mVal:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
