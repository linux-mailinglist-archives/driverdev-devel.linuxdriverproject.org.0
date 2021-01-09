Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3C62EFF77
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Jan 2021 13:36:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B630868BC;
	Sat,  9 Jan 2021 12:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l5bAvEyORAIm; Sat,  9 Jan 2021 12:36:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 556E9869EC;
	Sat,  9 Jan 2021 12:36:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14F251BF2F5
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 12:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 115878728C
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 12:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lo7VSVo93AON for <devel@linuxdriverproject.org>;
 Sat,  9 Jan 2021 12:36:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DED648724E
 for <devel@driverdev.osuosl.org>; Sat,  9 Jan 2021 12:36:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 44C971F45F1B
Message-ID: <ad42babfca4a34d31875ff4f1250f4869be3a5a1.camel@collabora.com>
Subject: Re: [PATCH v3] staging: media: rkvdec: rkvdec.c: Use semicolon in
 place of comma
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Sri Laasya Nutheti <nutheti.laasya@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Sat, 09 Jan 2021 09:36:01 -0300
In-Reply-To: <20210109121349.wuf7xpkqicjadlnf@nutheti>
References: <20210109121349.wuf7xpkqicjadlnf@nutheti>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAyMDIxLTAxLTA5IGF0IDE3OjQzICswNTMwLCBTcmkgTGFhc3lhIE51dGhldGkgd3Jv
dGU6Cj4gTGluZSAxNDYgaGFkIGEgY29tbWEgaW4gcGxhY2Ugb2YgYSBzZW1pY29sb24uIEZpeCBp
dC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTcmkgTGFhc3lhIE51dGhldGkgPG51dGhldGkubGFhc3lh
QGdtYWlsLmNvbT4KPiAtLS0KPiB2MzogQ29ycmVjdGVkIGVtYWlsIHJlY2lwaWVudHMKPiDCoGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCAyICstCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9ya3ZkZWMvcmt2ZGVjLmMKPiBpbmRleCBhYTRmOGMyODc2MTguLmQzZWI4MWVlOGRjMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+IEBAIC0xNDMsNyArMTQzLDcg
QEAgc3RhdGljIHZvaWQgcmt2ZGVjX3Jlc2V0X2ZtdChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LCBz
dHJ1Y3QgdjRsMl9mb3JtYXQgKmYsCj4gwqDCoMKgwqDCoMKgwqDCoG1lbXNldChmLCAwLCBzaXpl
b2YoKmYpKTsKPiDCoMKgwqDCoMKgwqDCoMKgZi0+Zm10LnBpeF9tcC5waXhlbGZvcm1hdCA9IGZv
dXJjYzsKPiDCoMKgwqDCoMKgwqDCoMKgZi0+Zm10LnBpeF9tcC5maWVsZCA9IFY0TDJfRklFTERf
Tk9ORTsKPiAtwqDCoMKgwqDCoMKgwqBmLT5mbXQucGl4X21wLmNvbG9yc3BhY2UgPSBWNEwyX0NP
TE9SU1BBQ0VfUkVDNzA5LAo+ICvCoMKgwqDCoMKgwqDCoGYtPmZtdC5waXhfbXAuY29sb3JzcGFj
ZSA9IFY0TDJfQ09MT1JTUEFDRV9SRUM3MDk7Cj4gwqDCoMKgwqDCoMKgwqDCoGYtPmZtdC5waXhf
bXAueWNiY3JfZW5jID0gVjRMMl9ZQ0JDUl9FTkNfREVGQVVMVDsKPiDCoMKgwqDCoMKgwqDCoMKg
Zi0+Zm10LnBpeF9tcC5xdWFudGl6YXRpb24gPSBWNEwyX1FVQU5USVpBVElPTl9ERUZBVUxUOwo+
IMKgwqDCoMKgwqDCoMKgwqBmLT5mbXQucGl4X21wLnhmZXJfZnVuYyA9IFY0TDJfWEZFUl9GVU5D
X0RFRkFVTFQ7CgpBIGZpeCB3YXMgc2VudCBhbHJlYWR5IGZvciB0aGlzOgoKaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlwL3BhdGNoLzIwMjAxMjA0MjMz
NzQzLkdBODUzMEBsaW51eG1pbnQtbWlkdG93ZXItcGMvCgpUaGFua3MsCkV6ZXF1aWVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
