#rdar://47999514

Area:
UIKit

Summary:
When sharing file in a relative url with airdrop from iOS (eg. by UIDocumentInteractionController) to macOS, you got a random name file on Mac with file name and location encoded in an actual bplist file.

Steps to Reproduce:
Run demo app (demo.zip) on your iOS device and tap the share button to share test.txt to your Mac

Expected Results:
got test.txt in your Downloads folder

Actual Results:
got text-14C77DDA44AD-1.txt (actually it's a plist file in binary format) instead

Version/Build:
Xcode 10.1 (10B61)
macOS 10.14.2 (18C54)
iOS 12.1.4 (16D57)

Configuration:
