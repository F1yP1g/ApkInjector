.class final Lcom/lu/maliciouscode/PhoneInfoTool$1;
.super Ljava/lang/Object;
.source "PhoneInfoTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lu/maliciouscode/PhoneInfoTool;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 306
    invoke-static {}, Lcom/lu/maliciouscode/PhoneInfoTool;->startRequest()V

    .line 307
    return-void
.end method
