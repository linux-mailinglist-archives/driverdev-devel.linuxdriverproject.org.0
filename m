Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034712A35A
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 10:05:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A176488C88;
	Sat, 25 May 2019 08:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cdh7Mk2n5BXH; Sat, 25 May 2019 08:05:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B4AB88A37;
	Sat, 25 May 2019 08:05:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DA461BF5DA
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 08:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A1DD8686F
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 08:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1My_nHKX98o3 for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 08:05:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C58FE86868
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 08:05:02 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C69EB89F2EF8727085CA;
 Sat, 25 May 2019 16:04:58 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Sat, 25 May 2019 16:04:49 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <gregkh@linuxfoundation.org>, <jeremy@azazel.net>
Subject: [PATCH -next v2] =?UTF-8?q?staging:=20kpc2000:=20Remove=20set=20b?=
 =?UTF-8?q?ut=20not=20used=20variable=20=E2=80=98status=E2=80=99?=
Date: Sat, 25 May 2019 16:13:21 +0800
Message-ID: <20190525081321.121294-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525042642.78482-1-maowenan@huawei.com>
References: <20190525042642.78482-1-maowenan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgoKZHJpdmVycy9z
dGFnaW5nL2twYzIwMDAva3BjX3NwaS9zcGlfZHJpdmVyLmM6IEluIGZ1bmN0aW9uCuKAmGtwX3Nw
aV90cmFuc2Zlcl9vbmVfbWVzc2FnZeKAmToKZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX3Nw
aS9zcGlfZHJpdmVyLmM6MjgyOjk6IHdhcm5pbmc6IHZhcmlhYmxlCuKAmHN0YXR1c+KAmSBzZXQg
YnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQogICAgIGludCBzdGF0dXMg
PSAwOwogICAgICAgICBefn5+fn4KVGhlIHZhcmlhYmxlICdzdGF0dXMnIGlzIG5vdCB1c2VkIGFu
eSBtb3JlLCByZW12ZSBpdC4KClNpZ25lZC1vZmYtYnk6IE1hbyBXZW5hbiA8bWFvd2VuYW5AaHVh
d2VpLmNvbT4KLS0tCiB2MjogY2hhbmdlIHRoZSBzdWJqZWN0IG9mIHRoZSBwYXRjaC4KLS0tCiBk
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIuYyB8IDMgLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
a3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2tw
Y19zcGkvc3BpX2RyaXZlci5jCmluZGV4IDg2ZGYxNjU0N2E5Mi4uMTZmOTUxOGY4ZDYzIDEwMDY0
NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIuYworKysg
Yi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIuYwpAQCAtMjc5LDcg
KzI3OSw2IEBAIGtwX3NwaV90cmFuc2Zlcl9vbmVfbWVzc2FnZShzdHJ1Y3Qgc3BpX21hc3RlciAq
bWFzdGVyLCBzdHJ1Y3Qgc3BpX21lc3NhZ2UgKm0pCiAgICAgc3RydWN0IGtwX3NwaSAgICAgICAq
a3BzcGk7CiAgICAgc3RydWN0IHNwaV90cmFuc2ZlciAqdHJhbnNmZXI7CiAgICAgdW5pb24ga3Bf
c3BpX2NvbmZpZyBzYzsKLSAgICBpbnQgc3RhdHVzID0gMDsKICAgICAKICAgICBzcGlkZXYgPSBt
LT5zcGk7CiAgICAga3BzcGkgPSBzcGlfbWFzdGVyX2dldF9kZXZkYXRhKG1hc3Rlcik7CkBAIC0z
MzIsNyArMzMxLDYgQEAga3Bfc3BpX3RyYW5zZmVyX29uZV9tZXNzYWdlKHN0cnVjdCBzcGlfbWFz
dGVyICptYXN0ZXIsIHN0cnVjdCBzcGlfbWVzc2FnZSAqbSkKICAgICAvKiBkbyB0aGUgdHJhbnNm
ZXJzIGZvciB0aGlzIG1lc3NhZ2UgKi8KICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHRyYW5zZmVy
LCAmbS0+dHJhbnNmZXJzLCB0cmFuc2Zlcl9saXN0KSB7CiAgICAgICAgIGlmICh0cmFuc2Zlci0+
dHhfYnVmID09IE5VTEwgJiYgdHJhbnNmZXItPnJ4X2J1ZiA9PSBOVUxMICYmIHRyYW5zZmVyLT5s
ZW4pIHsKLSAgICAgICAgICAgIHN0YXR1cyA9IC1FSU5WQUw7CiAgICAgICAgICAgICBicmVhazsK
ICAgICAgICAgfQogICAgICAgICAKQEAgLTM3MCw3ICszNjgsNiBAQCBrcF9zcGlfdHJhbnNmZXJf
b25lX21lc3NhZ2Uoc3RydWN0IHNwaV9tYXN0ZXIgKm1hc3Rlciwgc3RydWN0IHNwaV9tZXNzYWdl
ICptKQogICAgICAgICAgICAgbS0+YWN0dWFsX2xlbmd0aCArPSBjb3VudDsKICAgICAgICAgICAg
IAogICAgICAgICAgICAgaWYgKGNvdW50ICE9IHRyYW5zZmVyLT5sZW4pIHsKLSAgICAgICAgICAg
ICAgICBzdGF0dXMgPSAtRUlPOwogICAgICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICAgICAg
fQogICAgICAgICB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
