Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7329C6803B
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 18:31:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13A89877DB;
	Sun, 14 Jul 2019 16:31:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qqrV1lD1BqSH; Sun, 14 Jul 2019 16:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26F9C87807;
	Sun, 14 Jul 2019 16:31:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E33581BF40B
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 16:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DFE4420467
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 16:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBORPPVj9A5y for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 16:30:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D77D20443
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 16:30:56 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BB7C2089C;
 Sun, 14 Jul 2019 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563121856;
 bh=3B4TvzJE5x1tLkpsdLUDGRNudIhb22g/3330h2LrM6U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pnAf4ftXKOZDLj0MwK503NBE0xySOj4mlmEX4S8nMUlEc4IJoWT85vnYIBFJDwTQZ
 64YZq3/3zv2IHDirEgmXq+SZnDKSN3wdO//6OBj0tm9gKnfYXnlpiJP5CDaiMzh/HD
 OUVT07tcoup6GIIFGHW5ccE+2AWdVaMkMWbBBUpE=
Date: Sun, 14 Jul 2019 17:30:50 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?QsOhcmJhcmE=?= Fernandes <barbara.fernandes@usp.br>
Subject: Re: [PATCH v2] staging: iio: ad7192: create of_device_id array
Message-ID: <20190714173050.2b6306a0@archlinux>
In-Reply-To: <20190628194922.13277-1-barbara.fernandes@usp.br>
References: <20190628194922.13277-1-barbara.fernandes@usp.br>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Wilson Sales <spoonm@spoonm.org>,
 lars@metafoo.de, stefan.popa@analog.com, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com, pmeerw@pmeerw.net,
 knaack.h@gmx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCAyOCBKdW4gMjAxOSAxNjo0OToyMiAtMDMwMApCw6FyYmFyYSBGZXJuYW5kZXMgPGJh
cmJhcmEuZmVybmFuZGVzQHVzcC5icj4gd3JvdGU6Cgo+IENyZWF0ZSBsaXN0IG9mIGNvbXBhdGli
bGUgZGV2aWNlIGlkcyB0byBiZSBtYXRjaGVkIHdpdGggdGhvc2Ugc3RhdGVkIGluCj4gdGhlIGRl
dmljZSB0cmVlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IELDoXJiYXJhIEZlcm5hbmRlcyA8YmFyYmFy
YS5mZXJuYW5kZXNAdXNwLmJyPgo+IFNpZ25lZC1vZmYtYnk6IFdpbHNvbiBTYWxlcyA8c3Bvb25t
QHNwb29ubS5vcmc+Cj4gQ28tZGV2ZWxvcGVkIGJ5OiBXaWxzb24gU2FsZXMgPHNwb29ubUBzcG9v
bm0ub3JnPgo+IC0tLQpQYXRjaCBpcyBmaW5lIGFuZCBhcHBsaWVkIHRvIHRoZSB0b2dyZWcgYnJh
bmNoIG9mIGlpby5naXQuCgpPbmx5IHRoaW5nIHRvIG5vdGUgaXMgdGhhdCByZXZpZXdlcnMgYW5k
IG1haW50YWluZXJzIG9mdGVuIGhhdmUKcG9vciBtZW1vcmllcyAob3IgYXJlIGpldCBsYWdnZWQg
d2hpY2ggaXMgbXkgZXhjdXNlIHRvZGF5ISkKc28gaXQgaGVscHMgdG8gcHV0IGEgY2hhbmdlIGxv
ZyBoZXJlIHVuZGVyIHRoZSAtLS0KClRoYW5rcywKCkpvbmF0aGFuCgo+ICBkcml2ZXJzL3N0YWdp
bmcvaWlvL2FkYy9hZDcxOTIuYyB8IDEyICsrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2Fk
Yy9hZDcxOTIuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRjL2FkNzE5Mi5jCj4gaW5kZXggM2Q3
NGRhOWQzN2U3Li43MDExOGRiOThkOTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2lp
by9hZGMvYWQ3MTkyLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYwo+
IEBAIC04MTAsMTEgKzgxMCwyMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNwaV9kZXZpY2VfaWQg
YWQ3MTkyX2lkW10gPSB7Cj4gIAl7ImFkNzE5NSIsIElEX0FENzE5NX0sCj4gIAl7fQo+ICB9Owo+
ICsKPiAgTU9EVUxFX0RFVklDRV9UQUJMRShzcGksIGFkNzE5Ml9pZCk7Cj4gIAo+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBhZDcxOTJfb2ZfbWF0Y2hbXSA9IHsKPiArCXsgLmNv
bXBhdGlibGUgPSAiYWRpLGFkNzE5MCIgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzE5
MiIgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzE5MyIgfSwKPiArCXsgLmNvbXBhdGli
bGUgPSAiYWRpLGFkNzE5NSIgfSwKPiArCXt9Cj4gK307Cj4gKwo+ICtNT0RVTEVfREVWSUNFX1RB
QkxFKG9mLCBhZDcxOTJfb2ZfbWF0Y2gpOwo+ICsKPiAgc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVy
IGFkNzE5Ml9kcml2ZXIgPSB7Cj4gIAkuZHJpdmVyID0gewo+ICAJCS5uYW1lCT0gImFkNzE5MiIs
Cj4gKwkJLm9mX21hdGNoX3RhYmxlID0gYWQ3MTkyX29mX21hdGNoLAo+ICAJfSwKPiAgCS5wcm9i
ZQkJPSBhZDcxOTJfcHJvYmUsCj4gIAkucmVtb3ZlCQk9IGFkNzE5Ml9yZW1vdmUsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
