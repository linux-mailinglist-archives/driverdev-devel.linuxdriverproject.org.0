Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 047D023A717
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 15:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49530867DF;
	Mon,  3 Aug 2020 13:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvBWSMdcsH2G; Mon,  3 Aug 2020 13:00:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34DCF864C5;
	Mon,  3 Aug 2020 13:00:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E68B61BF3C5
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 13:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD932864C5
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 13:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zrTXQ8Flv0+v for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 13:00:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28BE286174
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 13:00:13 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BBB92F67641D87B08163;
 Mon,  3 Aug 2020 21:00:09 +0800 (CST)
Received: from [127.0.0.1] (10.174.179.108) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0;
 Mon, 3 Aug 2020 21:00:08 +0800
Subject: Re: [PATCH -next] media: staging: tegra-vde: Mark
 tegra_vde_runtime_suspend as __maybe_unused
To: Dmitry Osipenko <digetx@gmail.com>, <mchehab@kernel.org>,
 <gregkh@linuxfoundation.org>, <thierry.reding@gmail.com>,
 <jonathanh@nvidia.com>, <hverkuil-cisco@xs4all.nl>
References: <20200803115901.44068-1-yuehaibing@huawei.com>
 <721b8d01-5d7e-09c6-5f86-705130ab31a9@gmail.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <e15a688e-934b-82a8-34c5-aac07928fd8f@huawei.com>
Date: Mon, 3 Aug 2020 21:00:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <721b8d01-5d7e-09c6-5f86-705130ab31a9@gmail.com>
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

T24gMjAyMC84LzMgMjA6NTEsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiAwMy4wOC4yMDIwIDE0
OjU5LCBZdWVIYWliaW5nINC/0LjRiNC10YI6Cj4+IElmIENPTkZJR19QTSBpcyBub3Qgc2V0LCBn
Y2Mgd2FybnM6Cj4+Cj4+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmM6OTE2
OjEyOgo+PiAgd2FybmluZzogJ3RlZ3JhX3ZkZV9ydW50aW1lX3N1c3BlbmQnIGRlZmluZWQgYnV0
IG5vdCB1c2VkIFstV3VudXNlZC1mdW5jdGlvbl0KPj4KPj4gTWFrZSBpdCBfX21heWJlX3VudXNl
ZCB0byBmaXggdGhpcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogWXVlSGFpYmluZyA8eXVlaGFpYmlu
Z0BodWF3ZWkuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUv
dmRlLmMgfCAyICstCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUv
dmRlLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4+IGluZGV4IGEz
YzI0ZDk2ZDViOS4uMmQwNDNkNTE4ZWVmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdy
YS12ZGUvdmRlLmMKPj4gQEAgLTkxMyw3ICs5MTMsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgdGVn
cmFfdmRlX2lzcihpbnQgaXJxLCB2b2lkICpkYXRhKQo+PiAgCXJldHVybiBJUlFfSEFORExFRDsK
Pj4gIH0KPj4gIAo+PiAtc3RhdGljIGludCB0ZWdyYV92ZGVfcnVudGltZV9zdXNwZW5kKHN0cnVj
dCBkZXZpY2UgKmRldikKPj4gK3N0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgdGVncmFfdmRlX3J1
bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICB7Cj4+ICAJc3RydWN0IHRlZ3Jh
X3ZkZSAqdmRlID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+ICAJaW50IGVycjsKPj4KPiAKPiBI
ZWxsbyBZdWUsCj4gCj4gU2hvdWxkbid0IHRoZSB0ZWdyYV92ZGVfcnVudGltZV9yZXN1bWUoKSBi
ZSBtYXJrZWQgYXMgd2VsbD8KCk5vLCB0ZWdyYV92ZGVfcnVudGltZV9yZXN1bWUoKSBhbHdheXMg
YmUgY2FsbGVkIGJ5IHRlZ3JhX3ZkZV9zaHV0ZG93bigpLgoKPiAKPiAuCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
