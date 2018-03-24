.class final Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils$2;
.super Landroid/os/Handler;
.source "ExpOperatorSwitchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 469
    const-string/jumbo v0, "ExpOperatorSwitchUtils"

    const-string/jumbo v1, "mOperatorHandler do not handlemessage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    return-void

    .line 466
    :pswitch_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->-wrap0()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->-wrap1(I)V

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
