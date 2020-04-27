Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3101B9566
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 05:24:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1CCC87A00;
	Mon, 27 Apr 2020 03:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhEltscHkLP3; Mon, 27 Apr 2020 03:24:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24256878CD;
	Mon, 27 Apr 2020 03:24:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B8D9A1BF97A
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2D3E875C2
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3NKVivNExdO for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 03:24:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 107C287852
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9C18853B6F367C1E2DC4;
 Mon, 27 Apr 2020 11:24:29 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 11:24:19 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <wambui.karugax@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 5/7] staging: rtl8723bs: core: remove set but not used
 'listen_interval'
Date: Mon, 27 Apr 2020 11:23:40 +0800
Message-ID: <20200427032342.27211-6-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200427032342.27211-1-yanaijie@huawei.com>
References: <20200427032342.27211-1-yanaijie@huawei.com>
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
L2NvcmUvcnR3X21sbWVfZXh0LmM6MTE3MzoxODogd2FybmluZzogdmFyaWFibGUK4oCYbGlzdGVu
X2ludGVydmFs4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVd
CiAgdTE2IGNhcGFiX2luZm8sIGxpc3Rlbl9pbnRlcnZhbDsKICAgICAgICAgICAgICAgICAgXn5+
fn5+fn5+fn5+fn5+CgpSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1YXdlaS5jb20+
ClNpZ25lZC1vZmYtYnk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNvbT4KLS0tCiBkcml2
ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21sbWVfZXh0LmMgfCA0ICstLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21sbWVfZXh0LmMgYi9kcml2ZXJzL3N0
YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21sbWVfZXh0LmMKaW5kZXggNWFkYzNkYWQ4ZDdjLi5k
NmQ3MTk4ZGZlNDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9y
dHdfbWxtZV9leHQuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21s
bWVfZXh0LmMKQEAgLTExNjksNyArMTE2OSw3IEBAIHVuc2lnbmVkIGludCBPbkF1dGhDbGllbnQo
c3RydWN0IGFkYXB0ZXIgKnBhZGFwdGVyLCB1bmlvbiByZWN2X2ZyYW1lICpwcmVjdl9mcmFtCiAK
IHVuc2lnbmVkIGludCBPbkFzc29jUmVxKHN0cnVjdCBhZGFwdGVyICpwYWRhcHRlciwgdW5pb24g
cmVjdl9mcmFtZSAqcHJlY3ZfZnJhbWUpCiB7Ci0JdTE2IGNhcGFiX2luZm8sIGxpc3Rlbl9pbnRl
cnZhbDsKKwl1MTYgY2FwYWJfaW5mbzsKIAlzdHJ1Y3QgcnR3X2llZWU4MDJfMTFfZWxlbXMgZWxl
bXM7CiAJc3RydWN0IHN0YV9pbmZvICpwc3RhdDsKIAl1bnNpZ25lZCBjaGFyIAlyZWFzc29jLCAq
cCwgKnBvcywgKndwYV9pZTsKQEAgLTEyMTUsOCArMTIxNSw2IEBAIHVuc2lnbmVkIGludCBPbkFz
c29jUmVxKHN0cnVjdCBhZGFwdGVyICpwYWRhcHRlciwgdW5pb24gcmVjdl9mcmFtZSAqcHJlY3Zf
ZnJhbWUpCiAKIAljYXBhYl9pbmZvID0gUlRXX0dFVF9MRTE2KHBmcmFtZSArIFdMQU5fSERSX0Ez
X0xFTik7CiAJLyogY2FwYWJfaW5mbyA9IGxlMTZfdG9fY3B1KCoodW5zaWduZWQgc2hvcnQgKiko
cGZyYW1lICsgV0xBTl9IRFJfQTNfTEVOKSk7ICovCi0JLyogbGlzdGVuX2ludGVydmFsID0gbGUx
Nl90b19jcHUoKih1bnNpZ25lZCBzaG9ydCAqKShwZnJhbWUgKyBXTEFOX0hEUl9BM19MRU4rMikp
OyAqLwotCWxpc3Rlbl9pbnRlcnZhbCA9IFJUV19HRVRfTEUxNihwZnJhbWUgKyBXTEFOX0hEUl9B
M19MRU4rMik7CiAKIAlsZWZ0ID0gcGt0X2xlbiAtIChzaXplb2Yoc3RydWN0IGllZWU4MDIxMV9o
ZHJfM2FkZHIpICsgaWVfb2Zmc2V0KTsKIAlwb3MgPSBwZnJhbWUgKyAoc2l6ZW9mKHN0cnVjdCBp
ZWVlODAyMTFfaGRyXzNhZGRyKSArIGllX29mZnNldCk7Ci0tIAoyLjIxLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
