.class public Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerCount"
.end annotation


# static fields
.field public static final NAM_ID_SIZE:I = 0x1

.field public static final TIMER_SIZE:I = 0x4


# instance fields
.field private namId:S

.field private timerCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "timerCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 939
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;-><init>(JS)V

    .line 938
    return-void
.end method

.method public constructor <init>(JS)V
    .locals 1
    .param p1, "timerCount"    # J
    .param p3, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 934
    invoke-virtual {p0, p3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->setNamId(S)V

    .line 935
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->setTimerCount(J)V

    .line 933
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 943
    array-length v1, p1

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 944
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 946
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 947
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->namId:S

    .line 948
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->timerCount:J

    .line 942
    return-void
.end method


# virtual methods
.method public getNamId()S
    .locals 1

    .prologue
    .line 952
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->namId:S

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x5

    return v0
.end method

.method public getTimerCount()J
    .locals 2

    .prologue
    .line 961
    iget-wide v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->timerCount:J

    return-wide v0
.end method

.method public setNamId(S)V
    .locals 0
    .param p1, "namId"    # S

    .prologue
    .line 956
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkByte(S)V

    .line 957
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->namId:S

    .line 955
    return-void
.end method

.method public setTimerCount(J)V
    .locals 1
    .param p1, "timerCount"    # J

    .prologue
    .line 965
    invoke-static {p1, p2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkInt(J)V

    .line 966
    iput-wide p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->timerCount:J

    .line 964
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 976
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 977
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->namId:S

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 978
    iget-wide v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->timerCount:J

    invoke-static {v2, v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 979
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 984
    const-string/jumbo v1, "namId=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->namId:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "temp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timerCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;->timerCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
