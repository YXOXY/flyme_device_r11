.class public abstract Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.super Ljava/lang/Object;
.source "BaseQCNvItemType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addPaddingBytes(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "num"    # I

    .prologue
    .line 43
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 44
    .local v0, "dest":[B
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 42
    return-void
.end method

.method protected createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 28
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 30
    return-object v0
.end method

.method public createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 34
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSize()I
.end method

.method protected pack(BB)[B
    .locals 2
    .param p1, "a"    # B
    .param p2, "b"    # B

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method protected pack(BI)[B
    .locals 2
    .param p1, "a"    # B
    .param p2, "b"    # I

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method protected pack(BS)[B
    .locals 2
    .param p1, "a"    # B
    .param p2, "b"    # S

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method protected pack(BSS)[B
    .locals 2
    .param p1, "a"    # B
    .param p2, "b"    # S
    .param p3, "c"    # S

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method protected pack(SS)[B
    .locals 2
    .param p1, "a"    # S
    .param p2, "b"    # S

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method protected skipPaddingBytes(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "num"    # I

    .prologue
    .line 38
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 39
    .local v0, "dest":[B
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract toDebugString()Ljava/lang/String;
.end method
