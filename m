Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4D22BD20
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 04:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5ADD285F89;
	Tue, 28 May 2019 02:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bdn1nL7MsQNd; Tue, 28 May 2019 02:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3057484499;
	Tue, 28 May 2019 02:10:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC8411BF95E
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 02:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D26CE86F88
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 02:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rvlAHI7V9scb for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 02:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0EDDE86DA3
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 02:09:48 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7FD15975CEE8A2494546;
 Tue, 28 May 2019 10:09:45 +0800 (CST)
Received: from [127.0.0.1] (10.177.96.96) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 10:09:42 +0800
Subject: =?UTF-8?Q?Re:_[PATCH_-next_v2]_staging:_kpc2000:_Remove_set_but_not?=
 =?UTF-8?B?IHVzZWQgdmFyaWFibGUg4oCYc3RhdHVz4oCZ?=
To: <gregkh@linuxfoundation.org>, <jeremy@azazel.net>
References: <20190525042642.78482-1-maowenan@huawei.com>
 <20190525081321.121294-1-maowenan@huawei.com>
From: maowenan <maowenan@huawei.com>
Message-ID: <69398d9c-68e1-e4c5-35f9-4bf09627e48a@huawei.com>
Date: Tue, 28 May 2019 10:09:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190525081321.121294-1-maowenan@huawei.com>
X-Originating-IP: [10.177.96.96]
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
Cc: devel@driverdev.osuosl.org, Sven Van Asbroeck <thesven73@gmail.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

cGxlYXNlIGlnbm9yZSB2MiB2ZXJzaW9uLgpJIHdpbGwgc2VuZCB2MyBsYXRlciBhY2NvcmRpbmcg
dG8gU3ZlbiBWYW4gQXNicm9lY2sgJ3MgY29tbWVudHMuCgpPbiAyMDE5LzUvMjUgMTY6MTMsIE1h
byBXZW5hbiB3cm90ZToKPiBGaXhlcyBnY2MgJy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGUnIHdh
cm5pbmc6Cj4gCj4gZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX3NwaS9zcGlfZHJpdmVyLmM6
IEluIGZ1bmN0aW9uCj4g4oCYa3Bfc3BpX3RyYW5zZmVyX29uZV9tZXNzYWdl4oCZOgo+IGRyaXZl
cnMvc3RhZ2luZy9rcGMyMDAwL2twY19zcGkvc3BpX2RyaXZlci5jOjI4Mjo5OiB3YXJuaW5nOiB2
YXJpYWJsZQo+IOKAmHN0YXR1c+KAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0
LXZhcmlhYmxlXQo+ICAgICAgaW50IHN0YXR1cyA9IDA7Cj4gICAgICAgICAgXn5+fn5+Cj4gVGhl
IHZhcmlhYmxlICdzdGF0dXMnIGlzIG5vdCB1c2VkIGFueSBtb3JlLCByZW12ZSBpdC4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBNYW8gV2VuYW4gPG1hb3dlbmFuQGh1YXdlaS5jb20+Cj4gLS0tCj4gIHYy
OiBjaGFuZ2UgdGhlIHN1YmplY3Qgb2YgdGhlIHBhdGNoLgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdp
bmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIuYyB8IDMgLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAw
MC9rcGNfc3BpL3NwaV9kcml2ZXIuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19zcGkv
c3BpX2RyaXZlci5jCj4gaW5kZXggODZkZjE2NTQ3YTkyLi4xNmY5NTE4ZjhkNjMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX3NwaS9zcGlfZHJpdmVyLmMKPiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIuYwo+IEBAIC0yNzks
NyArMjc5LDYgQEAga3Bfc3BpX3RyYW5zZmVyX29uZV9tZXNzYWdlKHN0cnVjdCBzcGlfbWFzdGVy
ICptYXN0ZXIsIHN0cnVjdCBzcGlfbWVzc2FnZSAqbSkKPiAgICAgIHN0cnVjdCBrcF9zcGkgICAg
ICAgKmtwc3BpOwo+ICAgICAgc3RydWN0IHNwaV90cmFuc2ZlciAqdHJhbnNmZXI7Cj4gICAgICB1
bmlvbiBrcF9zcGlfY29uZmlnIHNjOwo+IC0gICAgaW50IHN0YXR1cyA9IDA7Cj4gICAgICAKPiAg
ICAgIHNwaWRldiA9IG0tPnNwaTsKPiAgICAgIGtwc3BpID0gc3BpX21hc3Rlcl9nZXRfZGV2ZGF0
YShtYXN0ZXIpOwo+IEBAIC0zMzIsNyArMzMxLDYgQEAga3Bfc3BpX3RyYW5zZmVyX29uZV9tZXNz
YWdlKHN0cnVjdCBzcGlfbWFzdGVyICptYXN0ZXIsIHN0cnVjdCBzcGlfbWVzc2FnZSAqbSkKPiAg
ICAgIC8qIGRvIHRoZSB0cmFuc2ZlcnMgZm9yIHRoaXMgbWVzc2FnZSAqLwo+ICAgICAgbGlzdF9m
b3JfZWFjaF9lbnRyeSh0cmFuc2ZlciwgJm0tPnRyYW5zZmVycywgdHJhbnNmZXJfbGlzdCkgewo+
ICAgICAgICAgIGlmICh0cmFuc2Zlci0+dHhfYnVmID09IE5VTEwgJiYgdHJhbnNmZXItPnJ4X2J1
ZiA9PSBOVUxMICYmIHRyYW5zZmVyLT5sZW4pIHsKPiAtICAgICAgICAgICAgc3RhdHVzID0gLUVJ
TlZBTDsKPiAgICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICAgfQo+ICAgICAgICAgIAo+IEBA
IC0zNzAsNyArMzY4LDYgQEAga3Bfc3BpX3RyYW5zZmVyX29uZV9tZXNzYWdlKHN0cnVjdCBzcGlf
bWFzdGVyICptYXN0ZXIsIHN0cnVjdCBzcGlfbWVzc2FnZSAqbSkKPiAgICAgICAgICAgICAgbS0+
YWN0dWFsX2xlbmd0aCArPSBjb3VudDsKPiAgICAgICAgICAgICAgCj4gICAgICAgICAgICAgIGlm
IChjb3VudCAhPSB0cmFuc2Zlci0+bGVuKSB7Cj4gLSAgICAgICAgICAgICAgICBzdGF0dXMgPSAt
RUlPOwo+ICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICAgICAgIH0KPiAgICAgICAg
ICB9Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
