Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F791AD702
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Apr 2020 09:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02109815E3;
	Fri, 17 Apr 2020 07:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yva6E2I8SLLE; Fri, 17 Apr 2020 07:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 282948763C;
	Fri, 17 Apr 2020 07:08:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D89B1BF388
 for <devel@linuxdriverproject.org>; Fri, 17 Apr 2020 07:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5A85B862CA
 for <devel@linuxdriverproject.org>; Fri, 17 Apr 2020 07:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9dM4a0TWv8Q6 for <devel@linuxdriverproject.org>;
 Fri, 17 Apr 2020 07:08:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 40EF886214
 for <devel@driverdev.osuosl.org>; Fri, 17 Apr 2020 07:08:26 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B3121971BA29CF053A3;
 Fri, 17 Apr 2020 15:08:21 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Fri, 17 Apr 2020
 15:08:13 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: rtl8723bs: remove defined but not used
 'dB_Invert_Table'
Date: Fri, 17 Apr 2020 15:34:39 +0800
Message-ID: <20200417073439.41888-1-yanaijie@huawei.com>
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
L2hhbC9vZG0uYzoxMDoxODogd2FybmluZzog4oCYZEJfSW52ZXJ0X1RhYmxl4oCZCmRlZmluZWQg
YnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCiBzdGF0aWMgY29uc3QgdTE2
IGRCX0ludmVydF9UYWJsZVs4XVsxMl0gPSB7CiAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+
fn5+fgoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgpTaWduZWQt
b2ZmLWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9zdGFn
aW5nL3J0bDg3MjNicy9oYWwvb2RtLmMgfCAxMyAtLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNi
cy9oYWwvb2RtLmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2hhbC9vZG0uYwppbmRleCBh
YTY2MzFlZTRlYTcuLmYyYTllOTVhMTU2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3J0
bDg3MjNicy9oYWwvb2RtLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9oYWwvb2Rt
LmMKQEAgLTcsMTkgKzcsNiBAQAogCiAjaW5jbHVkZSAib2RtX3ByZWNvbXAuaCIKIAotc3RhdGlj
IGNvbnN0IHUxNiBkQl9JbnZlcnRfVGFibGVbOF1bMTJdID0gewotCXsxLCAxLCAxLCAyLCAyLCAy
LCAyLCAzLCAzLCAzLCA0LCA0fSwKLQl7NCwgNSwgNiwgNiwgNywgOCwgOSwgMTAsIDExLCAxMywg
MTQsIDE2fSwKLQl7MTgsIDIwLCAyMiwgMjUsIDI4LCAzMiwgMzUsIDQwLCA0NSwgNTAsIDU2LCA2
M30sCi0JezcxLCA3OSwgODksIDEwMCwgMTEyLCAxMjYsIDE0MSwgMTU4LCAxNzgsIDIwMCwgMjI0
LCAyNTF9LAotCXsyODIsIDMxNiwgMzU1LCAzOTgsIDQ0NywgNTAxLCA1NjIsIDYzMSwgNzA4LCA3
OTQsIDg5MSwgMTAwMH0sCi0JezExMjIsIDEyNTksIDE0MTMsIDE1ODUsIDE3NzgsIDE5OTUsIDIy
MzksIDI1MTIsIDI4MTgsIDMxNjIsIDM1NDgsIDM5ODF9LAotCXs0NDY3LCA1MDEyLCA1NjIzLCA2
MzEwLCA3MDc5LCA3OTQzLCA4OTEzLCAxMDAwMCwgMTEyMjAsIDEyNTg5LCAxNDEyNSwKLQkgMTU4
NDl9LAotCXsxNzc4MywgMTk5NTMsIDIyMzg3LCAyNTExOSwgMjgxODQsIDMxNjIzLCAzNTQ4MSwg
Mzk4MTEsIDQ0NjY4LCA1MDExOSwKLQkgNTYyMzQsIDY1NTM1fQotIH07Ci0KIC8qICBHbG9iYWwg
dmFyICovCiAKIHUzMiBPRkRNU3dpbmdUYWJsZVtPRkRNX1RBQkxFX1NJWkVdID0gewotLSAKMi4y
MS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
