Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE2E28E0A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 14:43:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 941BA877FD;
	Wed, 14 Oct 2020 12:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D4yE4b9RpzVA; Wed, 14 Oct 2020 12:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29C768769B;
	Wed, 14 Oct 2020 12:43:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3669B1BF25F
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 12:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 32CCC876C2
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 12:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TG+7-oeA-+8L for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 12:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47A51876C0
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 12:43:38 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8447720848;
 Wed, 14 Oct 2020 12:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602679417;
 bh=jW0i/QQSQbgHdq+AcCmwrK02JHOb8iHkGsSyJ9m/xxE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D56R7MepUimHoXTW8BAKEcxBCdmFAGZZt2vGgj8O0TSMzweDfN+v2d/7pi1G2qKXs
 EpH1ZWCUEhPzupaupQcWTnSQDXehpQ+tXteOJSA7dNuJNnf0OIJkbNasyMa/7KTgmH
 b9SjangPukrd+RMj2fT+KfjxZzl9V8ekOr+Fy5gA=
Received: by pali.im (Postfix)
 id 190F66EE; Wed, 14 Oct 2020 14:43:35 +0200 (CEST)
Date: Wed, 14 Oct 2020 14:43:34 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 07/23] wfx: add bus_sdio.c
Message-ID: <20201014124334.lgx53qvtgkmfkepc@pali>
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
 <20201012104648.985256-8-Jerome.Pouiller@silabs.com>
 <20201013201156.g27gynu5bhvaubul@pali> <2628294.9EgBEFZmRI@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2628294.9EgBEFZmRI@pc-42>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5IDE0IE9jdG9iZXIgMjAyMCAxMzo1MjoxNSBKw6lyw7RtZSBQb3VpbGxlciB3
