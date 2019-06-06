Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E39A3819F
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 01:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D87D8823B;
	Thu,  6 Jun 2019 23:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OrA7-zuKlg1T; Thu,  6 Jun 2019 23:10:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E76E288173;
	Thu,  6 Jun 2019 23:10:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7870C1BF232
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 23:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 754B188191
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 23:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pf9yZcJ2jWMc for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 23:10:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 881F388173
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 23:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WrR8a0nd7OqHeGMYq59lvGgYOhTcXv05lY92PTWM2CQ=; b=oGpZKv7v1449BYsCbjNBM23I59
 AeS10K3WrsuNY4wsvrv1v35sohJrGMRvaGQEKNq3MdRM8lvHiWBOBBBoPxXt+FXCQN5Fnem47OjSY
 Qzwa3F1vokFNDVeBNOtxbdTgUvwUk7VOD/k/FinOC44l2cTTG0crQ1sWOAIpg3/Jiq9Y4yiW0I9Aw
 WGO/zPFTdSE6bCX6qM5sF9XMPGXawRE5EctHBBcCVoct1Leh53VSTvD20ebDJhUzjIzEeDd4v3a1q
 zUAlixJtXCC1UQp7bOmgCiTpB1DT/LPw8z15jOb8ERhJ/KtT9nqL0MQW22vuzZ1QlwiEUEPuabx4m
 BH/G2evQ==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=dragon.dunlab)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ1Wn-0007f1-Gj; Thu, 06 Jun 2019 23:10:37 +0000
Subject: Re: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
To: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <92ca6e6e-2ebd-cec4-4f75-2674fd2c3d99@infradead.org>
Date: Thu, 6 Jun 2019 16:10:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
Content-Language: en-US
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gNi82LzE5IDg6MzggQU0sIFPDqWJhc3RpZW4gU3p5bWFuc2tpIHdyb3RlOgo+IGkuTVg3IGFu
ZCBpLk1YNlVML0wgaGF2ZSB0aGUgc2FtZSBDU0kgY29udHJvbGxlci4gU28gYWRkIGkuTVg2VUwv
TCBzdXBwb3J0Cj4gdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4K
PiAtLS0KPiAKPiBDaGFuZ2VzIGZvciB2MjoKPiAgLSByZWJhc2Ugb24gdG9wIG9mIGxpbnV4dHYv
bWFzdGVyCj4gIC0gbWVudGlvbiBpLk1YNlVML0wgaW4gaGVhZGVyIGFuZCBLY29uZmlnIGhlbHAg
dGV4dAo+ICAtIHJlbmFtZSBjc2lfdHlwZSB0byBjc2lfc29jX2lkCj4gCj4gIGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9pbXgvS2NvbmZpZyAgICAgICAgICB8ICA0ICstCj4gIGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYyB8IDYyICsrKysrKysrKysrKysrKystLS0tLS0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4gaW5kZXggYWQzZDdkZjZiYjNjLi44YjZkYzQy
YzM5ZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4g
KysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4gQEAgLTIyLDExICsyMiwx
MSBAQCBjb25maWcgVklERU9fSU1YX0NTSQo+ICAJICBBIHZpZGVvNGxpbnV4IGNhbWVyYSBzZW5z
b3IgaW50ZXJmYWNlIGRyaXZlciBmb3IgaS5NWDUvNi4KPiAgCj4gIGNvbmZpZyBWSURFT19JTVg3
X0NTSQo+IC0JdHJpc3RhdGUgImkuTVg3IENhbWVyYSBTZW5zb3IgSW50ZXJmYWNlIGRyaXZlciIK
PiArCXRyaXN0YXRlICJpLk1YNlVML0wgLyBpLk1YNyBDYW1lcmEgU2Vuc29yIEludGVyZmFjZSBk
cml2ZXIiCj4gIAlkZXBlbmRzIG9uIFZJREVPX0lNWF9NRURJQSAmJiBWSURFT19ERVYgJiYgSTJD
Cj4gIAlkZWZhdWx0IHkKCkhpLApJIHJlYWxpemUgdGhhdCB0aGlzICJkZWZhdWx0IHkiIGlzIG5v
dCBwYXJ0IG9mIHRoaXMgcGF0Y2ggc2V0LCBidXQgd2UgaGF2ZQpwcmV0dHkgc3Ryb25nIGd1aWRh
bmNlIHRoYXQgYSBkcml2ZXIgc2hvdWxkIG5vdCBkZWZhdWx0IHRvICd5JyB1bmxlc3MgaXQgaXMK
bmVlZGVkIGZvciBhIHN5c3RlbSB0byBib290LiAgSWYgdGhpcyBkcml2ZXIgaXMgb3B0aW9uYWws
IHRoZW4gcGxlYXNlIGRyb3AKdGhlIDIgb2NjdXJyZW5jZXMgb2YgImRlZmF1bHQgeSIgaW4gdGhp
cyBLY29uZmlnIGZpbGUuCgp0aGFua3MuCj4gIAloZWxwCj4gIAkgIEVuYWJsZSBzdXBwb3J0IGZv
ciB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVyZmFjZSBkcml2ZXIgZm9yCj4gLQkgIGku
TVg3Lgo+ICsJICBpLk1YNlVML0wgb3IgaS5NWDcuCj4gIGVuZG1lbnUKPiAgZW5kaWYKCgotLSAK
flJhbmR5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
