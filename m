Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BC11B9565
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 05:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D17687938;
	Mon, 27 Apr 2020 03:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GERU7wJ+qTIG; Mon, 27 Apr 2020 03:24:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7465F87852;
	Mon, 27 Apr 2020 03:24:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15D8C1BF976
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 12CBC878C4
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KsbRpucOJxZ for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 03:24:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 11C5E87872
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CF798AA9AC01DCEB5063;
 Mon, 27 Apr 2020 11:24:29 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 11:24:18 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <wambui.karugax@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 4/7] staging: rtl8723bs: core: remove set but not used 'algthm'
Date: Mon, 27 Apr 2020 11:23:39 +0800
Message-ID: <20200427032342.27211-5-yanaijie@huawei.com>
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
L2NvcmUvcnR3X21sbWVfZXh0LmM6MTA4NzozMzogd2FybmluZzogdmFyaWFibGUK4oCYYWxndGht
4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCiAgdW5zaWdu
ZWQgaW50IHNlcSwgbGVuLCBzdGF0dXMsIGFsZ3RobSwgb2Zmc2V0OwogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fn4KClJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxodWxrY2lA
aHVhd2VpLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFzb24gWWFuIDx5YW5haWppZUBodWF3ZWkuY29t
PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfbWxtZV9leHQuYyB8IDMg
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19tbG1lX2V4dC5jIGIv
ZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19tbG1lX2V4dC5jCmluZGV4IDhmOWRh
MWQ0OTM0My4uNWFkYzNkYWQ4ZDdjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcy
M2JzL2NvcmUvcnR3X21sbWVfZXh0LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9j
b3JlL3J0d19tbG1lX2V4dC5jCkBAIC0xMDg0LDcgKzEwODQsNyBAQCB1bnNpZ25lZCBpbnQgT25B
dXRoKHN0cnVjdCBhZGFwdGVyICpwYWRhcHRlciwgdW5pb24gcmVjdl9mcmFtZSAqcHJlY3ZfZnJh
bWUpCiAKIHVuc2lnbmVkIGludCBPbkF1dGhDbGllbnQoc3RydWN0IGFkYXB0ZXIgKnBhZGFwdGVy
LCB1bmlvbiByZWN2X2ZyYW1lICpwcmVjdl9mcmFtZSkKIHsKLQl1bnNpZ25lZCBpbnQJc2VxLCBs
ZW4sIHN0YXR1cywgYWxndGhtLCBvZmZzZXQ7CisJdW5zaWduZWQgaW50CXNlcSwgbGVuLCBzdGF0
dXMsIG9mZnNldDsKIAl1bnNpZ25lZCBjaGFyICpwOwogCXVuc2lnbmVkIGludAlnbzJhc29jID0g
MDsKIAlzdHJ1Y3QgbWxtZV9leHRfcHJpdiAqcG1sbWVleHQgPSAmcGFkYXB0ZXItPm1sbWVleHRw
cml2OwpAQCAtMTEwMyw3ICsxMTAzLDYgQEAgdW5zaWduZWQgaW50IE9uQXV0aENsaWVudChzdHJ1
Y3QgYWRhcHRlciAqcGFkYXB0ZXIsIHVuaW9uIHJlY3ZfZnJhbWUgKnByZWN2X2ZyYW0KIAogCW9m
ZnNldCA9IChHZXRQcml2YWN5KHBmcmFtZSkpID8gNCA6IDA7CiAKLQlhbGd0aG0JPSBsZTE2X3Rv
X2NwdSgqKF9fbGUxNiAqKSgoU0laRV9QVFIpcGZyYW1lICsgV0xBTl9IRFJfQTNfTEVOICsgb2Zm
c2V0KSk7CiAJc2VxCT0gbGUxNl90b19jcHUoKihfX2xlMTYgKikoKFNJWkVfUFRSKXBmcmFtZSAr
IFdMQU5fSERSX0EzX0xFTiArIG9mZnNldCArIDIpKTsKIAlzdGF0dXMJPSBsZTE2X3RvX2NwdSgq
KF9fbGUxNiAqKSgoU0laRV9QVFIpcGZyYW1lICsgV0xBTl9IRFJfQTNfTEVOICsgb2Zmc2V0ICsg
NCkpOwogCi0tIAoyLjIxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
