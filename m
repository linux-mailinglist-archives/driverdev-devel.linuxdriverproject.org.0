Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E79D71B958E
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 05:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1367186252;
	Mon, 27 Apr 2020 03:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E2H7fCazxH7u; Mon, 27 Apr 2020 03:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1ECDB861E7;
	Mon, 27 Apr 2020 03:24:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D57D71BF976
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D10FE8620F
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSYW-FsZbdaQ for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 03:24:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DC23861E7
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 03:24:27 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9514C640622D3E290034;
 Mon, 27 Apr 2020 11:24:24 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 11:24:16 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <wambui.karugax@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/7] staging: rtl8723bs: os_dep: remove set but not used
 'uintRet'
Date: Mon, 27 Apr 2020 11:23:36 +0800
Message-ID: <20200427032342.27211-2-yanaijie@huawei.com>
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
L29zX2RlcC9pb2N0bF9saW51eC5jOjI1NjQ6MjI6IHdhcm5pbmc6CnZhcmlhYmxlIOKAmHVpbnRS
ZXTigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KICAgICAg
ICAgdW5zaWduZWQgaW50IHVpbnRSZXQgPSAwOwogICAgICAgICAgICAgICAgICAgICAgXn5+fn5+
fgoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5n
L3J0bDg3MjNicy9vc19kZXAvaW9jdGxfbGludXguYyB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9ydGw4NzIzYnMvb3NfZGVwL2lvY3RsX2xpbnV4LmMgYi9kcml2ZXJzL3N0YWdpbmcv
cnRsODcyM2JzL29zX2RlcC9pb2N0bF9saW51eC5jCmluZGV4IDUwNTliODc0MDgwZS4uOTAyYWM4
MTY5OTQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL29zX2RlcC9pb2N0
bF9saW51eC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvb3NfZGVwL2lvY3RsX2xp
bnV4LmMKQEAgLTI1NjEsMTQgKzI1NjEsMTYgQEAgc3RhdGljIGludCBydHdfd3BzX3N0YXJ0KHN0
cnVjdCBuZXRfZGV2aWNlICpkZXYsCiAJc3RydWN0IGFkYXB0ZXIgKnBhZGFwdGVyID0gKHN0cnVj
dCBhZGFwdGVyICopcnR3X25ldGRldl9wcml2KGRldik7CiAJc3RydWN0IGl3X3BvaW50ICpwZGF0
YSA9ICZ3cnF1LT5kYXRhOwogCXUzMiAgIHUzMndwc19zdGFydCA9IDA7Ci0gICAgICAgIHVuc2ln
bmVkIGludCB1aW50UmV0ID0gMDsKIAogCWlmICgodHJ1ZSA9PSBwYWRhcHRlci0+YkRyaXZlclN0
b3BwZWQpIHx8ICh0cnVlID09IHBhZGFwdGVyLT5iU3VycHJpc2VSZW1vdmVkKSB8fCAoTlVMTCA9
PSBwZGF0YSkpIHsKIAkJcmV0ID0gLUVJTlZBTDsKIAkJZ290byBleGl0OwogCX0KIAotCXVpbnRS
ZXQgPSBjb3B5X2Zyb21fdXNlcigodm9pZCAqKSZ1MzJ3cHNfc3RhcnQsIHBkYXRhLT5wb2ludGVy
LCA0KTsKKwlpZiAoY29weV9mcm9tX3VzZXIoKHZvaWQgKikmdTMyd3BzX3N0YXJ0LCBwZGF0YS0+
cG9pbnRlciwgNCkpIHsKKwkJcmV0ID0gLUVGQVVMVDsKKwkJZ290byBleGl0OworCX0KIAlpZiAo
dTMyd3BzX3N0YXJ0ID09IDApCiAJCXUzMndwc19zdGFydCA9ICpleHRyYTsKIAotLSAKMi4yMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
