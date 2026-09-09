.class Lcom/baidu/mobstat/autotrace/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    const-string v0, ""

    .line 156
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 157
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/autotrace/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v2, "android.widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.view"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    const/4 v1, 0x0

    .line 169
    :try_start_0
    const-string v2, "android.support.v7.widget.RecyclerView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const-string v0, "RecyclerView"

    .line 179
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/autotrace/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    const-string v0, "Object"

    .line 189
    :cond_3
    return-object v0

    .line 158
    :cond_4
    instance-of v1, p0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 159
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    const-string v1, ""

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :cond_1
    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 273
    check-cast v0, Landroid/view/View;

    .line 275
    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    :try_start_0
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 279
    check-cast v0, Landroid/widget/ListView;

    .line 280
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 284
    goto :goto_0

    .line 285
    :cond_2
    const-class v2, Landroid/widget/GridView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    :try_start_1
    instance-of v2, v0, Landroid/widget/GridView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    check-cast v0, Landroid/widget/GridView;

    .line 289
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_3
    const-string v2, "RecyclerView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    :try_start_2
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 298
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    goto :goto_0

    .line 282
    :catch_2
    move-exception v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    const-string v0, ""

    .line 203
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/autotrace/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "android.widget"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/autotrace/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 518
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 520
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-object v2

    .line 524
    :cond_1
    const/4 v0, 0x0

    .line 526
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/autotrace/b;->b(Landroid/app/Activity;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 530
    :goto_1
    if-eqz v4, :cond_0

    move-object v1, p1

    .line 535
    :goto_2
    if-eqz v1, :cond_3

    .line 536
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 537
    const-string v0, "p"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    invoke-static {v1}, Lcom/baidu/mobstat/autotrace/b;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    const-string v3, ""

    .line 542
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_6

    instance-of v6, v0, Landroid/view/View;

    if-eqz v6, :cond_6

    .line 544
    check-cast v0, Landroid/view/View;

    .line 545
    invoke-static {v0}, Lcom/baidu/mobstat/autotrace/b;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_3
    invoke-static {v1, v0}, Lcom/baidu/mobstat/autotrace/b;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    invoke-static {v1}, Lcom/baidu/mobstat/autotrace/b;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_2
    const-string v3, "i"

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v0, "t"

    invoke-static {v1}, Lcom/baidu/mobstat/autotrace/b;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 559
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 560
    if-eqz v0, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    move-object v0, v2

    .line 572
    :goto_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 574
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_0

    .line 575
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 574
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 527
    :catch_0
    move-exception v1

    move-object v4, v0

    goto :goto_1

    .line 564
    :cond_4
    :try_start_3
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    .line 565
    check-cast v0, Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_6
    move-object v1, v0

    .line 567
    goto :goto_2

    .line 568
    :catch_1
    move-exception v0

    .line 569
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_4

    .line 577
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_6

    :cond_6
    move-object v0, v3

    goto :goto_3
.end method

.method public static b(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-static {p0}, Lcom/baidu/mobstat/autotrace/b;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 63
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 225
    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 229
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 232
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    move v3, v2

    .line 233
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    if-ne v2, v5, :cond_4

    .line 236
    add-int/lit8 v2, v3, 0x1

    .line 239
    :goto_2
    if-ne v4, p0, :cond_3

    move v0, v2

    .line 244
    :goto_3
    if-lez v0, :cond_2

    .line 245
    add-int/lit8 v0, v0, -0x1

    .line 248
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method private static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, ""

    .line 208
    if-nez p0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_2
    if-nez v0, :cond_0

    .line 218
    const-string v0, ""

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 308
    const-string v2, ""

    .line 310
    if-nez p0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-object v2

    .line 314
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/autotrace/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v3, "android.widget"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.view"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    check-cast v0, Landroid/view/ViewGroup;

    .line 326
    const/4 v1, 0x0

    .line 328
    :try_start_0
    const-string v3, "android.support.v4.view.ViewPager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 333
    :goto_1
    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    :try_start_1
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    move v3, v4

    move v1, v4

    .line 347
    :goto_2
    if-ge v3, v6, :cond_3

    .line 348
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 349
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-static {v4}, Lcom/baidu/mobstat/autotrace/b;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 352
    add-int/lit8 v1, v1, 0x1

    .line 347
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 356
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-lt v3, v7, :cond_4

    if-lt v1, v7, :cond_4

    .line 358
    :try_start_2
    new-instance v1, Lcom/baidu/mobstat/autotrace/c;

    invoke-direct {v1}, Lcom/baidu/mobstat/autotrace/c;-><init>()V

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 368
    :goto_3
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    div-int v1, v3, v1

    .line 370
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 371
    if-eqz v0, :cond_5

    .line 372
    rem-int v0, v1, v0

    .line 374
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v2, v0

    .line 387
    goto/16 :goto_0

    .line 381
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_5

    .line 383
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_5

    .line 364
    :catch_1
    move-exception v1

    goto :goto_3

    .line 329
    :catch_2
    move-exception v3

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public static d(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v0

    .line 452
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 454
    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 455
    if-eqz v2, :cond_0

    .line 460
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    move-object v0, v1

    .line 464
    goto :goto_0
.end method

.method public static e(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 485
    .line 488
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 493
    :cond_0
    :goto_0
    const-string v1, ":id/"

    .line 494
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 496
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 497
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 498
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    :cond_1
    if-nez v0, :cond_2

    .line 505
    const-string v0, ""

    .line 507
    :cond_2
    return-object v0

    .line 489
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f(Landroid/view/View;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 586
    const v0, -0x17700

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/util/Map;

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 603
    :cond_1
    :goto_0
    return-object v0

    .line 594
    :cond_2
    :try_start_0
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    .line 600
    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
