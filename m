Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B4036A392
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Apr 2021 01:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 464FA401B8;
	Sat, 24 Apr 2021 23:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNP-skNPf2EL; Sat, 24 Apr 2021 23:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B24EC401B5;
	Sat, 24 Apr 2021 23:24:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3DBE1BF3D1
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 23:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AFE1183CCD
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 23:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1LLCTuMe35gJ for <devel@linuxdriverproject.org>;
 Sat, 24 Apr 2021 23:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2497983CCC
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 23:24:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 65D6B1F40EE6
Message-ID: <780afdc9b263928ed378dfbd3eaa8a5509a59a35.camel@collabora.com>
Subject: Re: [PATCH 13/78] staging: media: hantro_drv: use
 pm_runtime_resume_and_get()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Sat, 24 Apr 2021 20:23:53 -0300
In-Reply-To: <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
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

SGkgTWF1cm8sCgpPbiBTYXQsIDIwMjEtMDQtMjQgYXQgMDg6NDQgKzAyMDAsIE1hdXJvIENhcnZh
bGhvIENoZWhhYiB3cm90ZToKPiBDb21taXQgZGQ4MDg4ZDVhODk2ICgiUE06IHJ1bnRpbWU6IEFk
ZCBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0IHRvIGRlYWwgd2l0aCB1c2FnZSBjb3VudGVyIikK
PiBhZGRlZCBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCkgaW4gb3JkZXIgdG8gYXV0b21hdGlj
YWxseSBoYW5kbGUKPiBkZXYtPnBvd2VyLnVzYWdlX2NvdW50IGRlY3JlbWVudCBvbiBlcnJvcnMu
Cj4gCj4gVXNlIHRoZSBuZXcgQVBJLCBpbiBvcmRlciB0byBjbGVhbnVwIHRoZSBlcnJvciBjaGVj
ayBsb2dpYy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVo
YWIraHVhd2VpQGtlcm5lbC5vcmc+Cj4gLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2hhbnRyb19kcnYuYyB8IDIgKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJv
X2Rydi5jCj4gaW5kZXggNTk1ZTgyYTgyNzI4Li4zMTQ3ZGNiZWJlYjkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+IEBAIC0xNTUsNyArMTU1LDcgQEAg
c3RhdGljIHZvaWQgZGV2aWNlX3J1bih2b2lkICpwcml2KQo+IMKgwqDCoMKgwqDCoMKgwqByZXQg
PSBjbGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2
LT5jbG9ja3MpOwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiAtwqDCoMKgwqDCoMKgwqByZXQg
PSBwbV9ydW50aW1lX2dldF9zeW5jKGN0eC0+ZGV2LT5kZXYpOwo+ICvCoMKgwqDCoMKgwqDCoHJl
dCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoY3R4LT5kZXYtPmRldik7Cj4gwqDCoMKgwqDC
oMKgwqDCoGlmIChyZXQgPCAwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290
byBlcnJfY2FuY2VsX2pvYjsKPiDCoAoKU2VlbXMgdGhpcyBvbmUgbmVlZHMgYSBkaWZmZXJlbnQg
Zml4OiBlcnJfY2FuY2VsX2pvYgp3aWxsIGNhbGwgaGFudHJvX2pvYl9maW5pc2ggd2hpY2ggaGFz
IGEgcG1fcnVudGltZSBwdXQuCgpUaGFua3MsCkV6ZXF1aWVsIAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
