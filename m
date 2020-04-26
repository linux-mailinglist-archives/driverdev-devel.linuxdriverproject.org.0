Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183E91B8E7D
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Apr 2020 11:44:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B6028754B;
	Sun, 26 Apr 2020 09:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHHaJd5vBuqF; Sun, 26 Apr 2020 09:44:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E29F08738B;
	Sun, 26 Apr 2020 09:44:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9828F1BF308
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 09:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8055820767
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 09:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EIxdH1x8PtrV for <devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 09:44:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A81F20532
 for <devel@driverdev.osuosl.org>; Sun, 26 Apr 2020 09:44:18 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 63BE8577512842FC22E0;
 Sun, 26 Apr 2020 17:44:13 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Sun, 26 Apr 2020
 17:44:07 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <hariprasad.kelam@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: rtl8723bs: remove set but not used 'pregistrypriv'
Date: Sun, 26 Apr 2020 17:43:34 +0800
Message-ID: <20200426094334.24346-1-yanaijie@huawei.com>
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
L2hhbC9zZGlvX2hhbGluaXQuYzo1NDc6MjQ6IHdhcm5pbmc6IHZhcmlhYmxlCuKAmHByZWdpc3Ry
eXByaXbigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KICBz
dHJ1Y3QgcmVnaXN0cnlfcHJpdiAqcHJlZ2lzdHJ5cHJpdjsKICAgICAgICAgICAgICAgICAgICAg
ICAgXn5+fn5+fn5+fn5+fgoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWku
Y29tPgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Ci0tLQog
ZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9oYWwvc2Rpb19oYWxpbml0LmMgfCA0IC0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2lu
Zy9ydGw4NzIzYnMvaGFsL3NkaW9faGFsaW5pdC5jIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNi
cy9oYWwvc2Rpb19oYWxpbml0LmMKaW5kZXggNzg1M2FmNTMwNTFkLi5lNDJkOGMxOGUxYWUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaGFsL3NkaW9faGFsaW5pdC5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaGFsL3NkaW9faGFsaW5pdC5jCkBAIC01NDQs
MTMgKzU0NCw5IEBAIHN0YXRpYyB2b2lkIF9Jbml0UmV0cnlGdW5jdGlvbihzdHJ1Y3QgYWRhcHRl
ciAqcGFkYXB0ZXIpCiAKIHN0YXRpYyB2b2lkIEhhbFJ4QWdncjg3MjNCU2RpbyhzdHJ1Y3QgYWRh
cHRlciAqcGFkYXB0ZXIpCiB7Ci0Jc3RydWN0IHJlZ2lzdHJ5X3ByaXYgKnByZWdpc3RyeXByaXY7
CiAJdTggdmFsdWVETUFUaW1lb3V0OwogCXU4IHZhbHVlRE1BUGFnZUNvdW50OwogCi0KLQlwcmVn
aXN0cnlwcml2ID0gJnBhZGFwdGVyLT5yZWdpc3RyeXByaXY7Ci0KIAl2YWx1ZURNQVRpbWVvdXQg
PSAweDA2OwogCXZhbHVlRE1BUGFnZUNvdW50ID0gMHgwNjsKIAotLSAKMi4yMS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
