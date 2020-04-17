Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42421AD6F5
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Apr 2020 09:07:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 536358815C;
	Fri, 17 Apr 2020 07:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYhN8YN9tXXz; Fri, 17 Apr 2020 07:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73C1287E27;
	Fri, 17 Apr 2020 07:07:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E74801BF388
 for <devel@linuxdriverproject.org>; Fri, 17 Apr 2020 07:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E40868786C
 for <devel@linuxdriverproject.org>; Fri, 17 Apr 2020 07:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TJEqV7X1Rj4d for <devel@linuxdriverproject.org>;
 Fri, 17 Apr 2020 07:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4BAC87812
 for <devel@driverdev.osuosl.org>; Fri, 17 Apr 2020 07:07:51 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 37AB0F6534BED5201DE4;
 Fri, 17 Apr 2020 15:07:48 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Fri, 17 Apr 2020
 15:07:40 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: rtl8723bs: remove some variables in hal_btcoex.c
Date: Fri, 17 Apr 2020 15:33:10 +0800
Message-ID: <20200417073310.40893-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: Hulk Robot <hulkci@huawei.com>, Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2Jz
L2hhbC9oYWxfYnRjb2V4LmM6NDU6MjY6IHdhcm5pbmc6IOKAmGlvU3RhU3RyaW5n4oCZCmRlZmlu
ZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCiBzdGF0aWMgY29uc3Qg
Y2hhciAqY29uc3QgaW9TdGFTdHJpbmdbXSA9IHsKICAgICAgICAgICAgICAgICAgICAgICAgICBe
fn5+fn5+fn5+fgpkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2hhbC9oYWxfYnRjb2V4LmM6Mzg6
MjY6IHdhcm5pbmc6CuKAmGgyY1N0YVN0cmluZ+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1
bnVzZWQtY29uc3QtdmFyaWFibGU9XQogc3RhdGljIGNvbnN0IGNoYXIgKmNvbnN0IGgyY1N0YVN0
cmluZ1tdID0gewogICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fgpkcml2ZXJz
L3N0YWdpbmcvcnRsODcyM2JzL2hhbC9oYWxfYnRjb2V4LmM6MzM6MjY6IHdhcm5pbmc6CuKAmEJ0
TGlua1JvbGVTdHJpbmfigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZh
cmlhYmxlPV0KIHN0YXRpYyBjb25zdCBjaGFyICpjb25zdCBCdExpbmtSb2xlU3RyaW5nW10gPSB7
CiAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fgpkcml2ZXJzL3N0YWdp
bmcvcnRsODcyM2JzL2hhbC9oYWxfYnRjb2V4LmM6MjM6MjY6IHdhcm5pbmc6CuKAmEJ0U3BlY1N0
cmluZ+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQog
c3RhdGljIGNvbnN0IGNoYXIgKmNvbnN0IEJ0U3BlY1N0cmluZ1tdID0gewogICAgICAgICAgICAg
ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fgpkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2hhbC9o
YWxfYnRjb2V4LmM6MTU6MjY6IHdhcm5pbmc6CuKAmEJ0UHJvZmlsZVN0cmluZ+KAmSBkZWZpbmVk
IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQogc3RhdGljIGNvbnN0IGNo
YXIgKmNvbnN0IEJ0UHJvZmlsZVN0cmluZ1tdID0gewogICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+fn5+fn5+fn5+fgoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWku
Y29tPgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Ci0tLQog
ZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9oYWwvaGFsX2J0Y29leC5jIHwgNDMgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaGFsL2hhbF9idGNvZXguYyBiL2RyaXZlcnMv
c3RhZ2luZy9ydGw4NzIzYnMvaGFsL2hhbF9idGNvZXguYwppbmRleCBkNTc5M2U0NjE0YmYuLmE2
ZWQxYmI5OTQ1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9oYWwvaGFs
X2J0Y29leC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaGFsL2hhbF9idGNvZXgu
YwpAQCAtMTIsNDkgKzEyLDYgQEAKICNpbmNsdWRlIDxNcF9QcmVjb21wLmg+CiAKIC8qIAkJR2xv
YmFsIHZhcmlhYmxlcyAqLwotc3RhdGljIGNvbnN0IGNoYXIgKmNvbnN0IEJ0UHJvZmlsZVN0cmlu
Z1tdID0gewotCSJOT05FIiwKLQkiQTJEUCIsCi0JIlBBTiIsCi0JIkhJRCIsCi0JIlNDTyIsCi19
OwotCi1zdGF0aWMgY29uc3QgY2hhciAqY29uc3QgQnRTcGVjU3RyaW5nW10gPSB7Ci0JIjEuMGIi
LAotCSIxLjEiLAotCSIxLjIiLAotCSIyLjArRURSIiwKLQkiMi4xK0VEUiIsCi0JIjMuMCtIUyIs
Ci0JIjQuMCIsCi19OwotCi1zdGF0aWMgY29uc3QgY2hhciAqY29uc3QgQnRMaW5rUm9sZVN0cmlu
Z1tdID0gewotCSJNYXN0ZXIiLAotCSJTbGF2ZSIsCi19OwotCi1zdGF0aWMgY29uc3QgY2hhciAq
Y29uc3QgaDJjU3RhU3RyaW5nW10gPSB7Ci0JInN1Y2Nlc3NmdWwiLAotCSJoMmMgYnVzeSIsCi0J
InJmIG9mZiIsCi0JImZ3IG5vdCByZWFkIiwKLX07Ci0KLXN0YXRpYyBjb25zdCBjaGFyICpjb25z
dCBpb1N0YVN0cmluZ1tdID0gewotCSJzdWNjZXNzIiwKLQkiY2FuIG5vdCBJTyIsCi0JInJmIG9m
ZiIsCi0JImZ3IG5vdCByZWFkIiwKLQkid2FpdCBpbyB0aW1lb3V0IiwKLQkiaW52YWxpZCBsZW4i
LAotCSJpZGxlIFEgZW1wdHkiLAotCSJpbnNlcnQgd2FpdFEgZmFpbCIsCi0JInVua25vd24gZmFp
bCIsCi0JIndyb25nIGxldmVsIiwKLQkiaDJjIHN0b3BwZWQiLAotfTsKIAogQlRDX0NPRVhJU1Qg
R0xCdENvZXhpc3Q7CiBzdGF0aWMgdTggR0xCdGNXaUZpSW5TY2FuU3RhdGU7Ci0tIAoyLjIxLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
