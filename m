Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA0319EF66
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 04:56:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA211882BE;
	Mon,  6 Apr 2020 02:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8sHnpuZhR8LE; Mon,  6 Apr 2020 02:56:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAF2188293;
	Mon,  6 Apr 2020 02:56:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1AF7E1BF39F
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 02:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 150EA2291D
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 02:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcFMxGFGpYJP for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 02:56:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id 9071322703
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 02:56:13 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D6D53A88BACA08F62BBF;
 Mon,  6 Apr 2020 10:56:09 +0800 (CST)
Received: from huawei.com (10.175.112.70) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 6 Apr 2020
 10:56:00 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <gregkh@linuxfoundation.org>, <sylphrenadin@gmail.com>,
 <c.cantanheide@gmail.com>, <navid.emamdoost@gmail.com>,
 <nishkadg.linux@gmail.com>, <mst@redhat.com>, <stephen@brennan.io>,
 <mchehab@kernel.org>
Subject: [PATCH] staging: rtl8192u: Remove some set but not used variables
Date: Tue, 7 Apr 2020 08:07:44 -0400
Message-ID: <1586261264-37576-1-git-send-email-wanghai38@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.70]
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
Cc: devel@driverdev.osuosl.org, wanghai38@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgoKZHJpdmVycy9z
dGFnaW5nL3J0bDgxOTJ1L3I4MTkyVV9jb3JlLmM6IEluIGZ1bmN0aW9uIHJ0bDgxOTJfaGFyZF9k
YXRhX3htaXQ6CmRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9yODE5MlVfY29yZS5jOjkwNTo2OiB3
YXJuaW5nOiB2YXJpYWJsZSDigJhyZXTigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0
LXNldC12YXJpYWJsZV0KZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4MTkyVV9jb3JlLmM6IElu
IGZ1bmN0aW9uIHJ0bDgxOTJfY29tbWl0Ogpkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvcjgxOTJV
X2NvcmUuYzozNDE4OjY6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmHJlc2V0X3N0YXR1c+KAmSBzZXQg
YnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQoKRml4ZXM6IDhmYzg1OThl
NjFmNiAoIlN0YWdpbmc6IEFkZGVkIFJlYWx0ZWsgcnRsODE5MnUgZHJpdmVyIHRvIHN0YWdpbmci
KQpSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1YXdlaS5jb20+ClNpZ25lZC1vZmYt
Ynk6IFdhbmcgSGFpIDx3YW5naGFpMzhAaHVhd2VpLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcv
cnRsODE5MnUvcjgxOTJVX2NvcmUuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9y
dGw4MTkydS9yODE5MlVfY29yZS5jIGIvZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4MTkyVV9j
b3JlLmMKaW5kZXggZmNmYjkwMi4uYmIyODY3MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L3J0bDgxOTJ1L3I4MTkyVV9jb3JlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4
MTkyVV9jb3JlLmMKQEAgLTkwMiw3ICs5MDIsNiBAQCBzdGF0aWMgdm9pZCBydGw4MTkyX2hhcmRf
ZGF0YV94bWl0KHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCiAJ
CQkJICAgaW50IHJhdGUpCiB7CiAJc3RydWN0IHI4MTkyX3ByaXYgKnByaXYgPSAoc3RydWN0IHI4
MTkyX3ByaXYgKilpZWVlODAyMTFfcHJpdihkZXYpOwotCWludCByZXQ7CiAJdW5zaWduZWQgbG9u
ZyBmbGFnczsKIAlzdHJ1Y3QgY2JfZGVzYyAqdGNiX2Rlc2MgPSAoc3RydWN0IGNiX2Rlc2MgKiko
c2tiLT5jYiArIE1BWF9ERVZfQUREUl9TSVpFKTsKIAl1OCBxdWV1ZV9pbmRleCA9IHRjYl9kZXNj
LT5xdWV1ZV9pbmRleDsKQEAgLTkxNSw3ICs5MTQsNyBAQCBzdGF0aWMgdm9pZCBydGw4MTkyX2hh
cmRfZGF0YV94bWl0KHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBuZXRfZGV2aWNlICpkZXYs
CiAJKihzdHJ1Y3QgbmV0X2RldmljZSAqKikoc2tiLT5jYikgPSBkZXY7CiAJdGNiX2Rlc2MtPmJU
eEVuYWJsZUZ3Q2FsY0R1ciA9IDE7CiAJc2tiX3B1c2goc2tiLCBwcml2LT5pZWVlODAyMTEtPnR4
X2hlYWRyb29tKTsKLQlyZXQgPSBydGw4MTkyX3R4KGRldiwgc2tiKTsKKwlydGw4MTkyX3R4KGRl
diwgc2tiKTsKIAogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnByaXYtPnR4X2xvY2ssIGZsYWdz
KTsKIH0KQEAgLTM0MTUsNyArMzQxNCw2IEBAIGludCBydGw4MTkyX2Rvd24oc3RydWN0IG5ldF9k
ZXZpY2UgKmRldikKIHZvaWQgcnRsODE5Ml9jb21taXQoc3RydWN0IG5ldF9kZXZpY2UgKmRldikK
IHsKIAlzdHJ1Y3QgcjgxOTJfcHJpdiAqcHJpdiA9IGllZWU4MDIxMV9wcml2KGRldik7Ci0JaW50
IHJlc2V0X3N0YXR1cyA9IDA7CiAKIAlpZiAocHJpdi0+dXAgPT0gMCkKIAkJcmV0dXJuOwpAQCAt
MzQyNyw3ICszNDI1LDcgQEAgdm9pZCBydGw4MTkyX2NvbW1pdChzdHJ1Y3QgbmV0X2RldmljZSAq
ZGV2KQogCWllZWU4MDIxMV9zb2Z0bWFjX3N0b3BfcHJvdG9jb2wocHJpdi0+aWVlZTgwMjExKTsK
IAogCXJ0bDgxOTJfcnR4X2Rpc2FibGUoZGV2KTsKLQlyZXNldF9zdGF0dXMgPSBfcnRsODE5Ml91
cChkZXYpOworCV9ydGw4MTkyX3VwKGRldik7CiB9CiAKIHN0YXRpYyB2b2lkIHJ0bDgxOTJfcmVz
dGFydChzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCi0tIAoxLjguMy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
