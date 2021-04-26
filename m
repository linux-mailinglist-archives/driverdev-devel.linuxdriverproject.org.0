Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 418AD36B350
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Apr 2021 14:42:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63F018399B;
	Mon, 26 Apr 2021 12:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VU8lSYa0PvkJ; Mon, 26 Apr 2021 12:42:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC5E38350A;
	Mon, 26 Apr 2021 12:42:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2250C1BF34C
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 12:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AA748350A
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 12:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9G_n1_q3Ctkw for <devel@linuxdriverproject.org>;
 Mon, 26 Apr 2021 12:42:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65981834BB
 for <devel@driverdev.osuosl.org>; Mon, 26 Apr 2021 12:42:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8106D611CE;
 Mon, 26 Apr 2021 12:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619440939;
 bh=6CTY4exOmL7l22aXrPfGFjlNeMqnCUXrgJOGfHlDDfo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VWTJ3W71PmyDqp2EIS/gk2qcSkPxTNg1O0TT+qg7l1CRzIQpx4x8gsLGCNeg8hde6
 LLDLmGKzWciNzTnd4C+6dzY5zEounZxBbd9JgOYs5KCHTIlFzr0JImy7G9qczdd0FR
 qhtq4lWhv+/8FcQmtwsRDLXIJvtQRRIsqO1vl59SXtWthmgmlsJzAPNXEgoco4RVrw
 Ia6nGezETvVK1HyU80csrp7r0GLCF6hIwxruTJo96NyGn/7UM1uUm9LYfjZPBy/5bu
 SPqi4+DDkZ+3U0VKbxA/UxJ26R/9NcfdWZIqjUnt7SlVIouV29c7DIheCkQFZXiXFA
 iInt69scoTQrw==
Date: Mon, 26 Apr 2021 14:42:12 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 13/78] staging: media: hantro_drv: use
 pm_runtime_resume_and_get()
Message-ID: <20210426144212.1f8430ce@coco.lan>
In-Reply-To: <20210426143327.4f9fb6ea@coco.lan>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
 <780afdc9b263928ed378dfbd3eaa8a5509a59a35.camel@collabora.com>
 <20210426143327.4f9fb6ea@coco.lan>
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

