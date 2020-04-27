Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E2D1B9562
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 05:24:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85B502150A;
	Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JvahU9i0Tv-N; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3EF6520517;
	Mon, 27 Apr 2020 03:24:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B42AA1BF976
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B123A86214
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ghlCMzNW9V+u for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 03:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 18FC88620F
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 03:24:28 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 98EA533ABB677BD946E9;
 Mon, 27 Apr 2020 11:24:24 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 11:24:17 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <wambui.karugax@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/7] staging: rtl8723bs: os_dep: remove set but not used 'size'
Date: Mon, 27 Apr 2020 11:23:37 +0800
Message-ID: <20200427032342.27211-3-yanaijie@huawei.com>
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

QW5kIGFsc28gcmVtb3ZlIHRoZSBOVUxMIGNoZWNrIGJlZm9yZSBrZnJlZSgpIGJlY2F1c2Uga2Zy
ZWUoKSBjYW4gaGFuZGxlCk5VTEwgcG9pbnRlcnMgY29ycmVjdGx5LgoKRml4IHRoZSBmb2xsb3dp
bmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL29zX2RlcC9pb2N0bF9j
Zmc4MDIxMS5jOjE1Nzo2OiB3YXJuaW5nOgp2YXJpYWJsZSDigJhzaXpl4oCZIHNldCBidXQgbm90
IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCiAgdTMyIHNpemUgPSAwOwogICAgICBe
fn5+CgpSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1YXdlaS5jb20+ClNpZ25lZC1v
ZmYtYnk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvcnRsODcyM2JzL29zX2RlcC9pb2N0bF9jZmc4MDIxMS5jIHwgMTEgLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvcnRsODcyM2JzL29zX2RlcC9pb2N0bF9jZmc4MDIxMS5jIGIvZHJpdmVycy9zdGFnaW5nL3J0
bDg3MjNicy9vc19kZXAvaW9jdGxfY2ZnODAyMTEuYwppbmRleCAxYmE4NWE0M2YwNWEuLmIwMzc4
NjhmYmYyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9vc19kZXAvaW9j
dGxfY2ZnODAyMTEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL29zX2RlcC9pb2N0
bF9jZmc4MDIxMS5jCkBAIC0xNTQsMTcgKzE1NCw2IEBAIHN0YXRpYyBzdHJ1Y3QgaWVlZTgwMjEx
X3N1cHBvcnRlZF9iYW5kICpydHdfc3B0X2JhbmRfYWxsb2MoCiAKIHN0YXRpYyB2b2lkIHJ0d19z
cHRfYmFuZF9mcmVlKHN0cnVjdCBpZWVlODAyMTFfc3VwcG9ydGVkX2JhbmQgKnNwdF9iYW5kKQog
ewotCXUzMiBzaXplID0gMDsKLQotCWlmICghc3B0X2JhbmQpCi0JCXJldHVybjsKLQotCWlmIChz
cHRfYmFuZC0+YmFuZCA9PSBOTDgwMjExX0JBTkRfMkdIWikKLQl7Ci0JCXNpemUgPSBzaXplb2Yo
c3RydWN0IGllZWU4MDIxMV9zdXBwb3J0ZWRfYmFuZCkKLQkJCSsgc2l6ZW9mKHN0cnVjdCBpZWVl
ODAyMTFfY2hhbm5lbCkqUlRXXzJHX0NIQU5ORUxTX05VTQotCQkJKyBzaXplb2Yoc3RydWN0IGll
ZWU4MDIxMV9yYXRlKSpSVFdfR19SQVRFU19OVU07Ci0JfQogCWtmcmVlKHNwdF9iYW5kKTsKIH0K
IAotLSAKMi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
