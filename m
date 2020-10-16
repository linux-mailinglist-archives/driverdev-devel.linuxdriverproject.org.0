Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE5128FE1F
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 08:17:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95C9888892;
	Fri, 16 Oct 2020 06:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWehVL5PEKTs; Fri, 16 Oct 2020 06:17:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 793218860F;
	Fri, 16 Oct 2020 06:17:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 350B71BF857
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 06:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D03620507
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 06:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yyUyRis0nJkD for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 06:17:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A87220443
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 06:17:42 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6058D206E5;
 Fri, 16 Oct 2020 06:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602829061;
 bh=cYqKBPH2nZeu+1j7jX1+aJ9mfGsIWLosit3bFJAF/+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GlIcc41be5ysg2k1z827SkkiwBG2aOPxAvUyHtFLRVS5KqI5FZlat1qhCJXTK7rzV
 gGsqIbVPON6MCvXgaQt5x5cDOVNU1c1C9knfTbKEnFmCme2JXxA29IzlMa6sdCJUxd
 TTNPijhiNKaD1XTWJdEDYDSCtD6Jbk0JYxGLX/9k=
Date: Fri, 16 Oct 2020 08:18:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kiran Suren <kirank.suren@gmail.com>
Subject: Re: [PATCH] Staging: android: ashmem: changed struct file_operations
 to const file_operations
Message-ID: <20201016061813.GA569795@kroah.com>
References: <20201016051111.1947-1-kirank.suren@gmail.com>
 <CAMHzSAHVtv+BuYgCAdbB26J3EHTdEyH3ZZUfP-g3zftppzJOkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHzSAHVtv+BuYgCAdbB26J3EHTdEyH3ZZUfP-g3zftppzJOkw@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QTogQmVjYXVzZSBpdCBtZXNzZXMgdXAgdGhlIG9yZGVyIGluIHdoaWNoIHBlb3BsZSBub3JtYWxs
eSByZWFkIHRleHQuClE6IFdoeSBpcyB0b3AtcG9zdGluZyBzdWNoIGEgYmFkIHRoaW5nPwpBOiBU
b3AtcG9zdGluZy4KUTogV2hhdCBpcyB0aGUgbW9zdCBhbm5veWluZyB0aGluZyBpbiBlLW1haWw/
CgpBOiBOby4KUTogU2hvdWxkIEkgaW5jbHVkZSBxdW90YXRpb25zIGFmdGVyIG15IHJlcGx5PwoK
aHR0cDovL2RhcmluZ2ZpcmViYWxsLm5ldC8yMDA3LzA3L29uX3RvcAoKT24gRnJpLCBPY3QgMTYs
IDIwMjAgYXQgMDE6Mzg6NDdBTSAtMDQwMCwgS2lyYW4gU3VyZW4gd3JvdGU6Cj4gSGksCj4gCj4g
TXkgYXBvbG9naWVzIGFib3V0IHRoZSBsYXN0IGNvdXBsZSBlbWFpbHMsIEkgdGVzdCBidWlsdCBj
b21wbGV0ZWx5IHRoZQo+IHdyb25nIGZpbGUuIFRoaXMgaXMgbXkgZmlyc3QgYXR0ZW1wdCBhdCBk
b2luZyBwYXRjaCBzbyBJ4oCZbSBzdGlsbCB0cnlpbmcgdG8KPiBnZXQgYSBoYW5nIG9mIGhvdyBh
bGwgdGhpcyB3b3Jrcy4gQWxzbywgSeKAmW0gbm90IHN1cmUgd2hhdCB5b3UgbWVhbiBieSB0aGUK
PiBzaWduZWQgb2ZmIGxpbmU/IEkgYmVsaWV2ZSBJIGRpZCBwdXQgbXkgYWN0dWFsIGZ1bGwgbmFt
ZT8gQWdhaW4sIGFwb2xvZ2llcwo+IGZvciBhbnkgaW5jb252ZW5pZW5jZXMganVzdCB0cnlpbmcg
dG8gZ2V0IGEgaGFuZyBvZiBob3cgdGhlIGVudGlyZSBwcm9jZXNzCj4gd29ya3MuCgpGb3IgdGhl
IHNpZ25lZC1vZmYtYnkgbGluZSwgbG9vayBhdCB5b3VyIGVtYWlsIGJlbG93OgoKPiAKPiBPbiBG
cmksIE9jdCAxNiwgMjAyMCBhdCAxOjEyIEFNIGtpcmFuc3VyZW4gPGtpcmFuay5zdXJlbkBnbWFp
bC5jb20+IHdyb3RlOgo+IAo+ID4gRnJvbToga2lyYW5zdXJlbiA8a2lyYW5rLnN1cmVuQGdtYWls
LmNvbT4KClRoYXQgaGFzIG9uZSBuYW1lIGFuZCB0aGVuOgoKPiA+Cj4gPiBGaXhlZCBhIGNvZGlu
ZyBzdHlsZSBpc3N1ZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBLaXJhbiBTdXJlbmRyYW4gPGtp
cmFuay5zdXJlbkBnbWFpbC5jb20+CgpUaGlzIGhhcyBhbm90aGVyLgoKVGhleSBoYXZlIHRvIG1h
dGNoLCBvdGhlcndpc2UgaXQgZG9lc24ndCBtYWtlIGFueSBzZW5zZSwgcmlnaHQ/Cgp0aGFua3Ms
CgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
