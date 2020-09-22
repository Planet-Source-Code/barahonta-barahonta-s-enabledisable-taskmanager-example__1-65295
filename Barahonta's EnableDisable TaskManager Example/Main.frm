VERSION 5.00
Begin VB.Form Main 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Barahonta's Enable\Disable TaskManager Example"
   ClientHeight    =   6315
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6015
   Icon            =   "Main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Main.frx":08CA
   ScaleHeight     =   6315
   ScaleWidth      =   6015
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CmdDisable 
      Caption         =   "Disable"
      Height          =   375
      Left            =   4560
      TabIndex        =   1
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton CmdEnable 
      Caption         =   "Enable"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   2040
      Width           =   1215
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CmdDisable_Click()
A = Shell("REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f", vbNormalFocus)
End Sub
 
Private Sub CmdEnable_Click()
A = Shell("REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f", vbNormalFocus)
End Sub

