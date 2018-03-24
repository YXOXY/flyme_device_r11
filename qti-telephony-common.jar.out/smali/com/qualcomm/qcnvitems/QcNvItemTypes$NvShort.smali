.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvShort"
.end annotation


# instance fields
.field mVal:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->mVal:S

    .line 59
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "bArray"    # [B

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->mVal:S

    .line 63
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x2

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->mVal:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string/jumbo v0, "val=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvShort;->mVal:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
