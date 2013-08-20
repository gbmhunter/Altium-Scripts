Sub RunMainScript
    FormMainScript.ShowModal
End Sub

Sub Button1Click(Sender)
    ConfigInit()

    ' PROJECT
    ' Important to check if project compiles first
    If(CheckProjectCompiles() = false) Then
        Exit Sub
    End If

    ' SCHEMATICS
    CheckLayers()
    CheckPowerPortOrientation()
    CheckNoSupplierPartNumShown()

    ' PCB
    CheckTentedVias()
    CheckNameVersionDate()
End Sub

Sub StdOut(msg)
    ' Output text
    MemoStdOut.Text = MemoStdOut.Text + msg
End Sub

Sub StdOutNl(msg)
    ' Output text
    MemoStdOut.Text = MemoStdOut.Text + msg + VbCr + VbLf
End Sub

Sub StdErr(msg)
    ' Output text
    MemoStdErr.Text = MemoStdErr.Text + msg
End Sub

Sub StdErrNl(msg)
    ' Output text
    MemoStdErr.Text = MemoStdErr.Text + msg + VbCr + VbLf
End Sub
