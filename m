Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B5D1F476
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 14:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E710B2A293;
	Wed, 15 May 2019 12:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7efw2Jd+8REV; Wed, 15 May 2019 12:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 99BAC27FA1;
	Wed, 15 May 2019 12:33:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CB321BF3B0
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 12:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 56B84226EA
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 12:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HkL0hQ28Fupl for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 12:33:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 4AD0023109
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 12:33:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BC9720843;
 Wed, 15 May 2019 12:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557923602;
 bh=VWrSIMxtMzJf0EqTLwNfDFyQZNKkVmMfiMtoWaE8mYs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c4aXCzp/93XjO1tys4+y8zAvyuzJOmcEbZWeFE4KBExtUqA11G1qL6IlcWOypkl/z
 DEXZ+zIs5y+hdARNrlDdz8MGkIXXYMv1PFPTWVSvPoUoslnuISmp72fSPALWRqqQwG
 deY22jA6+FnhSAQHcEa6NX/Y43bvdmKp5xsLJNwo=
Date: Wed, 15 May 2019 14:33:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
Message-ID: <20190515123319.GA435@kroah.com>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
 <20190515114022.GA18824@kroah.com>
 <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDc6NTQ6NThQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBhdCAxOTo0MCwgR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdy
b3RlOgo+IAo+ID4gT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDc6MjQ6MDFQTSArMDgwMCwgS2Fp
LUhlbmcgRmVuZyB3cm90ZToKPiA+ID4gVGhlIHJ0bDg4MjFjZSBjYW4gYmUgZm91bmQgb24gbWFu
eSBIUCBhbmQgTGVub3ZvIGxhcHRvcHMuCj4gPiA+IFVzZXJzIGhhdmUgYmVlbiB1c2luZyBvdXQt
b2YtdHJlZSBtb2R1bGUgZm9yIGEgd2hpbGUsCj4gPiA+IAo+ID4gPiBUaGUgbmV3IFJlYWx0ZWsg
V2lGaSBkcml2ZXIsIHJ0dzg4LCB3aWxsIHN1cHBvcnQgcnRsODgyMWNlIGluIDIwMjAgb3IKPiA+
ID4gbGF0ZXIuCj4gPiAKPiA+IFdoZXJlIGlzIHRoYXQgZHJpdmVyLCBhbmQgd2h5IGlzIGl0IGdv
aW5nIHRvIHRha2Ugc28gbG9uZyB0byBnZXQgbWVyZ2VkPwo+IAo+IHJ0dzg4IGlzIGluIDUuMiBu
b3csIGJ1dCBpdCBkb2VzbuKAmXQgc3VwcG9ydCA4ODIxY2UgeWV0Lgo+IAo+IFRoZXkgcGxhbiB0
byBhZGQgdGhlIHN1cHBvcnQgaW4gMjAyMC4KCldobyBpcyAidGhleSIgYW5kIHdoYXQgaXMgbmVl
ZGVkIHRvIHN1cHBvcnQgdGhpcyBkZXZpY2UgYW5kIHdoeSB3YWl0IGEKZnVsbCB5ZWFyPwoKPiA+
ID4gMjk2IGZpbGVzIGNoYW5nZWQsIDIwNjE2NiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IFVnaCwg
d2h5IGRvIHdlIGtlZXAgaGF2aW5nIHRvIGFkZCB0aGUgd2hvbGUgbWVzcyBmb3IgZXZlcnkgc2lu
Z2xlIG9uZSBvZgo+ID4gdGhlc2UgZGV2aWNlcz8KPiAKPiBCZWNhdXNlIFJlYWx0ZWsgZGV2aWNl
cyBhcmUgdW5mb3J0dW5hdGVseSB1YmlxdWl0b3VzIHNvIHRoZSBzdXBwb3J0IGlzCj4gYmV0dGVy
IGNvbWUgZnJvbSBrZXJuZWwuCgpUaGF0J3Mgbm90IHRoZSBpc3N1ZSBoZXJlLiAgVGhlIGlzc3Vl
IGlzIHRoYXQgd2Uga2VlcCBhZGRpbmcgdGhlIHNhbWUKaHVnZSBkcml2ZXIgZmlsZXMgdG8gdGhl
IGtlcm5lbCB0cmVlLCBvdmVyIGFuZCBvdmVyLCB3aXRoIG5vIHJlYWwgY2hhbmdlCmF0IGFsbC4g
IFdlIGhhdmUgc2VlbiBhbG1vc3QgYWxsIG9mIHRoZXNlIGZpbGVzIGluIG90aGVyIHJlYWx0ZWsK
ZHJpdmVycywgcmlnaHQ/ICBXaHkgbm90IHVzZSB0aGUgb25lcyB3ZSBhbHJlYWR5IGhhdmU/CgpC
dXQgYmV0dGVyIHlldCwgd2h5IG5vdCBhZGQgcHJvcGVyIHN1cHBvcnQgZm9yIHRoaXMgaGFyZHdh
cmUgYW5kIG5vdCB1c2UKYSBzdGFnaW5nIGRyaXZlcj8KCnRoYW5rcywKCmdyZWcgay1oCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
