.class final Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v2, 0x64

    .line 453
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->-get0()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->-get0()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    const-string/jumbo v0, "ExpOperatorSwitchUtils"

    const-string/jumbo v1, "removeMessages EVENT_NOTIFY_OPERATOR_CHANGED_WAIT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->-get0()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExpOperatorSwitchUtils;->-get0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 458
    const-wide/16 v2, 0x7d0

    .line 457
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 452
    return-void
.end method
