Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 569F82A2B4
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 06:18:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB8448819F;
	Sat, 25 May 2019 04:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M3MWXLJltC+g; Sat, 25 May 2019 04:18:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8575487D7F;
	Sat, 25 May 2019 04:18:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5B381BF417
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 04:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D191A88C8E
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 04:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ktZuO9DXjEqb for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 04:18:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7B4E88517
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 04:18:25 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A3AC57A6F2A73DE5BF64;
 Sat, 25 May 2019 12:18:22 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Sat, 25 May 2019 12:18:13 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <gregkh@linuxfoundation.org>, <jeremy@azazel.net>
Subject: [PATCH net] =?UTF-8?q?staging:=20Remove=20set=20but=20not=20used?=
 =?UTF-8?q?=20variable=20=E2=80=98status=E2=80=99?=
Date: Sat, 25 May 2019 12:26:42 +0800
Message-ID: <20190525042642.78482-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
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
d2VpLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIu
YyB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9rcGMyMDAwL2twY19zcGkvc3BpX2RyaXZlci5jCmluZGV4IDg2ZGYxNjU0N2E5Mi4uMTZm
OTUxOGY4ZDYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3Nw
aV9kcml2ZXIuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2
ZXIuYwpAQCAtMjc5LDcgKzI3OSw2IEBAIGtwX3NwaV90cmFuc2Zlcl9vbmVfbWVzc2FnZShzdHJ1
Y3Qgc3BpX21hc3RlciAqbWFzdGVyLCBzdHJ1Y3Qgc3BpX21lc3NhZ2UgKm0pCiAgICAgc3RydWN0
IGtwX3NwaSAgICAgICAqa3BzcGk7CiAgICAgc3RydWN0IHNwaV90cmFuc2ZlciAqdHJhbnNmZXI7
CiAgICAgdW5pb24ga3Bfc3BpX2NvbmZpZyBzYzsKLSAgICBpbnQgc3RhdHVzID0gMDsKICAgICAK
ICAgICBzcGlkZXYgPSBtLT5zcGk7CiAgICAga3BzcGkgPSBzcGlfbWFzdGVyX2dldF9kZXZkYXRh
KG1hc3Rlcik7CkBAIC0zMzIsNyArMzMxLDYgQEAga3Bfc3BpX3RyYW5zZmVyX29uZV9tZXNzYWdl
KHN0cnVjdCBzcGlfbWFzdGVyICptYXN0ZXIsIHN0cnVjdCBzcGlfbWVzc2FnZSAqbSkKICAgICAv
KiBkbyB0aGUgdHJhbnNmZXJzIGZvciB0aGlzIG1lc3NhZ2UgKi8KICAgICBsaXN0X2Zvcl9lYWNo
X2VudHJ5KHRyYW5zZmVyLCAmbS0+dHJhbnNmZXJzLCB0cmFuc2Zlcl9saXN0KSB7CiAgICAgICAg
IGlmICh0cmFuc2Zlci0+dHhfYnVmID09IE5VTEwgJiYgdHJhbnNmZXItPnJ4X2J1ZiA9PSBOVUxM
ICYmIHRyYW5zZmVyLT5sZW4pIHsKLSAgICAgICAgICAgIHN0YXR1cyA9IC1FSU5WQUw7CiAgICAg
ICAgICAgICBicmVhazsKICAgICAgICAgfQogICAgICAgICAKQEAgLTM3MCw3ICszNjgsNiBAQCBr
cF9zcGlfdHJhbnNmZXJfb25lX21lc3NhZ2Uoc3RydWN0IHNwaV9tYXN0ZXIgKm1hc3Rlciwgc3Ry
dWN0IHNwaV9tZXNzYWdlICptKQogICAgICAgICAgICAgbS0+YWN0dWFsX2xlbmd0aCArPSBjb3Vu
dDsKICAgICAgICAgICAgIAogICAgICAgICAgICAgaWYgKGNvdW50ICE9IHRyYW5zZmVyLT5sZW4p
IHsKLSAgICAgICAgICAgICAgICBzdGF0dXMgPSAtRUlPOwogICAgICAgICAgICAgICAgIGJyZWFr
OwogICAgICAgICAgICAgfQogICAgICAgICB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
