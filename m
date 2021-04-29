Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF03136E5AF
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 09:14:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC71F60E07;
	Thu, 29 Apr 2021 07:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sx4S3vLqknWB; Thu, 29 Apr 2021 07:14:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF56260B3D;
	Thu, 29 Apr 2021 07:13:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F3B61BF36C
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 07:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8DB16418F4
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 07:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9PEoXybT7lAX for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 07:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 663284191F
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 07:13:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 177EF6141E;
 Thu, 29 Apr 2021 07:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619680421;
 bh=58tmw40R8d7hq0bYQ7ucYztt+FsoRTyGxT8Or5otJ0Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=u57bft8gaxqZ58WFZiZsaUCAj2+SFYgQnW+zHQWeVoDKQuNe28Ui9nkShXq8gVFJP
 CxAeWwIPITWLcLLSYO5a8o1543Vr7+nNrZWBDirk+efgJkiDxpcY4TllSycRwVeHqg
 D5XQknT64m26ahQWr9FzltYNllvJes0t6xG92DVAzgEcUYHABn0wodLonRFrXo+4WZ
 5gby7lVxrfSdnbgxKvu763v6/b6KwHgoB5P54m1Hq6INKRHT4092QQMLAxJBZggXG6
 C4dTCZbYAp6DMa/E3SHwqVrYbvqocLq0CDv4pM58sLQpLqyduPUhwBWODkU91qqkXU
 1Q14nXullZdgg==
Date: Thu, 29 Apr 2021 09:13:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v4 79/79] media: hantro: do a PM resume earlier
Message-ID: <20210429091335.2b563ab5@coco.lan>
In-Reply-To: <e5eeffbbad6ee90204cb3928cfd6774efb6174f3.camel@collabora.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <569838d406dde80dcc64989a663882817a54cbb2.1619621413.git.mchehab+huawei@kernel.org>
 <e5eeffbbad6ee90204cb3928cfd6774efb6174f3.camel@collabora.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RW0gV2VkLCAyOCBBcHIgMjAyMSAxNDoxNzo1MCAtMDMwMApFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+IGVzY3JldmV1OgoKPiBIaSBNYXVybywKPiAKPiBUaGFua3MgYSBs
b3QgZm9yIHRha2luZyBjYXJlIG9mIHRoaXMuCj4gCj4gT24gV2VkLCAyMDIxLTA0LTI4IGF0IDE2
OjUyICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgd3JvdGU6Cj4gPiBUaGUgZGV2aWNlX3J1
bigpIGZpcnN0IGVuYWJsZXMgdGhlIGNsb2NrIGFuZCB0aGVuCj4gPiB0cmllcyB0byByZXN1bWUg
UE0gcnVudGltZSwgY2hlY2tpbmcgZm9yIGVycm9ycy4KPiA+IAo+ID4gV2VsbCwgaWYgZm9yIHNv
bWUgcmVhc29uIHRoZSBwbV9ydW50aW1lIGNhbiBub3QgcmVzdW1lLAo+ID4gaXQgd291bGQgYmUg
YmV0dGVyIHRvIGRldGVjdCBpdCBiZWZvcmVoYW5kLgo+ID4gCj4gPiBTbywgY2hhbmdlIHRoZSBv
cmRlciBpbnNpZGUgZGV2aWNlX3J1bigpLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBD
YXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+ICAKPiAKPiBDbG9ja3Mg
Y291bGQgYmUgYmVoaW5kIHBvd2VyLWRvbWFpbnMsIElJUkMsIHNvIHRoaXMgY2hhbmdlCj4gaXMg
Zml4aW5nIHRoYXQuCj4gCj4gSG93ZXZlciwgdGhpcyBoYXMgZXZlciBiZWVuIGEgcHJvYmxlbSBm
b3IgdGhpcyBkcml2ZXIsCj4gc28gSSBkb24ndCB0aGluayBpdCBtYWtlcyBzZW5zZSB0byBib3Ro
ZXIgd2l0aCBGaXhlcyB0YWcuCgpJIHdvdWxkIHByZWZlciB0byBtb3ZlIHRoaXMgcGF0Y2ggdG8g
dGhlIGZpcnN0IHBhcnQgb2YgdGhpcwpzZXJpZXMsIHRvZ2V0aGVyIHdpdGggb3RoZXIgZml4ZXMs
IHJlYmFzaW5nIGl0IHRvIGFwcGx5IGNsZWFubHkKYmVmb3JlIHRoZSBwbV9ydW50aW1lX3Jlc3Vt
ZV9hbmRfZ2V0KCkgcGF0Y2gsIHdpdGg6CgogICAgRml4ZXM6IDc3NWZlYzY5MDA4ZCAoIm1lZGlh
OiBhZGQgUm9ja2NoaXAgVlBVIEpQRUcgZW5jb2RlciBkcml2ZXIiKQoKVGhpcyB3YXksIHBlb3Bs
ZSB0aGF0IGNvdWxkIGJlIGludGVyZXN0ZWQgb24gYmFja3BvcnRpbmcgaXQgd2lsbCBiZQpjYXBh
YmxlIHRvIGFwcGx5IGl0IGFzIGlzIHRvIHN0YWJsZSBLZXJuZWwgcmVsZWFzZXMgdGhhdCBjYW1l
CndpdGggdGhpcyBkcml2ZXIuCgo+IAo+IFJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6
ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gCj4gVGhhbmtzLAo+IEV6ZXF1aWVsCj4gCj4gPiAtLS0K
PiA+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgfCA4ICsrKyst
LS0tCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiBp
bmRleCAyNWZhMzZlN2U3NzMuLjY3ZGU2YjE1MjM2ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gQEAgLTE2MCwxNCArMTYwLDE0IEBAIHN0
YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJpdikKPiA+IMKgwqDCoMKgwqDCoMKgwqBzcmMg
PSBoYW50cm9fZ2V0X3NyY19idWYoY3R4KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBkc3QgPSBoYW50
cm9fZ2V0X2RzdF9idWYoY3R4KTsKPiA+IMKgCj4gPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBjbGtf
YnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9j
a3MpOwo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBnb3RvIGVycl9jYW5jZWxfam9iOwo+ID4gLQo+ID4gwqDCoMKgwqDCoMKgwqDC
oHJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoY3R4LT5kZXYtPmRldik7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKHJldCA8IDApCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0ID0g
Y2xrX2J1bGtfZW5hYmxlKGN0eC0+ZGV2LT52YXJpYW50LT5udW1fY2xvY2tzLCBjdHgtPmRldi0+
Y2xvY2tzKTsKPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiA+ICsKPiA+IMKgwqDCoMKgwqDC
oMKgwqB2NGwyX20ybV9idWZfY29weV9tZXRhZGF0YShzcmMsIGRzdCwgdHJ1ZSk7Cj4gPiDCoAo+
ID4gwqDCoMKgwqDCoMKgwqDCoGN0eC0+Y29kZWNfb3BzLT5ydW4oY3R4KTsgIAo+IAo+IAoKCgpU
aGFua3MsCk1hdXJvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
