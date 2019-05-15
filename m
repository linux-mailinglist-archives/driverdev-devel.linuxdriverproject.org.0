Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C29F01F8C8
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 18:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4908986278;
	Wed, 15 May 2019 16:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p8slK3pSMo0D; Wed, 15 May 2019 16:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8BBBF8625E;
	Wed, 15 May 2019 16:39:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 994951BF289
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 16:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 961F22309D
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 16:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yE1vJzdD0Bv1 for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 16:39:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DF3102221F
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 16:39:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34D5720873;
 Wed, 15 May 2019 16:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557938387;
 bh=MTEha5fRGojdwXOS8OjWxkdxwE+qp3d58CzLpCynDXw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rReZiZSVA5nqbhubOHlCX1qMleMf6VBef4sHEY6UEYHvvZtETCvPZJTFqsUnofHpz
 Rg8UFnlDbjMBwfWoMmXjH3VhnxaIUWcsu6v7P9dRwR+ryXuGkBC2WJLGUARdMRINHK
 3uRO+g4pwtwWNLDCd/JhDi3bmWqj+alrVEMuygqs=
Date: Wed, 15 May 2019 18:39:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
Message-ID: <20190515163945.GA5719@kroah.com>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
 <20190515114022.GA18824@kroah.com>
 <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
 <20190515123319.GA435@kroah.com>
 <63833AA2-AC8B-4EEA-AF36-EF2A9BFD4F9F@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63833AA2-AC8B-4EEA-AF36-EF2A9BFD4F9F@canonical.com>
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

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDk6MDY6NDRQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBhdCAyMDozMywgR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdy
b3RlOgo+IAo+ID4gT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDc6NTQ6NThQTSArMDgwMCwgS2Fp
LUhlbmcgRmVuZyB3cm90ZToKPiA+ID4gYXQgMTk6NDAsIEdyZWcgS0ggPGdyZWdraEBsaW51eGZv
dW5kYXRpb24ub3JnPiB3cm90ZToKPiA+ID4gCj4gPiA+ID4gT24gV2VkLCBNYXkgMTUsIDIwMTkg
YXQgMDc6MjQ6MDFQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3cm90ZToKPiA+ID4gPiA+IFRoZSBy
dGw4ODIxY2UgY2FuIGJlIGZvdW5kIG9uIG1hbnkgSFAgYW5kIExlbm92byBsYXB0b3BzLgo+ID4g
PiA+ID4gVXNlcnMgaGF2ZSBiZWVuIHVzaW5nIG91dC1vZi10cmVlIG1vZHVsZSBmb3IgYSB3aGls
ZSwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhlIG5ldyBSZWFsdGVrIFdpRmkgZHJpdmVyLCBydHc4
OCwgd2lsbCBzdXBwb3J0IHJ0bDg4MjFjZSBpbiAyMDIwIG9yCj4gPiA+ID4gPiBsYXRlci4KPiA+
ID4gPiAKPiA+ID4gPiBXaGVyZSBpcyB0aGF0IGRyaXZlciwgYW5kIHdoeSBpcyBpdCBnb2luZyB0
byB0YWtlIHNvIGxvbmcgdG8gZ2V0IG1lcmdlZD8KPiA+ID4gCj4gPiA+IHJ0dzg4IGlzIGluIDUu
MiBub3csIGJ1dCBpdCBkb2VzbuKAmXQgc3VwcG9ydCA4ODIxY2UgeWV0Lgo+ID4gPiAKPiA+ID4g
VGhleSBwbGFuIHRvIGFkZCB0aGUgc3VwcG9ydCBpbiAyMDIwLgo+ID4gCj4gPiBXaG8gaXMgInRo
ZXkiIGFuZCB3aGF0IGlzIG5lZWRlZCB0byBzdXBwb3J0IHRoaXMgZGV2aWNlIGFuZCB3aHkgd2Fp
dCBhCj4gPiBmdWxsIHllYXI/Cj4gCj4g4oCcVGhleeKAnSByZWZlcnMgdG8gUmVhbHRlay4KPiBJ
dOKAmXMgdGhlaXIgcGxhbiBzbyBJIGNhbuKAmXQgcmVhbGx5IGFuc3dlciB0aGF0IG9uIGJlaGFs
ZiBvZiBSZWFsdGVrLgoKV2hlcmUgZGlkIHRoZXkgc2F5IHRoYXQ/ICBBbnkgcmVhc29uIHRoZWly
IGRldmVsb3BlcnMgYXJlIG5vdCBvbiB0aGlzCnBhdGNoPwoKPiA+ID4gPiA+IDI5NiBmaWxlcyBj
aGFuZ2VkLCAyMDYxNjYgaW5zZXJ0aW9ucygrKQo+ID4gPiA+IAo+ID4gPiA+IFVnaCwgd2h5IGRv
IHdlIGtlZXAgaGF2aW5nIHRvIGFkZCB0aGUgd2hvbGUgbWVzcyBmb3IgZXZlcnkgc2luZ2xlIG9u
ZSBvZgo+ID4gPiA+IHRoZXNlIGRldmljZXM/Cj4gPiA+IAo+ID4gPiBCZWNhdXNlIFJlYWx0ZWsg
ZGV2aWNlcyBhcmUgdW5mb3J0dW5hdGVseSB1YmlxdWl0b3VzIHNvIHRoZSBzdXBwb3J0IGlzCj4g
PiA+IGJldHRlciBjb21lIGZyb20ga2VybmVsLgo+ID4gCj4gPiBUaGF0J3Mgbm90IHRoZSBpc3N1
ZSBoZXJlLiAgVGhlIGlzc3VlIGlzIHRoYXQgd2Uga2VlcCBhZGRpbmcgdGhlIHNhbWUKPiA+IGh1
Z2UgZHJpdmVyIGZpbGVzIHRvIHRoZSBrZXJuZWwgdHJlZSwgb3ZlciBhbmQgb3Zlciwgd2l0aCBu
byByZWFsIGNoYW5nZQo+ID4gYXQgYWxsLiAgV2UgaGF2ZSBzZWVuIGFsbW9zdCBhbGwgb2YgdGhl
c2UgZmlsZXMgaW4gb3RoZXIgcmVhbHRlawo+ID4gZHJpdmVycywgcmlnaHQ/Cj4gCj4gWWVzLiBU
aGV5IHVzZSBvbmUgc2luZ2xlIGRyaXZlciB0byBzdXBwb3J0IGRpZmZlcmVudCBTb0NzLCBkaWZm
ZXJlbnQKPiBhcmNoaXRlY3R1cmVzIGFuZCBldmVuIGRpZmZlcmVudCBPU2VzLgoKV2VsbCwgdGhl
eSB0cnkgdG8sIGl0IGRvZXNuJ3QgYWx3YXlzIHdvcmsgOigKCj4gVGhhdOKAmXMgd2h5IGl04oCZ
cyBhIG1lc3MuCgpPaCB3ZSBhbGwga25vdyB3aHkgdGhpcyBpcyBhIG1lc3MuICBCdXQgdGhleSBo
YXZlIGJlZW4gc2F5aW5nIGZvcgpfeWVhcnNfIHRoZXkgd291bGQgY2xlYW4gdXAgdGhpcyBtZXNz
LiAgU28gcHVzaCBiYWNrLCBJJ20gbm90IGdvaW5nIHRvCnRha2UgYW5vdGhlciAyMDBrIGxpbmVz
IGZvciBhIHNpbXBsZSB3aWZpIGRyaXZlciwgYWdhaW4uCgpBbG9uZyB0aG9zZSBsaW5lcywgd2Ug
c2hvdWxkIHByb2JhYmx5IGp1c3QgZGVsZXRlIHRoZSBvdGhlciBvbGQgcmVhbHRlawpkcml2ZXJz
IHRoYXQgZG9uJ3Qgc2VlbSB0byBiZSBnb2luZyBhbnl3aGVyZSBmcm9tIHN0YWdpbmcgYXMgd2Vs
bCwKYmVjYXVzZSB0aG9zZSBhcmUganVzdCBjb25mdXNpbmcgcGVvcGxlLgoKPiA+IFdoeSBub3Qg
dXNlIHRoZSBvbmVzIHdlIGFscmVhZHkgaGF2ZT8KPiAKPiBJdOKAmXMgdmlydHVhbGx5IGltcG9z
c2libGUgYmVjYXVzZSBSZWFsdGVr4oCZcyBtZWdhIHdpZmkgZHJpdmVyIHVzZXMgdG9ucyBvZgo+
ICNpZmRlZnMsIG9ubHkgb25lIGNoaXAgY2FuIGJlIHNlbGVjdGVkIHRvIGJlIHN1cHBvcnRlZCBh
dCBjb21waWxlIHRpbWUuCgpUaGF0J3Mgbm90IHdoYXQgSSBhc2tlZC4KCkkgd2FudCB0byBrbm93
IHdoeSB0aGV5IGNhbid0IGp1c3QgYWRkIHN1cHBvcnQgZm9yIHRoZWlyIG5ldyBkZXZpY2VzIHRv
Cm9uZSBvZiB0aGUgbWFueSBleGlzdGluZyByZWFsdGVrIGRyaXZlcnMgd2UgYWxyZWFkeSBoYXZl
LiAgVGhhdCBpcyB0aGUKc2ltcGxlciB3YXksIGFuZCB0aGUgY29ycmVjdCB3YXkgdG8gZG8gdGhp
cy4gIFdlIGRvbid0IGRvIHRoaXMgYnkgYWRkaW5nCjIwMGsgbGluZXMsIGFnYWluLgoKPiA+IEJ1
dCBiZXR0ZXIgeWV0LCB3aHkgbm90IGFkZCBwcm9wZXIgc3VwcG9ydCBmb3IgdGhpcyBoYXJkd2Fy
ZSBhbmQgbm90IHVzZQo+ID4gYSBzdGFnaW5nIGRyaXZlcj8KPiAKPiBSZWFsdGVrIHBsYW5zIHRv
IGFkZCB0aGUgc3VwcG9ydCBpbiAyMDIwLCBpZiBldmVyeXRoaW5nIGdvZXMgd2VsbC4KCkRldmlj
ZSAiZ29lcyB3ZWxsIiBwbGVhc2UuICBBbmQgd2hlbiBpbiAyMDIwPyAgQW5kIHdoeSAyMDIwPyAg
V2h5IG5vdAoyMDIyPyAgMjAyND8KCj4gTWVhbndoaWxlLCBtYW55IHVzZXJzIG9mIEhQIGFuZCBM
ZW5vdm8gbGFwdG9wcyBhcmUgdXNpbmcgb3V0LW9mLXRyZWUgZHJpdmVyLAo+IHNvbWUgb2YgdGhl
bSBhcmUgc3R1Y2sgdG8gb2xkZXIga2VybmVscyBiZWNhdXNlIHRoZXkgZG9u4oCZdCBrbm93IGhv
dyB0byBmaXgKPiB0aGUgZHJpdmVyLiBTbyBJIHN0cm9uZ2x5IHRoaW5rIGhhdmluZyB0aGlzIGlu
IGtlcm5lbCBpcyBiZW5lZmljaWFsIHRvIG1hbnkKPiB1c2VycywgZXZlbiBpdOKAmXMgb25seSBm
b3IgYSB5ZWFyLgoKU28gd2hvIGlzIGdvaW5nIHRvIGJlIHJlc3BvbnNpYmxlIGZvciAiZml4aW5n
IHRoZSBkcml2ZXIiIGZvciBhbGwgbmV3Cmtlcm5lbCBhcGkgdXBkYXRlcz8gIEknbSB0aXJlZCBv
ZiBzZWVpbmcgbmV3IGRldmVsb3BlcnMgZ2V0IGxvc3QgaW4gdGhlCm1hemUgb2YgeWV0LWFub3Ro
ZXIgcmVhbHRlayB3aWZpIGRyaXZlci4gIFdlJ3ZlIGJlZW4gcHV0dGluZyB1cCB3aXRoCnRoaXMg
Y3J1ZCBmb3IgeWVhcnMsIGFuZCBpdCBoYXMgbm90IGdvdHRlbiBhbnkgYmV0dGVyIGlmIHlvdSB3
YW50IHRvIGFkZAphbm90aGVyIDIwMGsgbGluZXMgZm9yIHNvbWUgdW5rbm93biBhbW91bnQgb2Yg
dGltZSB3aXRoIHRoZSBob3BlIHRoYXQgYQpkcml2ZXIgbWlnaHQgbWFnaWNhbGx5IHNob3cgdXAg
b25lIGRheS4KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
