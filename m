Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A41F7226B5
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 13:03:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8A22861AB;
	Sun, 19 May 2019 11:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3GqaItAITRs; Sun, 19 May 2019 11:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5485F86180;
	Sun, 19 May 2019 11:02:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A94C41BF2EB
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A52DE22636
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1G-lIGcaiDmg for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 11:02:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2CE8222122
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 11:02:55 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28C9E2177B;
 Sun, 19 May 2019 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558263775;
 bh=mBpAhk//8WvsbTtXPi/GRsgbj/yowPAq5t4mJK5gccY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pYZptuxyzCXeqdm4KC3jNE70+82Jk/nhhiTgXH5L3lozFHn2Bt2SRB5qrN7GITWoX
 53y8XAbO4rR2LQGiNSswervuiIzCkuzDTVpR6En2/W6ZddHlODiPc3/sGaLzFj04i5
 JvRvo6cyOt1Us/mBYWwqQN4zNOJNQHySnd00HXvw=
Date: Sun, 19 May 2019 12:02:50 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?Sm/Do28=?= Seckler <joaoseckler@gmail.com>
Subject: Re: [PATCH] staging: iio: ad7746: add device tree support
Message-ID: <20190519120250.4644c255@archlinux>
In-Reply-To: <20190518222733.2ttcgvy7fct4awra@smtp.gmail.com>
References: <20190518222733.2ttcgvy7fct4awra@smtp.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAxOCBNYXkgMjAxOSAxOToyNzozMyAtMDMwMApKb8OjbyBTZWNrbGVyIDxqb2Fvc2Vj
a2xlckBnbWFpbC5jb20+IHdyb3RlOgoKPiBBZGQgYSBvZl9kZXZpY2VfaWQgc3RydWN0IHZhcmlh
YmxlIGFuZCBzdWJzZXF1ZW50IGNhbGwgdG8KPiBNT0RVTEVfREVWSUNFX1RBQkxFIG1hY3JvIHRv
IHN1cHBvcnQgZGV2aWNlIHRyZWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm/Do28gU2Vja2xlciA8
am9hb3NlY2tsZXJAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIE9zaGlybyA8bHVj
YXNzZWlraW9zaGlyb0BnbWFpbC5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBMdWNhcyBPc2hpcm8g
PGx1Y2Fzc2Vpa2lvc2hpcm9AZ21haWwuY29tPgpBcHBsaWVkIHRvIHRoZSB0b2dyZWcgYnJhbmNo
IG9mIGlpby5naXQgYW5kIHB1c2hlZCBvdXQgYXMgdGVzdGluZwpmb3IgdGhlIGF1dG9idWlsZGVy
cyB0byBwbGF5IHdpdGggaXQuCgpGb3IgYSBmdXR1cmUgaW1wcm92ZW1lbnQsIHRyeSB0byBleHBs
YWluIHRoZSAnd2h5JyByYXRoZXIgdGhhbgond2hhdCcgb2YgYSBwYXRjaCBpbiB0aGUgZGVzY3Jp
cHRpb24uICAgVGhpcyBwYXJ0aWN1bGFyIGNoYW5nZQppcyBzbyBjb21tb24gSSBkb24ndCBtaW5k
IHRoYXQgbXVjaCwgYnV0IGl0IGlzIGEgZ29vZCBoYWJpdCB0bwpnZXQgaW50byEKClRoYW5rcywK
CkpvbmF0aGFuCj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzc0Ni5jIHwgMTAg
KysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2NkYy9hZDc3NDYuYyBiL2RyaXZlcnMvc3RhZ2lu
Zy9paW8vY2RjL2FkNzc0Ni5jCj4gaW5kZXggNDc2MTBkODYzOTA4Li4yMTUyN2Q4NGY5NDAgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2lpby9jZGMvYWQ3NzQ2LmMKPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvaWlvL2NkYy9hZDc3NDYuYwo+IEBAIC03NDgsOSArNzQ4LDE5IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCBhZDc3NDZfaWRbXSA9IHsKPiAgCj4gIE1PRFVM
RV9ERVZJQ0VfVEFCTEUoaTJjLCBhZDc3NDZfaWQpOwo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgYWQ3NzQ2X29mX21hdGNoW10gPSB7Cj4gKwl7IC5jb21wYXRpYmxlID0g
ImFkaSxhZDc3NDUiIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDc3NDYiIH0sCj4gKwl7
IC5jb21wYXRpYmxlID0gImFkaSxhZDc3NDciIH0sCj4gKwl7IH0sCj4gK307Cj4gKwo+ICtNT0RV
TEVfREVWSUNFX1RBQkxFKG9mLCBhZDc3NDZfb2ZfbWF0Y2gpOwo+ICsKPiAgc3RhdGljIHN0cnVj
dCBpMmNfZHJpdmVyIGFkNzc0Nl9kcml2ZXIgPSB7Cj4gIAkuZHJpdmVyID0gewo+ICAJCS5uYW1l
ID0gS0JVSUxEX01PRE5BTUUsCj4gKwkJLm9mX21hdGNoX3RhYmxlID0gYWQ3NzQ2X29mX21hdGNo
LAo+ICAJfSwKPiAgCS5wcm9iZSA9IGFkNzc0Nl9wcm9iZSwKPiAgCS5pZF90YWJsZSA9IGFkNzc0
Nl9pZCwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
