Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE1541F1DB
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 18:08:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CA02407EA;
	Fri,  1 Oct 2021 16:08:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRkWMeg-yPU9; Fri,  1 Oct 2021 16:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E31F407DA;
	Fri,  1 Oct 2021 16:08:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDF7A1BF40E
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 16:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C163D403D4
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 16:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IlEmsD17U0Tx for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 16:08:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3521403B5
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 16:08:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4651961452;
 Fri,  1 Oct 2021 16:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633104515;
 bh=7CRJ2vFylAq8uVkY++RDETUKk8nEfEIuz0JrlkfB8sI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oD7R+2XiopeULBOwycPhpvnbEoal/ni+kws6ZyAXytNkOWn9N0mQODpFiE/JMO+XO
 mYG5gSJJDy9Qth2f+LYHxojz1HhNJBBrMNzudSSGNkcnx0iKZA7QiG3/CapjLlBprN
 nPrXAl6I9Ii22Qpj4oWNidjl3C4Z5WZBrm+oV9xmzQ9uEPPXoG8upS35eJAO08I5ag
 iJ9fgwDIqzN8gYEce+JLUgYuj+DOdj+cBHi8GRqsSL11JNHGnYLbjnktpFAoXsF8nc
 XiScFG52br5SvcdG+skf6rWLax7d9hTc0x1EDuJzMIfgVKxgRMv4XVubKGQJwmoedf
 4p3AjS+hdLMFQ==
Received: by pali.im (Postfix)
 id 0B989821; Fri,  1 Oct 2021 18:08:32 +0200 (CEST)
