Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236FB7C803
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 18:00:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70F2587D8E;
	Wed, 31 Jul 2019 16:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ePCf7MTVSMJ; Wed, 31 Jul 2019 16:00:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E099B87D6A;
	Wed, 31 Jul 2019 16:00:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 864291BF844
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:00:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7B6101FE2F
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:00:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OBklLq6N01Ra for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 16:00:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 71C2D20360
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 16:00:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF56A206A2;
 Wed, 31 Jul 2019 16:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564588846;
 bh=8/iUzsnff7v3bdrLEupAqK60VWMHVs1+tovD+8fMDdg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oSq7AczokLq9O5HmGNMMXoBQHyFsn+uD6YtJzSsackbSJOjH4gxnRgXabQ5IUo40f
 VDSVk4VIirr7JC0jMtPN8qU6VGYI09s81wOUOQnbFA3yoNTTiKFP1DcV3OENUMrD/K
 TC6xyj22CzGCwJMpv8SwLM/4oeYAaT8kraa4+Cug=
Date: Wed, 31 Jul 2019 18:00:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: David Miller <davem@davemloft.net>
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13 errors, 
 1174 warnings (next-20190731)
Message-ID: <20190731160043.GA15520@kroah.com>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
 <20190731112441.GB4369@sirena.org.uk>
 <20190731113522.GA3426@kroah.com>
 <20190731.084824.2244928058443049.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731.084824.2244928058443049.davem@davemloft.net>
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, netdev@vger.kernel.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMDg6NDg6MjRBTSAtMDcwMCwgRGF2aWQgTWlsbGVyIHdy
b3RlOgo+IEZyb206IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5v
cmc+Cj4gRGF0ZTogV2VkLCAzMSBKdWwgMjAxOSAxMzozNToyMiArMDIwMAo+IAo+ID4gT24gV2Vk
LCBKdWwgMzEsIDIwMTkgYXQgMTI6MjQ6NDFQTSArMDEwMCwgTWFyayBCcm93biB3cm90ZToKPiA+
PiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAwNDowNzo0MUFNIC0wNzAwLCBrZXJuZWxjaS5vcmcg
Ym90IHdyb3RlOgo+ID4+IAo+ID4+IFRvZGF5J3MgLW5leHQgZmFpbHMgdG8gYnVpbGQgYW4gQVJN
IGFsbG1vZGNvbmZpZyBkdWUgdG86Cj4gPj4gCj4gPj4gPiBhbGxtb2Rjb25maWcgKGFybSwgZ2Nj
LTgpIOKAlSBGQUlMLCAxIGVycm9yLCA0MCB3YXJuaW5ncywgMCBzZWN0aW9uIG1pc21hdGNoZXMK
PiA+PiA+IAo+ID4+ID4gRXJyb3JzOgo+ID4+ID4gICAgIGRyaXZlcnMvbmV0L3BoeS9tZGlvLWNh
dml1bS5oOjExMTozNjogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICd3
cml0ZXEnOyBkaWQgeW91IG1lYW4gJ3dyaXRlbCc/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9u
LWRlY2xhcmF0aW9uXQo+ID4+IAo+ID4+IGFzIGEgcmVzdWx0IG9mIHRoZSBjaGFuZ2VzIHRoYXQg
aW50cm9kdWNlZDoKPiA+PiAKPiA+PiBXQVJOSU5HOiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVz
IGRldGVjdGVkIGZvciBNRElPX09DVEVPTgo+ID4+ICAgRGVwZW5kcyBvbiBbbl06IE5FVERFVklD
RVMgWz15XSAmJiBNRElPX0RFVklDRSBbPW1dICYmIE1ESU9fQlVTIFs9bV0gJiYgNjRCSVQgJiYg
SEFTX0lPTUVNIFs9eV0gJiYgT0ZfTURJTyBbPW1dCj4gPj4gICBTZWxlY3RlZCBieSBbbV06Cj4g
Pj4gICAtIE9DVEVPTl9FVEhFUk5FVCBbPW1dICYmIFNUQUdJTkcgWz15XSAmJiAoQ0FWSVVNX09D
VEVPTl9TT0MgJiYgTkVUREVWSUNFUyBbPXldIHx8IENPTVBJTEVfVEVTVCBbPXldKQo+ID4+IAo+
ID4+IHdoaWNoIGlzIHRyaWdnZXJlZCBieSB0aGUgc3RhZ2luZyBPQ1RFT05fRVRIRVJORVQgZHJp
dmVyIHdoaWNoIG1pc3NlcyBhCj4gPj4gNjRCSVQgZGVwZW5kZW5jeSBidXQgYWRkZWQgQ09NUElM
RV9URVNUIGluIDE3MWE5YmFlNjhjNzJmMgo+ID4+IChzdGFnaW5nL29jdGVvbjogQWxsb3cgdGVz
dCBidWlsZCBvbiAhTUlQUykuCj4gPiAKPiA+IEEgcGF0Y2ggd2FzIHBvc3RlZCBmb3IgdGhpcywg
YnV0IGl0IG5lZWRzIHRvIGdvIHRocm91Z2ggdGhlIG5ldGRldiB0cmVlCj4gPiBhcyB0aGF0J3Mg
d2hlcmUgdGhlIG9mZmVuZGluZyBwYXRjaGVzIGFyZSBjb21pbmcgZnJvbS4KPiAKPiBJIGRpZG4n
dCBjYXRjaCB0aGF0LCB3YXMgbmV0ZGV2IENDOidkPwoKTm9wZSwganVzdCB5b3UgOigKCkknbGwg
cmVzZW5kIGl0IG5vdyBhbmQgY2M6IG5ldGRldi4KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
