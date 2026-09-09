.class Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field private a:Landroid/view/Window$Callback;

.field private b:Lcom/baidu/mobstat/autotrace/MyWindowCallBacks$IDispatchTouchEvent;


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->b:Lcom/baidu/mobstat/autotrace/MyWindowCallBacks$IDispatchTouchEvent;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->b:Lcom/baidu/mobstat/autotrace/MyWindowCallBacks$IDispatchTouchEvent;

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks$IDispatchTouchEvent;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 70
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 76
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 82
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 88
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 106
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 124
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 148
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/MyWindowCallBacks;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
