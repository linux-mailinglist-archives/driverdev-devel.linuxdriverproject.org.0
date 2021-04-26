Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A96E836B31D
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Apr 2021 14:33:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16539608CA;
	Mon, 26 Apr 2021 12:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CeqhwNG-Nq9p; Mon, 26 Apr 2021 12:33:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32237600BB;
	Mon, 26 Apr 2021 12:33:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 712801BF34C
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 12:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F805402C1
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 12:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFiMq-w7q_CC for <devel@linuxdriverproject.org>;
 Mon, 26 Apr 2021 12:33:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78D0740290
 for <devel@driverdev.osuosl.org>; Mon, 26 Apr 2021 12:33:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 396B260233;
 Mon, 26 Apr 2021 12:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619440413;
 bh=WvMI72dlNKXKfzflyxeqjv661v4Ptuau37HZFZ2JpCU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TwtJeLFjpMVq02zL6f76cEVapcwXwg7F7oL6Au9/efbENNz9p487RjgC1K0+H/hPo
 njAjp5XPzRdiWqJB3KjMHZ/pBMGQwXe2vc9UsIKhZUSyhqJVfLb3KRmK/hrLAEM3tl
 KdhfMDJeUg8F1bLvq8z6O9bIqDR80gquSkyrikymYcZ8xkeP2YyNU1JXsypS86Jcih
 ybCZ/T3GpFu2sn3SM17EynT+MeDqoYbcILLbJ7tCZfPhIr6hN7w/wgrK7uNr04medK
 e+qCIOm52KmIHG08YIF2jfq/uBi+jQRpYPsynW6sQOENwi1koIZgSWhV2ACv63YX00
 veVJuoVy/KvMg==
Date: Mon, 26 Apr 2021 14:33:27 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 13/78] staging: media: hantro_drv: use
 pm_runtime_resume_and_get()
Message-ID: <20210426143327.4f9fb6ea@coco.lan>
In-Reply-To: <780afdc9b263928ed378dfbd3eaa8a5509a59a35.camel@collabora.com>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
 <780afdc9b263928ed378dfbd3eaa8a5509a59a35.camel@collabora.com>
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

