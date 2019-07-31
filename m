Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F11DB7C019
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 13:35:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 11A6122001;
	Wed, 31 Jul 2019 11:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n9p5nMJ1kh+X; Wed, 31 Jul 2019 11:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AE5C121FA9;
	Wed, 31 Jul 2019 11:35:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A85DC1BF378
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 11:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A50BD85BEE
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 11:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsZ5v0SZW79u for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 11:35:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 38ACC844DA
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:35:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94AC6206A2;
 Wed, 31 Jul 2019 11:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564572925;
 bh=lux5DZPmxvBAoBQ0d6YhXntq6x2LZoKUchiyEmnGTQU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uSDRohHUPNOb+f9HhmfWB7Bwg39eYk3Ch35FM+/DZX7rsQrZdVBAbpyT/V0mHW13o
 g5/k/OZykPTdPtj7gpE3FSjHOF+HBureoFs2AfJX5Ve0Z670jDfLMx/3UXeJb53WkY
 3tIzRdwkZF1PkkJOb5wldYBGN5oosfezOYi0A6HY=
Date: Wed, 31 Jul 2019 13:35:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13 errors, 
 1174 warnings (next-20190731)
Message-ID: <20190731113522.GA3426@kroah.com>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
 <20190731112441.GB4369@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731112441.GB4369@sirena.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, kernel-build-reports@lists.linaro.org,
 netdev@vger.kernel.org, "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTI6MjQ6NDFQTSArMDEwMCwgTWFyayBCcm93biB3cm90
ZToKPiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAwNDowNzo0MUFNIC0wNzAwLCBrZXJuZWxjaS5v
cmcgYm90IHdyb3RlOgo+IAo+IFRvZGF5J3MgLW5leHQgZmFpbHMgdG8gYnVpbGQgYW4gQVJNIGFs
bG1vZGNvbmZpZyBkdWUgdG86Cj4gCj4gPiBhbGxtb2Rjb25maWcgKGFybSwgZ2NjLTgpIOKAlCBG
QUlMLCAxIGVycm9yLCA0MCB3YXJuaW5ncywgMCBzZWN0aW9uIG1pc21hdGNoZXMKPiA+IAo+ID4g
RXJyb3JzOgo+ID4gICAgIGRyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5oOjExMTozNjogZXJy
b3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICd3cml0ZXEnOyBkaWQgeW91IG1l
YW4gJ3dyaXRlbCc/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+IAo+
IGFzIGEgcmVzdWx0IG9mIHRoZSBjaGFuZ2VzIHRoYXQgaW50cm9kdWNlZDoKPiAKPiBXQVJOSU5H
OiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNRElPX09DVEVPTgo+ICAg
RGVwZW5kcyBvbiBbbl06IE5FVERFVklDRVMgWz15XSAmJiBNRElPX0RFVklDRSBbPW1dICYmIE1E
SU9fQlVTIFs9bV0gJiYgNjRCSVQgJiYgSEFTX0lPTUVNIFs9eV0gJiYgT0ZfTURJTyBbPW1dCj4g
ICBTZWxlY3RlZCBieSBbbV06Cj4gICAtIE9DVEVPTl9FVEhFUk5FVCBbPW1dICYmIFNUQUdJTkcg
Wz15XSAmJiAoQ0FWSVVNX09DVEVPTl9TT0MgJiYgTkVUREVWSUNFUyBbPXldIHx8IENPTVBJTEVf
VEVTVCBbPXldKQo+IAo+IHdoaWNoIGlzIHRyaWdnZXJlZCBieSB0aGUgc3RhZ2luZyBPQ1RFT05f
RVRIRVJORVQgZHJpdmVyIHdoaWNoIG1pc3NlcyBhCj4gNjRCSVQgZGVwZW5kZW5jeSBidXQgYWRk
ZWQgQ09NUElMRV9URVNUIGluIDE3MWE5YmFlNjhjNzJmMgo+IChzdGFnaW5nL29jdGVvbjogQWxs
b3cgdGVzdCBidWlsZCBvbiAhTUlQUykuCgpBIHBhdGNoIHdhcyBwb3N0ZWQgZm9yIHRoaXMsIGJ1
dCBpdCBuZWVkcyB0byBnbyB0aHJvdWdoIHRoZSBuZXRkZXYgdHJlZQphcyB0aGF0J3Mgd2hlcmUg
dGhlIG9mZmVuZGluZyBwYXRjaGVzIGFyZSBjb21pbmcgZnJvbS4KCnRoYW5rcywKCmdyZWcgay1o
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