RW0gTW9uLCAyNiBBcHIgMjAyMSAxNDozMzoyNyArMDIwMApNYXVybyBDYXJ2YWxobyBDaGVoYWIg
PG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+IGVzY3JldmV1OgoKPiBFbSBTYXQsIDI0IEFwciAy
MDIxIDIwOjIzOjUzIC0wMzAwCj4gRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEu
Y29tPiBlc2NyZXZldToKPiAKPiA+IEhpIE1hdXJvLAo+ID4gCj4gPiBPbiBTYXQsIDIwMjEtMDQt
MjQgYXQgMDg6NDQgKzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZTogIAo+ID4gPiBD
b21taXQgZGQ4MDg4ZDVhODk2ICgiUE06IHJ1bnRpbWU6IEFkZCBwbV9ydW50aW1lX3Jlc3VtZV9h
bmRfZ2V0IHRvIGRlYWwgd2l0aCB1c2FnZSBjb3VudGVyIikKPiA+ID4gYWRkZWQgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxlCj4gPiA+
IGRldi0+cG93ZXIudXNhZ2VfY291bnQgZGVjcmVtZW50IG9uIGVycm9ycy4KPiA+ID4gCj4gPiA+
IFVzZSB0aGUgbmV3IEFQSSwgaW4gb3JkZXIgdG8gY2xlYW51cCB0aGUgZXJyb3IgY2hlY2sgbG9n
aWMuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1j
aGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Cj4gPiA+IC0tLQo+ID4gPiDCoGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIHwgMiArLQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+ID4gaW5kZXggNTk1ZTgyYTgyNzI4Li4z
MTQ3ZGNiZWJlYjkgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2Rydi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2Rydi5jCj4gPiA+IEBAIC0xNTUsNyArMTU1LDcgQEAgc3RhdGljIHZvaWQgZGV2aWNl
X3J1bih2b2lkICpwcml2KQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gY2xrX2J1bGtfZW5h
YmxlKGN0eC0+ZGV2LT52YXJpYW50LT5udW1fY2xvY2tzLCBjdHgtPmRldi0+Y2xvY2tzKTsKPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiA+ID4gLcKgwqDCoMKgwqDCoMKgcmV0ID0g
cG1fcnVudGltZV9nZXRfc3luYyhjdHgtPmRldi0+ZGV2KTsKPiA+ID4gK8KgwqDCoMKgwqDCoMKg
cmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChjdHgtPmRldi0+ZGV2KTsKPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoGlmIChyZXQgPCAwKQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4gPiA+IMKgICAgIAo+ID4gCj4gPiBTZWVtcyB0
aGlzIG9uZSBuZWVkcyBhIGRpZmZlcmVudCBmaXg6IGVycl9jYW5jZWxfam9iCj4gPiB3aWxsIGNh
bGwgaGFudHJvX2pvYl9maW5pc2ggd2hpY2ggaGFzIGEgcG1fcnVudGltZSBwdXQuICAKPiAKPiBH
b29kIHBvaW50LiBUaGFua3MgZm9yIHJldmlld2luZyBpdCEKPiAKPiBJdCBzb3VuZHMgdGhhdCB0
aGlzIGlzIGEgcGxhY2Ugd2hlcmUgdGhlIGJlc3Qgc2VlbXMKPiB0byBrZWVwIHVzaW5nIHBtX3J1
bnRpbWVfZ2V0X3N5bmMoKSwgYnV0IGxldCdzIGF0IGxlYXN0IGFkZCBhCj4gY29tbWVudCBleHBs
YWluaW5nIHdoeSBpdCBzaG91bGQgYmUga2VwdCBoZXJlLiBUaGlzIHNob3VsZAo+IGhlbHAgdG8g
YXZvaWQgcGVvcGxlIHRvIGNvcHktYW5kLXBhc3RlIHRoZSBjb2RlIG9uIHNpdHVhdGlvbnMKPiB3
aGVyZSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCkgc2hvdWxkIGJlIHVzZWQgaW5zdGVhZC4K
PiAKPiBTZWUgZW5jbG9zZWQgcGF0Y2guCj4gCj4gVGhhbmtzLAo+IE1hdXJvCj4gCj4gW1BBVENI
XSBtZWRpYTogaGFudHJvOiBkb2N1bWVudCB0aGUgdXNhZ2Ugb2YgcG1fcnVudGltZV9nZXRfc3lu
YygpCj4gCj4gRGVzcGl0ZSBvdGhlciAqX2dldCgpLypfcHV0KCkgZnVuY3Rpb25zLCB3aGVyZSB1
c2FnZSBjb3VudCBpcwo+IGluY3JlbWVudGVkIG9ubHkgaWYgbm90IGVycm9ycywgdGhlIHBtX3J1
bnRpbWVfZ2V0X3N5bmMoKSBoYXMKPiBhIGRpZmZlcmVudCBiZWhhdmlvciwgaW5jcmVtZW50aW5n
IHRoZSBjb3VudGVyICpldmVuKiBvbgo+IGVycm9ycy4KPiAKPiBUaGF0J3MgYW4gZXJyb3IgcHJv
bmUgYmVoYXZpb3IsIGFzIHBlb3BsZSBvZnRlbiBmb3JnZXQgdG8KPiBkZWNyZW1lbnQgdGhlIHVz
YWdlIGNvdW50ZXIuCj4gCj4gSG93ZXZlciwgdGhlIGhhbnRybyBkcml2ZXIgZGVwZW5kcyBvbiB0
aGlzIGJlaGF2aW9yLCBhcyBpdAo+IHdpbGwgZGVjcmVtZW50IHRoZSB1c2FnZV9jb3VudCB1bmNv
bmRpdGlvbmFsbHkgYXQgdGhlIG0ybQo+IGpvYiBmaW5pc2ggdGltZSwgd2hpY2ggbWFrZXMgc2Vu
c2UuCj4gCj4gU28sIGludGVhZCBvZiB1c2luZyB0aGUgcG1fcnVudGltZV9yZXN1bWVfYW5kX2dl
dCgpIHRoYXQKPiB3b3VsZCBkZWNyZW1lbnQgdGhlIGNvdW50ZXIgb24gZXJyb3IsIGtlZXAgdGhl
IGN1cnJlbnQKPiBBUEksIGJ1dCBhZGQgYSBkb2N1bWVudGF0aW9uIGV4cGxhaW5pbmcgdGhlIHJh
dGlvbmFsZSBmb3IKPiBrZWVwIHVzaW5nIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5v
cmc+CgpIbW0uLi4gbWF5YmUgaXQgY2FuLCBpbnN0ZWFkLCB1c2UgdGhlIHNhbWUgc29sdXRpb24g
YXMgdGhlCnJrdmRlYyBkcml2ZXIgZG9lcywgaGF2aW5nIGEgam9iX2ZpbmlzaF9ub19wbSgpIHBs
dXMgdGhlIG5vcm1hbApqb2JfZmluaXNoKCkuCgpXaGF0IGRvIHlvdSB0aGluaz8KClJlZ2FyZHMs
Ck1hdXJvCgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4g
aW5kZXggNTk1ZTgyYTgyNzI4Li45NmY5NDBjMWM4NWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+IEBAIC0xNTUsNiArMTU1LDEzIEBAIHN0YXRpYyB2
b2lkIGRldmljZV9ydW4odm9pZCAqcHJpdikKPiAgCXJldCA9IGNsa19idWxrX2VuYWJsZShjdHgt
PmRldi0+dmFyaWFudC0+bnVtX2Nsb2NrcywgY3R4LT5kZXYtPmNsb2Nrcyk7Cj4gIAlpZiAocmV0
KQo+ICAJCWdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4gKwo+ICsJLyoKPiArCSAqIFRoZSBwbV9ydW50
aW1lX2dldF9zeW5jKCkgd2lsbCBpbmNyZW1lbnQgZGV2LT5wb3dlci51c2FnZV9jb3VudCwKPiAr
CSAqIGV2ZW4gb24gZXJyb3JzLiBUaGF0J3MgdGhlIGV4cGVjdGVkIGJlaGF2aW9yIGhlcmUsIHNp
bmNlIHRoZQo+ICsJICogaGFudHJvX2pvYl9maW5pc2goKSBmdW5jdGlvbiBhdCB0aGUgZXJyb3Ig
aGFuZGxpbmcgY29kZQo+ICsJICogd2lsbCBpbnRlcm5hbGx5IGNhbGwgcG1fcnVudGltZV9wdXRf
YXV0b3N1c3BlbmQoKS4KPiArCSAqLwo+ICAJcmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhjdHgt
PmRldi0+ZGV2KTsKPiAgCWlmIChyZXQgPCAwKQo+ICAJCWdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4g
Cj4gCgoKClRoYW5rcywKTWF1cm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