Date: Fri, 1 Oct 2021 18:08:32 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
Message-ID: <20211001160832.ozxc7bhlwlmjeqbo@pali>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-11-Jerome.Pouiller@silabs.com>
 <87sfxlj6s1.fsf@codeaurora.org> <2174509.SLDT7moDbM@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2174509.SLDT7moDbM@pc-42>
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpZGF5IDAxIE9jdG9iZXIgMjAyMSAxNzowOTo0MSBKw6lyw7RtZSBQb3VpbGxlciB3cm90
ZToKPiBPbiBGcmlkYXkgMSBPY3RvYmVyIDIwMjEgMTM6NTg6MzggQ0VTVCBLYWxsZSBWYWxvIHdy
b3RlOgo+ID4gSmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3Jp
dGVzOgo+ID4gCj4gPiA+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJA
c2lsYWJzLmNvbT4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIg
PGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+ID4gCj4gPiBbLi4uXQo+ID4gCj4gPiA+ICtz
dGF0aWMgaW50IGdldF9maXJtd2FyZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGtleXNldF9j
aGlwLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGZpcm13YXJlICoq
ZncsIGludCAqZmlsZV9vZmZzZXQpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIGludCBrZXlzZXRfZmls
ZTsKPiA+ID4gKyAgICAgY2hhciBmaWxlbmFtZVsyNTZdOwo+ID4gPiArICAgICBjb25zdCBjaGFy
ICpkYXRhOwo+ID4gPiArICAgICBpbnQgcmV0Owo+ID4gPiArCj4gPiA+ICsgICAgIHNucHJpbnRm
KGZpbGVuYW1lLCBzaXplb2YoZmlsZW5hbWUpLCAiJXNfJTAyWC5zZWMiLAo+ID4gPiArICAgICAg
ICAgICAgICB3ZGV2LT5wZGF0YS5maWxlX2Z3LCBrZXlzZXRfY2hpcCk7Cj4gPiA+ICsgICAgIHJl
dCA9IGZpcm13YXJlX3JlcXVlc3Rfbm93YXJuKGZ3LCBmaWxlbmFtZSwgd2Rldi0+ZGV2KTsKPiA+
ID4gKyAgICAgaWYgKHJldCkgewo+ID4gPiArICAgICAgICAgICAgIGRldl9pbmZvKHdkZXYtPmRl
diwgImNhbid0IGxvYWQgJXMsIGZhbGxpbmcgYmFjayB0byAlcy5zZWNcbiIsCj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgZmlsZW5hbWUsIHdkZXYtPnBkYXRhLmZpbGVfZncpOwo+ID4gPiAr
ICAgICAgICAgICAgIHNucHJpbnRmKGZpbGVuYW1lLCBzaXplb2YoZmlsZW5hbWUpLCAiJXMuc2Vj
IiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICB3ZGV2LT5wZGF0YS5maWxlX2Z3KTsKPiA+
ID4gKyAgICAgICAgICAgICByZXQgPSByZXF1ZXN0X2Zpcm13YXJlKGZ3LCBmaWxlbmFtZSwgd2Rl
di0+ZGV2KTsKPiA+ID4gKyAgICAgICAgICAgICBpZiAocmV0KSB7Cj4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICBkZXZfZXJyKHdkZXYtPmRldiwgImNhbid0IGxvYWQgJXNcbiIsIGZpbGVuYW1l
KTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICpmdyA9IE5VTEw7Cj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4gKyAg
ICAgfQo+ID4gCj4gPiBIb3cgaXMgdGhpcyBmaXJtd2FyZSBmaWxlIGxvYWRpbmcgc3VwcG9zZWQg
dG8gd29yaz8gSWYgSSdtIHJlYWRpbmcgdGhlCj4gPiBjb2RlIHJpZ2h0LCB0aGUgZHJpdmVyIHRy
aWVzIHRvIGxvYWQgZmlsZSAid2ZtX3dmMjAwXz8/LnNlYyIgYnV0IGluCj4gPiBsaW51eC1maXJt
d2FyZSB0aGUgZmlsZSBpcyBzaWxhYnMvd2ZtX3dmMjAwX0MwLnNlYzoKPiA+IAo+ID4gaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZmlybXdhcmUvbGludXgt
ZmlybXdhcmUuZ2l0L3RyZWUvc2lsYWJzCj4gPiAKPiA+IFRoYXQgY2FuJ3Qgd29yayBhdXRvbWF0
aWNhbGx5LCB1bmxlc3MgSSdtIG1pc3Npbmcgc29tZXRoaW5nIG9mIGNvdXJzZS4KPiAKPiBUaGUg
ZmlybXdhcmUgYXJlIHNpZ25lZC4gIkMwIiBpcyB0aGUga2V5IHVzZWQgdG8gc2lnbiB0aGlzIGZp
cm13YXJlLiBUaGlzCj4ga2V5IG11c3QgbWF0Y2ggd2l0aCB0aGUga2V5IGJ1cm5lZCBpbnRvIHRo
ZSBjaGlwLiBGb3J0dW5hdGVseSwgdGhlIGRyaXZlcgo+IGlzIGFibGUgdG8gcmVhZCB0aGUga2V5
IGFjY2VwdGVkIGJ5IHRoZSBjaGlwIGFuZCBhdXRvbWF0aWNhbGx5IGNob29zZSB0aGUKPiByaWdo
dCBmaXJtd2FyZS4KPiAKPiBXZSBjb3VsZCBpbWFnaW5lIHRvIGFkZCBhIGF0dHJpYnV0ZSBpbiB0
aGUgRFQgdG8gY2hvb3NlIHRoZSBmaXJtd2FyZSB0bwo+IGxvYWQuIEhvd2V2ZXIsIGl0IHdvdWxk
IGJlIGEgcGl0eSB0byBoYXZlIHRvIHNwZWNpZnkgaXQgbWFudWFsbHkgd2hlcmVhcwo+IHRoZSBk
cml2ZXIgaXMgYWJsZSB0byBkZXRlY3QgaXQgYXV0b21hdGljYWxseS4KPiAKPiBDdXJyZW50bHks
IHRoZSBvbmx5IHBvc3NpYmxlIGtleSBpcyBDMC4gSG93ZXZlciwgaXQgZXhpc3RzIHNvbWUgaW50
ZXJuYWwKPiBwYXJ0cyB3aXRoIG90aGVyIGtleXMuIEluIGFkZGl0aW9uLCBpdCBpcyB0aGVvcmV0
aWNhbGx5IHBvc3NpYmxlIHRvIGFzawo+IHRvIFNpbGFicyB0byBidXJuIHBhcnRzIHdpdGggYSBz
cGVjaWZpYyBrZXkgaW4gb3JkZXIgdG8gaW1wcm92ZSBzZWN1cml0eQo+IG9mIGEgcHJvZHVjdC4g
Cj4gCj4gT2J2aW91c2x5LCBmb3Igbm93LCB0aGlzIGZlYXR1cmUgbWFpbmx5IGV4aXN0cyBmb3Ig
dGhlIFNpbGFicyBmaXJtd2FyZQo+IGRldmVsb3BlcnMgd2hvIGhhdmUgdG8gd29yayB3aXRoIG90
aGVyIGtleXMuCj4gIAo+ID4gQWxzbyBJIHdvdWxkIHByZWZlciB0byB1c2UgZGlyZWN0b3J5IG5h
bWUgYXMgdGhlIGRyaXZlciBuYW1lIHdmeCwgYnV0IEkKPiA+IGd1ZXNzIHNpbGFicyBpcyBhbHNv
IGRvYWJsZS4KPiAKPiBJIGhhdmUgbm8gb3Bpbmlvbi4KPiAKPiAKPiA+IEFsc28gSSdtIG5vdCBz
ZWVpbmcgdGhlIFBEUyBmaWxlcyBpbiBsaW51eC1maXJtd2FyZS4gVGhlIGlkZWEgaXMgdGhhdAo+
ID4gd2hlbiB1c2VyIGluc3RhbGxzIGFuIHVwc3RyZWFtIGtlcm5lbCBhbmQgdGhlIGxpbnV4LWZp
cm13YXJlIGV2ZXJ5dGhpbmcKPiA+IHdpbGwgd29yayBhdXRvbWF0aWNhbGx5LCB3aXRob3V0IGFu
eSBtYW51YWwgZmlsZSBpbnN0YWxsYXRpb25zLgo+IAo+IFdGMjAwIGlzIGp1c3QgYSBjaGlwLiBT
b21lb25lIGhhcyB0byBkZXNpZ24gYW4gYW50ZW5uYSBiZWZvcmUgdG8gYmUgYWJsZQo+IHRvIHVz
ZS4KPiAKPiBIb3dldmVyLCB3ZSBoYXZlIGV2YWx1YXRpb24gYm9hcmRzIHRoYXQgaGF2ZSBhbnRl
bm5hcyBhbmQgY29ycmVzcG9uZGluZwo+IFBEUyBmaWxlc1sxXS4gTWF5YmUgbGludXgtZmlybXdh
cmUgc2hvdWxkIGluY2x1ZGUgdGhlIFBEUyBmb3IgdGhlc2UgYm9hcmRzCgpTbyBjaGlwIHZlbmRv
ciBwcm92aWRlcyBmaXJtd2FyZSBhbmQgY2FyZCB2ZW5kb3IgcHJvdmlkZXMgUERTIGZpbGVzLiBJ
bgpteSBvcGluaW9uIGFsbCBmaWxlcyBzaG91bGQgZ28gaW50byBsaW51eC1maXJtd2FyZSByZXBv
c2l0b3J5LiBJZiBTaWxhYnMKaGFzIFBEUyBmaWxlcyBmb3IgaXRzIGRldmVsIGJvYXJkcyAod2hp
Y2ggYXJlIGJhc2ljYWxseSBjYXJkcykgdGhlbiBJCnRoaW5rIHRoZXNlIGZpbGVzIHNob3VsZCBn
byBhbHNvIGludG8gbGludXgtZmlybXdhcmUgcmVwb3NpdG9yeS4KCkFuZCBiYXNlZCBvbiBzb21l
IHBhcmFtZXRlciwgZHJpdmVyIHNob3VsZCBsb2FkIGNvcnJlY3QgUERTIGZpbGUuIFNlZW1zCmxp
a2UgRFQgY2FuIGJlIGEgcGxhY2Ugd2hlcmUgdG8gcHV0IHNvbWV0aGluZyB3aGljaCBpbmRpY2F0
ZXMgd2hpY2ggUERTCmZpbGUgc2hvdWxkIGJlIHVzZWQuCgpCdXQgc2hvdWxkIGJlIGluIERUIGRp
cmVjdGx5IG5hbWUgb2YgUERTIGZpbGU/IE9yIHNob3VsZCBiZSBpbiBEVCBqdXN0CmFkZGl0aW9u
YWwgY29tcGF0aWJsZSBzdHJpbmcgd2l0aCBjYXJkIHZlbmRvciBuYW1lIGFuZCB0aGVuIGluIGRy
aXZlcgppdHNlbGYgc2hvdWxkIGJlIG1hcHBpbmcgdGFibGUgZnJvbSBjb21wYXRpYmxlIHN0cmlu
ZyB0byBmaWxlbmFtZT8gSSBkbwpub3Qga25vdyB3aGF0IGlzIGJldHRlci4KCj4gYW5kIHRoZSBE
VCBzaG91bGQgY29udGFpbnMgdGhlIG5hbWUgb2YgdGhlIGRlc2lnbi4gZWc6Cj4gCj4gICAgIGNv
bXBhdGlibGUgPSAic2lsYWJzLGJyZDQwMDFhIiwgInNpbGFicyx3ZjIwMCI7Cj4gCj4gU28gdGhl
IGRyaXZlciB3aWxsIGtub3cgd2hpY2ggUERTIGl0IHNob3VsZCB1c2UuIAo+IAo+IEluIGZhY3Qs
IEkgYW0gc3VyZSBJIGhhZCB0aGlzIGlkZWEgaW4gbWluZCB3aGVuIEkgaGF2ZSBzdGFydGVkIHRv
IHdyaXRlCj4gdGhlIHdmeCBkcml2ZXIuIEJ1dCB3aXRoIHRoZSB0aW1lIEkgaGF2ZSBmb3Jnb3R0
ZW4gaXQuIAo+IAo+IElmIHlvdSBhZ3JlZSB3aXRoIHRoYXQgaWRlYSwgSSBjYW4gd29yayBvbiBp
dCBuZXh0IHdlZWsuCj4gCj4gCj4gWzFdOiBodHRwczovL2dpdGh1Yi5jb20vU2lsaWNvbkxhYnMv
d2Z4LXBkcwo+IAo+IC0tIAo+IErDqXLDtG1lIFBvdWlsbGVyCj4gCj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