cm90ZToKPiBIZWxsbyBQYWxpLAo+IAo+IE9uIFR1ZXNkYXkgMTMgT2N0b2JlciAyMDIwIDIyOjEx
OjU2IENFU1QgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBIZWxsbyEKPiA+IAo+ID4gT24gTW9uZGF5
IDEyIE9jdG9iZXIgMjAyMCAxMjo0NjozMiBKZXJvbWUgUG91aWxsZXIgd3JvdGU6Cj4gPiA+ICsj
ZGVmaW5lIFNESU9fVkVORE9SX0lEX1NJTEFCUyAgICAgICAgMHgwMDAwCj4gPiA+ICsjZGVmaW5l
IFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIwMCAgMHgxMDAwCj4gPiA+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IHNkaW9fZGV2aWNlX2lkIHdmeF9zZGlvX2lkc1tdID0gewo+ID4gPiArICAgICB7IFNE
SU9fREVWSUNFKFNESU9fVkVORE9SX0lEX1NJTEFCUywgU0RJT19ERVZJQ0VfSURfU0lMQUJTX1dG
MjAwKSB9LAo+ID4gCj4gPiBQbGVhc2UgbW92ZSBpZHMgaW50byBjb21tb24gaW5jbHVkZSBmaWxl
IGluY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKPiA+IHdoZXJlIGFyZSBhbGwgU0RJTyBpZHMu
IE5vdyBhbGwgZHJpdmVycyBoYXZlIGlkcyBkZWZpbmVkIGluIHRoYXQgZmlsZS4KPiA+IAo+ID4g
PiArICAgICAvLyBGSVhNRTogaWdub3JlIFZJRC9QSUQgYW5kIG9ubHkgcmVseSBvbiBkZXZpY2Ug
dHJlZQo+ID4gPiArICAgICAvLyB7IFNESU9fREVWSUNFKFNESU9fQU5ZX0lELCBTRElPX0FOWV9J
RCkgfSwKPiA+IAo+ID4gV2hhdCBpcyB0aGUgcmVhc29uIGZvciBpZ25vcmluZyB2ZW5kb3IgYW5k
IGRldmljZSBpZHM/Cj4gCj4gVGhlIGRldmljZSBoYXMgYSBwYXJ0aWN1bGFyaXR5LCBpdHMgVklE
L1BJRCBpcyAwMDAwOjEwMDAgKGFzIHlvdSBjYW4gc2VlCj4gYWJvdmUpLiBUaGlzIHZhbHVlIGlz
IHdlaXJkLiBUaGUgcmlzayBvZiBjb2xsaXNpb24gd2l0aCBhbm90aGVyIGRldmljZSBpcwo+IGhp
Z2guCgpUaG9zZSBpZHMgbG9va3Mgc3RyYW5nZS4gWW91IGFyZSBmcm9tIFNpbGFicywgY2FuIHlv
dSBjaGVjayBpbnRlcm5hbGx5CmluIFNpbGFicyBpZiBpZHMgYXJlIHJlYWxseSBjb3JyZWN0PyBB
bmQgd2hpY2ggc2RpbyB2ZW5kb3IgaWQgeW91IGluClNpbGFicyBnb3QgYXNzaWduZWQgZm9yIHlv
dXIgcHJvZHVjdHM/CgpJIGtub3cgdGhhdCBzZGlvIGRldmljZXMgd2l0aCBtdWx0aXBsZSBmdW5j
dGlvbnMgbWF5IGhhdmUgZGlmZmVyZW50IHNkaW8KdmVuZG9yL2RldmljZSBpZCBwYXJ0aWN1bGFy
IGZ1bmN0aW9uIGFuZCBpbiBjb21tb24gQ0lTIChmdW5jdGlvbiAwKS4KCkNvdWxkIG5vdCBiZSBh
IHByb2JsZW0gdGhhdCBvbiBvbmUgcGxhY2UgaXMgdmVuZG9yL2RldmljZSBpZCBjb3JyZWN0IGFu
ZApvbiBvdGhlciBwbGFjZSBpcyB0aGF0IHN0cmFuZ2UgdmFsdWU/CgpJIGhhdmUgc2VudCBmb2xs
b3dpbmcgcGF0Y2ggKG5vdyBwYXJ0IG9mIHVwc3RyZWFtIGtlcm5lbCkgd2hpY2ggZXhwb3J0cwp0
aGVzZSBpZHMgdG8gdXNlcnNwYWNlOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbWMv
MjAyMDA1MjcxMTA4NTguMTc1MDQtMi1wYWxpQGtlcm5lbC5vcmcvVC8jdQoKQWxzbyBmb3IgZGVi
dWdnaW5nIGlkcyBhbmQgaW5mb3JtYXRpb24gYWJvdXQgc2RpbyBjYXJkcywgSSBzZW50IGFub3Ro
ZXIKcGF0Y2ggd2hpY2ggZXhwb3J0IGFkZGl0aW9uYWwgZGF0YToKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtbW1jLzIwMjAwNzI3MTMzODM3LjE5MDg2LTEtcGFsaUBrZXJuZWwub3JnL1Qv
I3UKCkNvdWxkIHlvdSB0cnkgdGhlbSBhbmQgbG9vayBhdCAvc3lzL2NsYXNzL21tY19ob3N0LyBh
dHRyaWJ1dGUgb3V0cHV0cz8KCj4gU28sIG1heWJlIHRoZSBkZXZpY2Ugc2hvdWxkIGJlIHByb2Jl
ZCBvbmx5IGlmIGl0IGFwcGVhcnMgaW4gdGhlIERULiBTaW5jZQo+IFdGMjAwIHRhcmdldHMgZW1i
ZWRkZWQgcGxhdGZvcm1zLCBJIGRvbid0IHRoaW5rIGl0IGlzIGEgcHJvYmxlbSB0byByZWx5IG9u
Cj4gRFQuIFlvdSB3aWxsIGZpbmQgYW5vdGhlciBGSVhNRSBmdXJ0aGVyIGluIHRoZSBjb2RlIGFi
b3V0IHRoYXQ6Cj4gCj4gKyAgICAgICAgICAgICAgIGRldl93YXJuKCZmdW5jLT5kZXYsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICJkZXZpY2UgaXMgbm90IGRlY2xhcmVkIGluIERULCBmZWF0
dXJlcyB3aWxsIGJlIGxpbWl0ZWRcbiIpOwo+ICsgICAgICAgICAgICAgICAvLyBGSVhNRTogaWdu
b3JlIFZJRC9QSUQgYW5kIG9ubHkgcmVseSBvbiBkZXZpY2UgdHJlZQo+ICsgICAgICAgICAgICAg
ICAvLyByZXR1cm4gLUVOT0RFVjsKPiAKPiBIb3dldmVyLCBpdCB3b3VsZG4ndCBiZSB1c3VhbCB3
YXkgdG8gbWFuYWdlIFNESU8gZGV2aWNlcyAoYW5kIGl0IGlzIHRoZQo+IHJlYXNvbiB3aHkgdGhl
IGNvZGUgaXMgY29tbWVudGVkIG91dCkuCj4gCj4gQW55d2F5LCBpZiB3ZSBjaG9vc2UgdG8gcmVs
eSBvbiB0aGUgRFQsIHNob3VsZCB3ZSBhbHNvIGNoZWNrIHRoZSBWSUQvUElEPwo+IAo+IFBlcnNv
bmFsbHksIEkgYW0gaW4gZmF2b3IgdG8gcHJvYmUgdGhlIGRldmljZSBvbmx5IGlmIFZJRC9QSUQg
bWF0Y2ggYW5kIGlmCj4gYSBEVCBub2RlIGlzIGZvdW5kLCBldmVuIGlmIGl0IGlzIG5vdCB0aGUg
dXN1YWwgd2F5LgoKTm9ybWFsbHkgYWxsIHNkaW8gZGV2aWNlcyBhcmUgaG90cGx1Z2dlZCBpbiBs
aW51eCBrZXJuZWwgYmFzZWQgb24gc2RpbwpkZXZpY2UgYW5kIHZlbmRvciBpZHMuIEFuZCB0aGVz
ZSBpZHMgYXJlIHVuaXF1ZSBpZGVudGlmaWVycyBvZiBzZGlvCmRldmljZXMuIFNvIHNob3VsZCBi
ZSBlbm91Z2ggZm9yIGRldGVjdGlvbi4KCk1vbnRocyBhZ28gSSBoYXZlIGNoZWNrZWQgaXQgYW5k
IG1vdmVkIGFsbCBTRElPIGRldmljZSBhbmQgdmVuZG9yIGlkcwppbnRvIGNvbW1vbiBpbmNsdWRl
L2xpbnV4L21tYy9zZGlvX2lkcy5oIGZpbGUuIEkgd291bGQgbGlrZSB0byBub3QgaGF2ZQp0aGlz
ICJtZXNzIiBhZ2Fpbiwgd2hpY2ggd2FzIGJhc2ljYWxseSBmdWxseSBjbGVhbmVkLgoKSSdtIGFk
ZGluZyBsaW51eC1tbWMgbWFpbGluZyBsaXN0IGFuZCBVbGYgSGFuc3NvbiB0byBsb29wLgoKVWxm
LCBjYW4geW91IGxvb2sgYXQgdGhpcyAicHJvYmxlbSI/IFdoYXQgZG8geW91IHRoaW5rIGFib3V0
IHRob3NlCiJzdHJhbmdlIiBzZGlvIGlkcz8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
