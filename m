Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02FC133DE
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 21:07:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97BFF87463;
	Fri,  3 May 2019 19:07:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZcspXhPWSP5t; Fri,  3 May 2019 19:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51B1281B63;
	Fri,  3 May 2019 19:07:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D38CA1BF3D1
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 19:07:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D08A08698D
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 19:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lodgJN8onWb2 for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 19:07:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 699F686957
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 19:07:35 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0A3B13233;
 Fri,  3 May 2019 21:07:32 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 064ad94e;
 Fri, 3 May 2019 21:07:30 +0200 (CEST)
Date: Fri, 3 May 2019 21:07:30 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3 08/10] staging: octeon-ethernet: support
 of_get_mac_address new ERR_PTR error
Message-ID: <20190503190730.GH71477@meh.true.cz>
References: <1556870168-26864-1-git-send-email-ynezz@true.cz>
 <1556870168-26864-9-git-send-email-ynezz@true.cz>
 <20190503103456.GF2269@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503103456.GF2269@kadam>
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Frank Rowand <frowand.list@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPiBbMjAxOS0wNS0wMyAxMzoz
NDo1Nl06CgpIaSwKCj4gT24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDk6NTY6MDVBTSArMDIwMCwg
UGV0ciDFoHRldGlhciB3cm90ZToKPiA+IFRoZXJlIHdhcyBOVk1FTSBzdXBwb3J0IGFkZGVkIHRv
IG9mX2dldF9tYWNfYWRkcmVzcywgc28gaXQgY291bGQgbm93Cj4gPiByZXR1cm4gTlVMTCBhbmQg
RVJSX1BUUiBlbmNvZGVkIGVycm9yIHZhbHVlcywgc28gd2UgbmVlZCB0byBhZGp1c3QgYWxsCj4g
PiBjdXJyZW50IHVzZXJzIG9mIG9mX2dldF9tYWNfYWRkcmVzcyB0byB0aGlzIG5ldyBmYWN0Lgo+
IAo+IFdoaWNoIGNvbW1pdCBhZGRlZCBOVk1FTSBzdXBwb3J0PyAgSXQgaGFzbid0IGhpdCBuZXQt
bmV4dCBvciBsaW51eC1uZXh0Cj4geWV0Li4uICBWZXJ5IHN0cmFuZ2UuCgp0aGlzIHBhdGNoIGlz
IGEgcGFydCBvZiB0aGUgcGF0Y2ggc2VyaWVzWzFdLCB3aGVyZSB0aGUgMXN0IHBhdGNoWzJdIGFk
ZHMgdGhpcwpOVk1FTSBzdXBwb3J0IHRvIG9mX2dldF9tYWNfYWRkcmVzcyBhbmQgZm9sbG93LXVw
IHBhdGNoZXMgYXJlIGFkanVzdGluZwpjdXJyZW50IG9mX2dldF9tYWNfYWRkcmVzcyB1c2VycyB0
byB0aGUgbmV3IEVSUl9QVFIgcmV0dXJuIHZhbHVlLgoKPiBXaHkgd291bGQgb2ZfZ2V0X21hY19h
ZGRyZXNzKCkgcmV0dXJuIGEgbWl4IG9mIE5VTEwgYW5kIGVycm9yIHBvaW50ZXJzPwoKSSd2ZSBp
bnRyb2R1Y2VkIHRoaXMgbWlzbGVhZGluZyBBUEkgaW4gdjMsIGJ1dCBjb3JyZWN0ZWQgaXQgaW4g
djQsIHNvIGl0IG5vdwpyZXR1cm5zIG9ubHkgdmFsaWQgcG9pbnRlciBvciBFUlJfUFRSIGVuY29k
ZWQgZXJyb3IgdmFsdWUuCgpKdXN0IEZZSSwgY2hhbmdlcyBmb3Igc3RhZ2luZy9vY3Rlb24gYXJl
IGN1cnJlbnRseSBhdCB2NVszXS4KCjEuIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJv
amVjdC9uZXRkZXYvbGlzdC8/c2VyaWVzPTEwNTk3MgoyLiBodHRwczovL3BhdGNod29yay5vemxh
YnMub3JnL3BhdGNoLzEwOTQ5MTYvCjMuIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0
Y2gvMTA5NDk0Mi8KCi0tIHluZXp6Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
