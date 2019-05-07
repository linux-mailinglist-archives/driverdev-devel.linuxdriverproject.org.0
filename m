Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1478E15E62
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 09:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F61427205;
	Tue,  7 May 2019 07:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lu9xjCpl5n+X; Tue,  7 May 2019 07:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 66AB0220B6;
	Tue,  7 May 2019 07:41:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2F6E1BF34D
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BFDC3857B0
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X-VeuRctvtfr for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 07:41:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C6CA855CB
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 07:41:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9115620989;
 Tue,  7 May 2019 07:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557214889;
 bh=bn9LxTz5PdUe1/eUSoWy21rExjTBSKgzZqLiQHJSJt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G9IZEx4Ac6qG5IHydgnkSVdU2W3m3DzHUL1a8UNorDAR3bT8YrmdfqPbnGovYAZqT
 gJPg1s4gm5MefjSAlyiTpxSL25/qZyI2uPZLngg5B69pvF4BDdV4Ro6afM2qi/0H5h
 BBPj0fkQFaLnYMa/n4Ir+xUQmGDzRY/bniniJQGg=
Date: Tue, 7 May 2019 09:41:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Message-ID: <20190507074126.GA26478@kroah.com>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
 <20190507071914.GJ2269@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507071914.GJ2269@kadam>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMTA6MTk6MTRBTSArMDMwMCwgRGFuIENhcnBlbnRlciB3
cm90ZToKPiBPbiBNb24sIE1heSAwNiwgMjAxOSBhdCAxMToyNDo0M1BNICswMjAwLCBQZXRyIMWg
dGV0aWFyIHdyb3RlOgo+ID4gSGksCj4gPiAKPiA+IHRoaXMgcGF0Y2ggc2VyaWVzIGlzIGFuIGF0
dGVtcHQgdG8gZml4IHRoZSBtZXNzLCBJJ3ZlIHNvbWVob3cgbWFuYWdlZCB0bwo+ID4gaW50cm9k
dWNlLgo+ID4gCj4gPiBGaXJzdCBwYXRjaCBpbiB0aGlzIHNlcmllcyBpcyBkZWZhY3RvIHY1IG9m
IHRoZSBwcmV2aW91cyAwNS8xMCBwYXRjaCBpbiB0aGUKPiA+IHNlcmllcywgYnV0IHNpbmNlIHRo
ZSB2NCBvZiB0aGlzIDA1LzEwIHBhdGNoIHdhc24ndCBwaWNrZWQgdXAgYnkgdGhlCj4gPiBwYXRj
aHdvcmsgZm9yIHNvbWUgdW5rbm93biByZWFzb24sIHRoaXMgcGF0Y2ggd2Fzbid0IGFwcGxpZWQg
d2l0aCB0aGUgb3RoZXIKPiA+IDkgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzLCBzbyBJJ20gcmVzZW5k
aW5nIGl0IGFzIGEgc2VwYXJhdGUgcGF0Y2ggb2YgdGhpcwo+ID4gZml4dXAgc2VyaWVzIGFnYWlu
Lgo+IAo+IEkgZmVlbCBzb3J0IG9mIHJpZGljdWxvdXMgYXNraW5nIHRoaXMgb3ZlciBhbmQgb3Zl
ci4uLiAgTWF5YmUgeW91ciBzcGFtCj4gZmlsdGVyIGlzIGVhdGluZyBteSBlbWFpbHM/Cj4gCj4g
VGhpcyBidWcgd2FzIGludHJvZHVjZWQgaW4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9w
YXRjaC8xMDk0OTE2Lwo+ICJbdjQsMDEvMTBdIG9mX25ldDogYWRkIE5WTUVNIHN1cHBvcnQgdG8g
b2ZfZ2V0X21hY19hZGRyZXNzIiBidXQgaXQKPiBsb29rcyBsaWtlIG5vIG9uZSBhcHBsaWVkIGl0
Lgo+IAo+IFlvdSdyZSBhY3RpbmcgYXMgaWYgaXQgKndhcyogYXBwbGllZCBidXQgeW91IHJlZnVz
ZSB0byBhbnN3ZXIgbXkKPiBxdWVzdGlvbiB3aG8gYXBwbGllZCBpdCBhbmQgd2hpY2ggdG8gd2hp
Y2ggdHJlZSBzbyBJIGNhbiBmaWd1cmUgb3V0IHdoYXQKPiB3ZW50IHdyb25nLgo+IAo+IEkgb25s
eSBzZWUgY29tbWVudHMgZnJvbSBsYXN0IEZyaWRheSB0aGF0IGl0IHNob3VsZG4ndCBiZSBhcHBs
aWVkLi4uICBJCj4gYWxzbyB0b2xkIHlvdSBvbiBGcmlkYXkgaW4gYSBkaWZmZXJlbnQgdGhyZWFk
IHRoYXQgdGhhdCBwYXRjaCBzaG91bGRuJ3QKPiBiZSBhcHBsaWVkLiAgQnJlYWtpbmcgZ2l0IGJp
c2VjdCBpcyBhIGJ1ZywgYW5kIHdlIG5ldmVyIGRvIHRoYXQuICBJJ20KPiBqdXN0IHZlcnkgY29u
ZnVzZWQgcmlnaHQgbm93Li4uICBXaGF0IEknbSB0cnlpbmcgdG8gZG8gaXMgZmlndXJlIG91dCBp
bgo+IG15IGhlYWQgaG93IHRoaXMgcHJvY2VzcyBmYWlsZWQgc28gd2UgY2FuIGRvIGJldHRlciBu
ZXh0IHRpbWUuCgpKdXN0IHRvIHJlc2VuZCB0aGlzLCBzbyB0aGF0IGl0IGhvcGVmdWxseSBkb2Vz
IF9ub3RfIGdldCBzdHVjayBpbiBhIHNwYW0KZmlsdGVyLgoKUGV0ciwgcGxlYXNlIGFkZHJlc3Mg
RGFuJ3MgY29tbWVudHMsIGRvIG5vdCBpZ25vcmUgdGhlbS4KCmdyZWcgay1oCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
