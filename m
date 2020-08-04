Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB21223B25E
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 03:39:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 80768220C2;
	Tue,  4 Aug 2020 01:39:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KEeRedNRRbNh; Tue,  4 Aug 2020 01:39:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 18144204D4;
	Tue,  4 Aug 2020 01:39:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E95841BF2B9
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 01:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E042586B78
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 01:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4YTa+3xoceg for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 01:39:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B139286B67
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 01:39:50 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9962D526A60D04327E95;
 Tue,  4 Aug 2020 09:39:46 +0800 (CST)
Received: from [127.0.0.1] (10.174.179.108) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0;
 Tue, 4 Aug 2020 09:39:41 +0800
Subject: Re: [PATCH -next] media: staging: tegra-vde: Mark
 tegra_vde_runtime_suspend as __maybe_unused
To: Dmitry Osipenko <digetx@gmail.com>, <mchehab@kernel.org>,
 <gregkh@linuxfoundation.org>, <thierry.reding@gmail.com>,
 <jonathanh@nvidia.com>, <hverkuil-cisco@xs4all.nl>
References: <20200803115901.44068-1-yuehaibing@huawei.com>
 <721b8d01-5d7e-09c6-5f86-705130ab31a9@gmail.com>
 <e15a688e-934b-82a8-34c5-aac07928fd8f@huawei.com>
 <95162bdc-2658-30a7-6ed2-63e095244139@gmail.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <f30f49f4-f249-d0de-fcfd-1fc52631a1f5@huawei.com>
Date: Tue, 4 Aug 2020 09:39:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <95162bdc-2658-30a7-6ed2-63e095244139@gmail.com>
X-Originating-IP: [10.174.179.108]
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAyMC84LzMgMjI6MTEsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiAwMy4wOC4yMDIwIDE2
OjAwLCBZdWVoYWliaW5nINC/0LjRiNC10YI6Cj4+IE9uIDIwMjAvOC8zIDIwOjUxLCBEbWl0cnkg
T3NpcGVua28gd3JvdGU6Cj4+PiAwMy4wOC4yMDIwIDE0OjU5LCBZdWVIYWliaW5nINC/0LjRiNC1
0YI6Cj4+Pj4gSWYgQ09ORklHX1BNIGlzIG5vdCBzZXQsIGdjYyB3YXJuczoKPj4+Pgo+Pj4+IGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmM6OTE2OjEyOgo+Pj4+ICB3YXJuaW5n
OiAndGVncmFfdmRlX3J1bnRpbWVfc3VzcGVuZCcgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51
c2VkLWZ1bmN0aW9uXQo+Pj4+Cj4+Pj4gTWFrZSBpdCBfX21heWJlX3VudXNlZCB0byBmaXggdGhp
cy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2Vp
LmNvbT4KPj4+PiAtLS0KPj4+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUu
YyB8IDIgKy0KPj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZk
ZS92ZGUuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMKPj4+PiBpbmRl
eCBhM2MyNGQ5NmQ1YjkuLjJkMDQzZDUxOGVlZiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4+Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS92ZGUuYwo+Pj4+IEBAIC05MTMsNyArOTEzLDcgQEAgc3RhdGljIGlycXJl
dHVybl90IHRlZ3JhX3ZkZV9pc3IoaW50IGlycSwgdm9pZCAqZGF0YSkKPj4+PiAgCXJldHVybiBJ
UlFfSEFORExFRDsKPj4+PiAgfQo+Pj4+ICAKPj4+PiAtc3RhdGljIGludCB0ZWdyYV92ZGVfcnVu
dGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPj4+PiArc3RhdGljIF9fbWF5YmVfdW51
c2VkIGludCB0ZWdyYV92ZGVfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPj4+
PiAgewo+Pj4+ICAJc3RydWN0IHRlZ3JhX3ZkZSAqdmRlID0gZGV2X2dldF9kcnZkYXRhKGRldik7
Cj4+Pj4gIAlpbnQgZXJyOwo+Pj4+Cj4+Pgo+Pj4gSGVsbG8gWXVlLAo+Pj4KPj4+IFNob3VsZG4n
dCB0aGUgdGVncmFfdmRlX3J1bnRpbWVfcmVzdW1lKCkgYmUgbWFya2VkIGFzIHdlbGw/Cj4+Cj4+
IE5vLCB0ZWdyYV92ZGVfcnVudGltZV9yZXN1bWUoKSBhbHdheXMgYmUgY2FsbGVkIGJ5IHRlZ3Jh
X3ZkZV9zaHV0ZG93bigpLgo+IAo+IFdlbGwuLiBpdCdzIHVudXNlZCwgYnV0IGNvbXBpbGVyIGRv
ZXNuJ3QgY29tcGxhaW4gYWJvdXQgcnVudGltZV9yZXN1bWUoKQo+IGJlY2F1c2UgaXQgc2VlcyB0
aGUgcG90ZW50aWFsIHJlZmVyZW5jZSB0byB0aGF0IGZ1bmN0aW9uIGluIHRoZSBjb2RlCj4gKGV2
ZW4gdGhhdCBpdCdzIGEgZGVhZCBjb2RlKSwgd2hpbGUgcnVudGltZV9zdXNwZW5kKCkgcmVmZXJl
bmNlIGlzCj4gY29tcGxldGVseSByZW1vdmVkIGJ5IHByZXByb2Nlc3NvciBiZWZvcmUgY29tcGls
ZXIgc2VlcyB0aGUgY29kZS4KPiAKCkkgc2VlLCB0aGFua3MsIHdpbGwgc2VuZCB2Mi4KCj4gU2hv
dWxkIGJlIG5pY2VyIHRvIGhhdmUgYm90aCBzdXNwZW5kIGFuZCByZXN1bWUgZnVuY3Rpb25zIG1h
cmtlZCwgZm9yCj4gY29uc2lzdGVuY3ksIElNTy4KPiAKPiAuCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
