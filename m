Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7811B9564
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 05:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 148C585A49;
	Mon, 27 Apr 2020 03:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3XsjTg8yreH; Mon, 27 Apr 2020 03:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD18D858D3;
	Mon, 27 Apr 2020 03:24:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC45A1BF976
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D8DAA861F4
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YU-koPHLb4+e for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D23D861E7
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 03:24:31 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A447A892CAD0EE307B57;
 Mon, 27 Apr 2020 11:24:29 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 11:24:20 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <wambui.karugax@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 7/7] staging: rtl8723bs: core: remove set but not used 'pframe'
Date: Mon, 27 Apr 2020 11:23:42 +0800
Message-ID: <20200427032342.27211-8-yanaijie@huawei.com>
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
L2NvcmUvcnR3X21sbWUuYzoyOTIwOjY6IHdhcm5pbmc6IHZhcmlhYmxlCuKAmHBmcmFtZeKAmSBz
ZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQogIHU4ICpwZnJhbWU7
CiAgICAgIF5+fn5+fgoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29t
PgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19tbG1lLmMgfCAzICstLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfbWxtZS5jIGIvZHJpdmVycy9zdGFnaW5nL3J0
bDg3MjNicy9jb3JlL3J0d19tbG1lLmMKaW5kZXggYWJmNjBjOTJjMWFjLi5lNjVjNWE4NzBiNDYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfbWxtZS5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfbWxtZS5jCkBAIC0yOTE0LDEy
ICsyOTE0LDExIEBAIHZvaWQgcnR3X2FwcGVuZF9leGVudGVkX2NhcChzdHJ1Y3QgYWRhcHRlciAq
cGFkYXB0ZXIsIHU4ICpvdXRfaWUsIHVpbnQgKnBvdXRfbGVuCiAJc3RydWN0IG1sbWVfcHJpdiAq
cG1sbWVwcml2ID0gJnBhZGFwdGVyLT5tbG1lcHJpdjsKIAlzdHJ1Y3QgaHRfcHJpdiAJKnBodHBy
aXYgPSAmcG1sbWVwcml2LT5odHByaXY7CiAJdTggY2FwX2NvbnRlbnRbOF0gPSB7MH07Ci0JdTgg
KnBmcmFtZTsKIAogCWlmIChwaHRwcml2LT5ic3NfY29leGlzdCkKIAkJU0VUX0VYVF9DQVBBQklM
SVRZX0VMRV9CU1NfQ09FWElTVChjYXBfY29udGVudCwgMSk7CiAKLQlwZnJhbWUgPSBydHdfc2V0
X2llKG91dF9pZSArICpwb3V0X2xlbiwgRUlEX0VYVENhcGFiaWxpdHksIDgsIGNhcF9jb250ZW50
LCBwb3V0X2xlbik7CisJcnR3X3NldF9pZShvdXRfaWUgKyAqcG91dF9sZW4sIEVJRF9FWFRDYXBh
YmlsaXR5LCA4LCBjYXBfY29udGVudCwgcG91dF9sZW4pOwogfQogCiBpbmxpbmUgdm9pZCBydHdf
c2V0X3RvX3JvYW0oc3RydWN0IGFkYXB0ZXIgKmFkYXB0ZXIsIHU4IHRvX3JvYW0pCi0tIAoyLjIx
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