RW0gU2F0LCAyNCBBcHIgMjAyMSAyMDoyMzo1MyAtMDMwMApFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+IGVzY3JldmV1OgoKPiBIaSBNYXVybywKPiAKPiBPbiBTYXQsIDIw
MjEtMDQtMjQgYXQgMDg6NDQgKzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+
IENvbW1pdCBkZDgwODhkNWE4OTYgKCJQTTogcnVudGltZTogQWRkIHBtX3J1bnRpbWVfcmVzdW1l
X2FuZF9nZXQgdG8gZGVhbCB3aXRoIHVzYWdlIGNvdW50ZXIiKQo+ID4gYWRkZWQgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxlCj4gPiBk
ZXYtPnBvd2VyLnVzYWdlX2NvdW50IGRlY3JlbWVudCBvbiBlcnJvcnMuCj4gPiAKPiA+IFVzZSB0
aGUgbmV3IEFQSSwgaW4gb3JkZXIgdG8gY2xlYW51cCB0aGUgZXJyb3IgY2hlY2sgbG9naWMuCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3
ZWlAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYyB8IDIgKy0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFu
dHJvX2Rydi5jCj4gPiBpbmRleCA1OTVlODJhODI3MjguLjMxNDdkY2JlYmViOSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gQEAgLTE1NSw3
ICsxNTUsNyBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfcnVuKHZvaWQgKnByaXYpCj4gPiDCoMKgwqDC
oMKgwqDCoMKgcmV0ID0gY2xrX2J1bGtfZW5hYmxlKGN0eC0+ZGV2LT52YXJpYW50LT5udW1fY2xv
Y2tzLCBjdHgtPmRldi0+Y2xvY2tzKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGVycl9jYW5jZWxfam9iOwo+ID4g
LcKgwqDCoMKgwqDCoMKgcmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhjdHgtPmRldi0+ZGV2KTsK
PiA+ICvCoMKgwqDCoMKgwqDCoHJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoY3R4LT5k
ZXYtPmRldik7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCA8IDApCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4gPiDCoCAgCj4gCj4g
U2VlbXMgdGhpcyBvbmUgbmVlZHMgYSBkaWZmZXJlbnQgZml4OiBlcnJfY2FuY2VsX2pvYgo+IHdp
bGwgY2FsbCBoYW50cm9fam9iX2ZpbmlzaCB3aGljaCBoYXMgYSBwbV9ydW50aW1lIHB1dC4KCkdv
b2QgcG9pbnQuIFRoYW5rcyBmb3IgcmV2aWV3aW5nIGl0IQoKSXQgc291bmRzIHRoYXQgdGhpcyBp
cyBhIHBsYWNlIHdoZXJlIHRoZSBiZXN0IHNlZW1zCnRvIGtlZXAgdXNpbmcgcG1fcnVudGltZV9n
ZXRfc3luYygpLCBidXQgbGV0J3MgYXQgbGVhc3QgYWRkIGEKY29tbWVudCBleHBsYWluaW5nIHdo
eSBpdCBzaG91bGQgYmUga2VwdCBoZXJlLiBUaGlzIHNob3VsZApoZWxwIHRvIGF2b2lkIHBlb3Bs
ZSB0byBjb3B5LWFuZC1wYXN0ZSB0aGUgY29kZSBvbiBzaXR1YXRpb25zCndoZXJlIHBtX3J1bnRp
bWVfcmVzdW1lX2FuZF9nZXQoKSBzaG91bGQgYmUgdXNlZCBpbnN0ZWFkLgoKU2VlIGVuY2xvc2Vk
IHBhdGNoLgoKVGhhbmtzLApNYXVybwoKW1BBVENIXSBtZWRpYTogaGFudHJvOiBkb2N1bWVudCB0
aGUgdXNhZ2Ugb2YgcG1fcnVudGltZV9nZXRfc3luYygpCgpEZXNwaXRlIG90aGVyICpfZ2V0KCkv
Kl9wdXQoKSBmdW5jdGlvbnMsIHdoZXJlIHVzYWdlIGNvdW50IGlzCmluY3JlbWVudGVkIG9ubHkg
aWYgbm90IGVycm9ycywgdGhlIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBoYXMKYSBkaWZmZXJlbnQg
YmVoYXZpb3IsIGluY3JlbWVudGluZyB0aGUgY291bnRlciAqZXZlbiogb24KZXJyb3JzLgoKVGhh
dCdzIGFuIGVycm9yIHByb25lIGJlaGF2aW9yLCBhcyBwZW9wbGUgb2Z0ZW4gZm9yZ2V0IHRvCmRl
Y3JlbWVudCB0aGUgdXNhZ2UgY291bnRlci4KCkhvd2V2ZXIsIHRoZSBoYW50cm8gZHJpdmVyIGRl
cGVuZHMgb24gdGhpcyBiZWhhdmlvciwgYXMgaXQKd2lsbCBkZWNyZW1lbnQgdGhlIHVzYWdlX2Nv
dW50IHVuY29uZGl0aW9uYWxseSBhdCB0aGUgbTJtCmpvYiBmaW5pc2ggdGltZSwgd2hpY2ggbWFr
ZXMgc2Vuc2UuCgpTbywgaW50ZWFkIG9mIHVzaW5nIHRoZSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRf
Z2V0KCkgdGhhdAp3b3VsZCBkZWNyZW1lbnQgdGhlIGNvdW50ZXIgb24gZXJyb3IsIGtlZXAgdGhl
IGN1cnJlbnQKQVBJLCBidXQgYWRkIGEgZG9jdW1lbnRhdGlvbiBleHBsYWluaW5nIHRoZSByYXRp
b25hbGUgZm9yCmtlZXAgdXNpbmcgcG1fcnVudGltZV9nZXRfc3luYygpLgoKU2lnbmVkLW9mZi1i
eTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKaW5kZXggNTk1ZTgyYTgyNzI4
Li45NmY5NDBjMWM4NWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2Rydi5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Ry
di5jCkBAIC0xNTUsNiArMTU1LDEzIEBAIHN0YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJp
dikKIAlyZXQgPSBjbGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3Ms
IGN0eC0+ZGV2LT5jbG9ja3MpOwogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2NhbmNlbF9qb2I7CisK
KwkvKgorCSAqIFRoZSBwbV9ydW50aW1lX2dldF9zeW5jKCkgd2lsbCBpbmNyZW1lbnQgZGV2LT5w
b3dlci51c2FnZV9jb3VudCwKKwkgKiBldmVuIG9uIGVycm9ycy4gVGhhdCdzIHRoZSBleHBlY3Rl
ZCBiZWhhdmlvciBoZXJlLCBzaW5jZSB0aGUKKwkgKiBoYW50cm9fam9iX2ZpbmlzaCgpIGZ1bmN0
aW9uIGF0IHRoZSBlcnJvciBoYW5kbGluZyBjb2RlCisJICogd2lsbCBpbnRlcm5hbGx5IGNhbGwg
cG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQoKS4KKwkgKi8KIAlyZXQgPSBwbV9ydW50aW1lX2dl
dF9zeW5jKGN0eC0+ZGV2LT5kZXYpOwogCWlmIChyZXQgPCAwKQogCQlnb3RvIGVycl9jYW5jZWxf
am9iOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
