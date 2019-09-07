Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B24EAC70A
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 16:48:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E22485FA5;
	Sat,  7 Sep 2019 14:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id szqN3FRdDCye; Sat,  7 Sep 2019 14:48:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 19E0985F93;
	Sat,  7 Sep 2019 14:48:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C3351BF385
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 14:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 968C02036C
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 14:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8nUibY7gVlE for <devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 14:48:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
 [217.26.49.174])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E34620111
 for <devel@driverdev.osuosl.org>; Sat,  7 Sep 2019 14:48:25 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout014.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i6c0k-0001B0-95; Sat, 07 Sep 2019 16:48:22 +0200
Received: from 145-126.cable.senselan.ch ([83.222.145.126] helo=[192.168.1.99])
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i6c0k-000Oar-4s; Sat, 07 Sep 2019 16:48:22 +0200
X-Authenticated-Sender-Id: sandro@volery.com
From: Sandro Volery <sandro@volery.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] Fixed parentheses malpractice in apex_driver.c
Date: Sat, 7 Sep 2019 16:48:21 +0200
Message-Id: <C3F8799B-2CFE-4F3B-A01A-DFDF248BA01F@volery.com>
References: <20190907143849.GA30834@kadam>
In-Reply-To: <20190907143849.GA30834@kadam>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Mailer: iPhone Mail (17A5572a)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, rspringer@google.com, toddpoynor@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cgo+IE9uIDcgU2VwIDIwMTksIGF0IDE2OjM5LCBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVy
QG9yYWNsZS5jb20+IHdyb3RlOgo+IAo+IO+7v1lvdSBuZWVkIGEgc3ViamVjdCBwcmVmaXguICBJ
dCBzaG91bGQgYmUgc29tZXRoaW5nIGxpa2U6Cj4gCj4gW1BBVENIXSBTdGFnaW5nOiBnYXNrZXQ6
IEZpeCBwYXJlbnRoZXNlcyBtYWxwcmFjdGljZSBpbiBhcGV4X2RyaXZlci5jCj4gCgpUaGFua3Mg
Zm9yIHRoZSByZXBseSEgSSdsbCB0cnkgdG8gZG8gdGhhdCBiZXR0ZXIgZm9yIG15IG5leHQgcGF0
Y2guCgo+IEdlbmVyYWxseSAiRml4IiBpcyBjb25zaWRlcmVkIGJldHRlciBzdHlsZSB0aGFuICJG
aXhlZCIuICBXZSBhcmVuJ3QKPiBnb2luZyB0byBjYXJlIGFib3V0IHRoYXQgaW4gc3RhZ2luZywg
YnV0IHRoZSBwYXRjaCBwcmVmaXggaXMgbWFuZGF0b3J5Cj4gc28geW91IHdpbGwgbmVlZCB0byBy
ZWRvIGl0IGFueXdheSBhbmQgbWlnaHQgYXMgd2VsbCBmaXggdGhhdCBhcyB3ZWxsLgo+IAo+PiBP
biBGcmksIFNlcCAwNiwgMjAxOSBhdCAwODozODowMVBNICswMjAwLCB2b2xlcnkgd3JvdGU6Cj4+
IFRoZXJlIHdlcmUgc29tZSBwYXJlbnRoZXNlcyBhdCB0aGUgZW5kIG9mIGxpbmVzLCB3aGljaCBJ
IHRvb2sgY2FyZSBvZi4KPj4gVGhpcyBpcyBteSBmaXJzdCBwYXRjaC4KPiAgXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXgo+IFB1dCB0aGlzIHNvcnQgb2YgY29tbWVudHMgYWZ0ZXIgdGhlIC0tLSBjdXQg
b2ZmIGxpbmUKPiAKPj4gCj4+IFNpZ25lZC1vZmYtYnk6IFNhbmRybyBWb2xlcnkgPHNhbmRyb0B2
b2xlcnkuY29tPgo+PiAtLS0KPiAgXl5eCj4gUHV0IGl0IGhlcmUuICBJdCB3aWxsIGJlIHJlbW92
ZWQgd2hlbiB3ZSBhcHBseSB0aGUgcGF0Y2ggc28gaXQgd29uJ3QKPiBiZSByZWNvcmRlZCBpbiB0
aGUgZ2l0IGxvZy4KPiAKCkFscmlnaHQgOikKCj4+IGRyaXZlcnMvc3RhZ2luZy9nYXNrZXQvYXBl
eF9kcml2ZXIuYyB8IDkgKysrKysrLS0tCj4+IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4gCj4gSm9lJ3MgY29tbWVudHMgYXJlLCBvZiBjb3Vyc2UsIGNv
cnJlY3QgYXMgd2VsbC4KPiAKPiByZWdhcmRzLAo+IGRhbiBjYXJwZW50ZXIKPiAKCkknbGwgdGFr
ZSBhIGxvb2sgYXQgSm9lJ3Mgc3VnZ2VzdGlvbnMgdG9vIHNvbWV0aW1lIHRvbmlnaHQuIEknZCBm
ZWVsIGtpbmRhIGJhZCB0aG8gaWYgSSBqdXN0IGFwcGx5IGhpcyB3b3JrIGFuZCBzZW5kIGl0IGlu
PwoKLSBTYW5kcm8gVm9sZXJ5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
