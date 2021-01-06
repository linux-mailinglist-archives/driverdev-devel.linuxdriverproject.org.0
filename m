Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EED2EBEA4
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 14:30:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C54822FB9;
	Wed,  6 Jan 2021 13:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Clc2yF4Rm2e0; Wed,  6 Jan 2021 13:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 98E44204CE;
	Wed,  6 Jan 2021 13:30:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58F711BF34B
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 55331204BD
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aByRz9UvvZMS for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 13:30:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by silver.osuosl.org (Postfix) with ESMTPS id 86EB3204C7
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 13:30:08 +0000 (UTC)
Received: from dggeme762-chm.china.huawei.com (unknown [172.30.72.56])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4D9qvl3Dq1z5F1p;
 Wed,  6 Jan 2021 21:29:07 +0800 (CST)
Received: from dggeme760-chm.china.huawei.com (10.3.19.106) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Wed, 6 Jan 2021 21:30:02 +0800
Received: from dggeme760-chm.china.huawei.com ([10.6.80.70]) by
 dggeme760-chm.china.huawei.com ([10.6.80.70]) with mapi id 15.01.1913.007;
 Wed, 6 Jan 2021 21:30:02 +0800
From: zhengyongjun <zhengyongjun3@huawei.com>
To: "clabbe@baylibre.com" <clabbe@baylibre.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "mjpeg-users@lists.sourceforge.net"
 <mjpeg-users@lists.sourceforge.net>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: =?gb2312?B?tPC4tDogW1BBVENIIC1uZXh0XSBtZWRpYTogem9yYW46IHVzZSByZXNvdXJj?=
 =?gb2312?Q?e=5Fsize?=
Thread-Topic: [PATCH -next] media: zoran: use resource_size
Thread-Index: AQHW5C4k5dTBnbfL/0ecILiTVyuNR6oal3pw
Date: Wed, 6 Jan 2021 13:30:02 +0000
Message-ID: <f6368bef56b54bdf94c2fdb1fa0752d1@huawei.com>
References: <20210106131702.32507-1-zhengyongjun3@huawei.com>
In-Reply-To: <20210106131702.32507-1-zhengyongjun3@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.174.178.249]
MIME-Version: 1.0
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U29ycnksIHRoaXMgaXMgbXkgZmF1bHQsIGFsbCB0aGlzIG1lZGlhIHJlbGF0ZWQgcGF0Y2ggY29t
bWl0IG1zZyBpcyB3cm9uZywgSSB3aWxsIHNlbmQgcGF0Y2ggdjIsIHBsZWFzZSBpZ25vcmUgaXQu
DQoNCi0tLS0t08q8/tStvP4tLS0tLQ0Kt6K8/sjLOiB6aGVuZ3lvbmdqdW4gDQq3osvNyrG85Dog
MjAyMcTqMdTCNsjVIDIxOjE3DQrK1bz+yMs6IGNsYWJiZUBiYXlsaWJyZS5jb207IG1jaGVoYWJA
a2VybmVsLm9yZzsgbWpwZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2UubmV0OyBsaW51eC1tZWRp
YUB2Z2VyLmtlcm5lbC5vcmc7IGRldmVsQGRyaXZlcmRldi5vc3Vvc2wub3JnOyBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnDQqzrcvNOiBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsgemhl
bmd5b25nanVuIDx6aGVuZ3lvbmdqdW4zQGh1YXdlaS5jb20+DQrW98ziOiBbUEFUQ0ggLW5leHRd
IG1lZGlhOiB6b3JhbjogdXNlIHJlc291cmNlX3NpemUNCg0KVXNlIHJlc291cmNlX3NpemUgcmF0
aGVyIHRoYW4gYSB2ZXJib3NlIGNvbXB1dGF0aW9uIG9uIHRoZSBlbmQgYW5kIHN0YXJ0IGZpZWxk
cy4NCg0KU2lnbmVkLW9mZi1ieTogWmhlbmcgWW9uZ2p1biA8emhlbmd5b25nanVuM0BodWF3ZWku
Y29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5nL21lZGlhL3pvcmFuL3pvcmFuX2RyaXZlci5jIHwg
MiArLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3pvcmFuL3pvcmFuX2RyaXZlci5jIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3pvcmFuL3pvcmFuX2RyaXZlci5jDQppbmRleCA4MDgxOTZl
YTViODEuLmQ2MGI0YzczZWE4MCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS96
b3Jhbi96b3Jhbl9kcml2ZXIuYw0KKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3pvcmFuL3pv
cmFuX2RyaXZlci5jDQpAQCAtMTAyMCw3ICsxMDIwLDcgQEAgaW50IHpvcmFuX3F1ZXVlX2luaXQo
c3RydWN0IHpvcmFuICp6ciwgc3RydWN0IHZiMl9xdWV1ZSAqdnEpDQogCXZxLT5idWZfc3RydWN0
X3NpemUgPSBzaXplb2Yoc3RydWN0IHpyX2J1ZmZlcik7DQogCXZxLT5vcHMgPSAmenJfdmlkZW9f
cW9wczsNCiAJdnEtPm1lbV9vcHMgPSAmdmIyX2RtYV9jb250aWdfbWVtb3BzOw0KLQl2cS0+Z2Zw
X2ZsYWdzID0gR0ZQX0RNQTMyLA0KKwl2cS0+Z2ZwX2ZsYWdzID0gR0ZQX0RNQTMyOw0KIAl2cS0+
dGltZXN0YW1wX2ZsYWdzID0gVjRMMl9CVUZfRkxBR19USU1FU1RBTVBfTU9OT1RPTklDOw0KIAl2
cS0+bWluX2J1ZmZlcnNfbmVlZGVkID0gOTsNCiAJdnEtPmxvY2sgPSAmenItPmxvY2s7DQotLQ0K
Mi4yMi4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
