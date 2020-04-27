Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560071B9563
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 05:24:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BED9487872;
	Mon, 27 Apr 2020 03:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qcMcP6HKOi6j; Mon, 27 Apr 2020 03:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F26C487852;
	Mon, 27 Apr 2020 03:24:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FED41BF976
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D2B42079A
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T7ZLwplW7rDE for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 03:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id 78E1F20511
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 03:24:29 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 917957C97F2E8E0CBAB9;
 Mon, 27 Apr 2020 11:24:24 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 11:24:18 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <wambui.karugax@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/7] Staging: rtl8723bs: core: remove set but not used
 'ptxservq'
Date: Mon, 27 Apr 2020 11:23:38 +0800
Message-ID: <20200427032342.27211-4-yanaijie@huawei.com>
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
L2NvcmUvcnR3X3N0YV9tZ3QuYzo1NTY6MTk6IHdhcm5pbmc6IHZhcmlhYmxlCuKAmHB0eHNlcnZx
4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCiAgc3RydWN0
IHR4X3NlcnZxICpwdHhzZXJ2cTsKICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+CgpSZXBvcnRl
ZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1YXdlaS5jb20+ClNpZ25lZC1vZmYtYnk6IEphc29u
IFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2Jz
L2NvcmUvcnR3X3N0YV9tZ3QuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfc3RhX21n
dC5jIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19zdGFfbWd0LmMKaW5kZXgg
MDlkMmNhMzBkNjUzLi5lM2Y1NmM2Y2M4ODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9y
dGw4NzIzYnMvY29yZS9ydHdfc3RhX21ndC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIz
YnMvY29yZS9ydHdfc3RhX21ndC5jCkBAIC01NTMsNyArNTUzLDYgQEAgdTMyIHJ0d19pbml0X2Jj
bWNfc3RhaW5mbyhzdHJ1Y3QgYWRhcHRlciAqcGFkYXB0ZXIpCiB7CiAKIAlzdHJ1Y3Qgc3RhX2lu
Zm8gKnBzdGE7Ci0Jc3RydWN0IHR4X3NlcnZxCSpwdHhzZXJ2cTsKIAl1MzIgcmVzID0gX1NVQ0NF
U1M7CiAJTkRJU184MDJfMTFfTUFDX0FERFJFU1MJYmNhc3RfYWRkciA9IHsweGZmLCAweGZmLCAw
eGZmLCAweGZmLCAweGZmLCAweGZmfTsKIApAQCAtNTcxLDcgKzU3MCw2IEBAIHUzMiBydHdfaW5p
dF9iY21jX3N0YWluZm8oc3RydWN0IGFkYXB0ZXIgKnBhZGFwdGVyKQogCS8qICBkZWZhdWx0IGJy
b2FkY2FzdCAmIG11bHRpY2FzdCB1c2UgbWFjaWQgMSAqLwogCXBzdGEtPm1hY19pZCA9IDE7CiAK
LQlwdHhzZXJ2cSA9ICYocHN0YS0+c3RhX3htaXRwcml2LmJlX3EpOwogZXhpdDoKIAlyZXR1cm4g
X1NVQ0NFU1M7CiB9Ci0tIAoyLjIxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
