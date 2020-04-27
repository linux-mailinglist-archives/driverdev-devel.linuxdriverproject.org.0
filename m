Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF011B9567
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 05:24:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79F5C862ED;
	Mon, 27 Apr 2020 03:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sbgW2HgO5FvY; Mon, 27 Apr 2020 03:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BA518627B;
	Mon, 27 Apr 2020 03:24:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FB951BF976
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8CE7F87872
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MRU74Cfd8u1j for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 10750875C2
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A051FD45DE04AA4065C7;
 Mon, 27 Apr 2020 11:24:29 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 11:24:19 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <wambui.karugax@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 6/7] staging: rtl8723bs: core: remove set but not used
 'pwrpriv'
Date: Mon, 27 Apr 2020 11:23:41 +0800
Message-ID: <20200427032342.27211-7-yanaijie@huawei.com>
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
L2NvcmUvcnR3X21sbWUuYzoxMTAwOjI0OiB3YXJuaW5nOiB2YXJpYWJsZQrigJhwd3Jwcml24oCZ
IHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCiAgIHN0cnVjdCBw
d3JjdHJsX3ByaXYgKnB3cnByaXY7CiAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn4KClJl
cG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxodWxrY2lAaHVhd2VpLmNvbT4KU2lnbmVkLW9mZi1ieTog
SmFzb24gWWFuIDx5YW5haWppZUBodWF3ZWkuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4
NzIzYnMvY29yZS9ydHdfbWxtZS5jIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfbWxt
ZS5jIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19tbG1lLmMKaW5kZXggZDdh
NThhZjc2ZWEwLi5hYmY2MGM5MmMxYWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4
NzIzYnMvY29yZS9ydHdfbWxtZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29y
ZS9ydHdfbWxtZS5jCkBAIC0xMDk3LDkgKzEwOTcsNiBAQCBpbmxpbmUgdm9pZCBydHdfaW5kaWNh
dGVfc2Nhbl9kb25lKHN0cnVjdCBhZGFwdGVyICpwYWRhcHRlciwgYm9vbCBhYm9ydGVkKQogCSAg
ICAoIWFkYXB0ZXJfdG9fcHdyY3RsKHBhZGFwdGVyKS0+YkluU3VzcGVuZCkgJiYKIAkgICAgKCFj
aGVja19md3N0YXRlKCZwYWRhcHRlci0+bWxtZXByaXYsCiAJCQkgICAgV0lGSV9BU09DX1NUQVRF
fFdJRklfVU5ERVJfTElOS0lORykpKSB7Ci0JCXN0cnVjdCBwd3JjdHJsX3ByaXYgKnB3cnByaXY7
Ci0KLQkJcHdycHJpdiA9IGFkYXB0ZXJfdG9fcHdyY3RsKHBhZGFwdGVyKTsKIAkJcnR3X3NldF9p
cHNfZGVueShwYWRhcHRlciwgMCk7CiAJCV9zZXRfdGltZXIoJnBhZGFwdGVyLT5tbG1lcHJpdi5k
eW5hbWljX2Noa190aW1lciwgMSk7CiAJfQotLSAKMi4yMS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
