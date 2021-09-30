Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7868841DFBF
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Sep 2021 19:07:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A9D3407C4;
	Thu, 30 Sep 2021 17:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGNKP_0suYRI; Thu, 30 Sep 2021 17:07:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE828407B7;
	Thu, 30 Sep 2021 17:07:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A9EB1BF281
 for <devel@linuxdriverproject.org>; Thu, 30 Sep 2021 17:06:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08E056140E
 for <devel@linuxdriverproject.org>; Thu, 30 Sep 2021 17:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id umF6nwWnIF0j for <devel@linuxdriverproject.org>;
 Thu, 30 Sep 2021 17:06:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3292D61401
 for <devel@driverdev.osuosl.org>; Thu, 30 Sep 2021 17:06:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 01C07617E6;
 Thu, 30 Sep 2021 17:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633021609;
 bh=qB28pyd3G9W1jKU1sJvEmXSTCB/fM9hWT/YO9coO46Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lD57I7buZC1D+E/nzOsGe0U6OnyD8kIUuCz9uhE3hVGiL5ivBjtmL2P/Nn7oFn8+A
 VXrPZctdXHc0YQ1Tf3KPhhEsTj9EZhra5W8tNNXYZcYUC65XFTIFCR2Uz23fbx3wew
 vW0IUupDXZrundBUHGdNgTD4y+nj69kh1XiadvJ+RF7V0qlKXy9p1qY5F/Boswqb9T
 8TkWRFWlsqmJiH2FIGnVy30ojkH9FuZuK1q6/1GF9lRs0m2rDrskD8+arwKi/Tm9JS
 IcZoholK/+5AHdWXzh16Ff5a7TEYZolj28BmojKYyw0oV3eB6hCkulag+JZD8mHy9X
 9dBgrdTdFLtMA==
Received: by pali.im (Postfix)
 id A4204E79; Thu, 30 Sep 2021 19:06:46 +0200 (CEST)
Date: Thu, 30 Sep 2021 19:06:46 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 08/24] wfx: add bus_sdio.c
Message-ID: <20210930170646.cffsuytdpa72izbh@pali>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-9-Jerome.Pouiller@silabs.com>
 <CAPDyKFp2_41mScO=-Ev+kvYD5xjShQdLugU_2FTTmvzgCxmEWA@mail.gmail.com>
 <19731906.ZuIkq4dnIL@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19731906.ZuIkq4dnIL@pc-42>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, DTML <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1cnNkYXkgMzAgU2VwdGVtYmVyIDIwMjEgMTg6NTE6MDkgSsOpcsO0bWUgUG91aWxsZXIg
d3JvdGU6Cj4gSGVsbG8gVWxmLAo+IAo+IE9uIFRodXJzZGF5IDMwIFNlcHRlbWJlciAyMDIxIDEy
OjA3OjU1IENFU1QgVWxmIEhhbnNzb24gd3JvdGU6Cj4gPiBPbiBNb24sIDIwIFNlcHQgMjAyMSBh
dCAxODoxMiwgSmVyb21lIFBvdWlsbGVyCj4gPiA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+
IHdyb3RlOgo+ID4gPgo+ID4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWls
bGVyQHNpbGFicy5jb20+Cj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWls
bGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJz
L25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMgfCAyNjEgKysrKysrKysrKysrKysr
KysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjYxIGluc2VydGlvbnMoKykKPiA+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlv
LmMKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93
ZngvYnVzX3NkaW8uYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8u
Ywo+ID4gCj4gPiBbLi4uXQo+ID4gCj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBpbnQgd2Z4X3NkaW9f
cHJvYmUoc3RydWN0IHNkaW9fZnVuYyAqZnVuYywKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgKmlkKQo+ID4gPiArewo+ID4gPiArICAg
ICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBmdW5jLT5kZXYub2Zfbm9kZTsKPiA+ID4gKyAg
ICAgICBzdHJ1Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzOwo+ID4gPiArICAgICAgIGludCByZXQ7Cj4g
PiA+ICsKPiA+ID4gKyAgICAgICBpZiAoZnVuYy0+bnVtICE9IDEpIHsKPiA+ID4gKyAgICAgICAg
ICAgICAgIGRldl9lcnIoJmZ1bmMtPmRldiwgIlNESU8gZnVuY3Rpb24gbnVtYmVyIGlzICVkIHdo
aWxlIGl0IHNob3VsZCBhbHdheXMgYmUgMSAodW5zdXBwb3J0ZWQgY2hpcD8pXG4iLAo+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICBmdW5jLT5udW0pOwo+ID4gPiArICAgICAgICAgICAgICAg
cmV0dXJuIC1FTk9ERVY7Cj4gPiA+ICsgICAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgICAgYnVz
ID0gZGV2bV9remFsbG9jKCZmdW5jLT5kZXYsIHNpemVvZigqYnVzKSwgR0ZQX0tFUk5FTCk7Cj4g
PiA+ICsgICAgICAgaWYgKCFidXMpCj4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01F
TTsKPiA+ID4gKwo+ID4gPiArICAgICAgIGlmICghbnAgfHwgIW9mX21hdGNoX25vZGUod2Z4X3Nk
aW9fb2ZfbWF0Y2gsIG5wKSkgewo+ID4gPiArICAgICAgICAgICAgICAgZGV2X3dhcm4oJmZ1bmMt
PmRldiwgIm5vIGNvbXBhdGlibGUgZGV2aWNlIGZvdW5kIGluIERUXG4iKTsKPiA+ID4gKyAgICAg
ICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+ID4gPiArICAgICAgIH0KPiA+ID4gKwo+ID4gPiAr
ICAgICAgIGJ1cy0+ZnVuYyA9IGZ1bmM7Cj4gPiA+ICsgICAgICAgYnVzLT5vZl9pcnEgPSBpcnFf
b2ZfcGFyc2VfYW5kX21hcChucCwgMCk7Cj4gPiA+ICsgICAgICAgc2Rpb19zZXRfZHJ2ZGF0YShm
dW5jLCBidXMpOwo+ID4gPiArICAgICAgIGZ1bmMtPmNhcmQtPnF1aXJrcyB8PSBNTUNfUVVJUktf
TEVOSUVOVF9GTjAgfAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNTUNfUVVJ
UktfQkxLU1pfRk9SX0JZVEVfTU9ERSB8Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIE1NQ19RVUlSS19CUk9LRU5fQllURV9NT0RFXzUxMjsKPiA+IAo+ID4gSSB3b3VsZCByYXRo
ZXIgc2VlIHRoYXQgeW91IGFkZCBhbiBTRElPX0ZJWFVQIGZvciB0aGUgU0RJTyBjYXJkLCB0bwo+
ID4gdGhlIHNkaW9fZml4dXBfbWV0aG9kc1tdLCBpbiBkcml2ZXJzL21tYy9jb3JlL3F1aXJrcy5o
LCBpbnN0ZWFkIG9mCj4gPiB0aGlzLgo+IAo+IEluIHRoZSBjdXJyZW50IHBhdGNoLCB0aGVzZSBx
dWlya3MgYXJlIGFwcGxpZWQgb25seSBpZiB0aGUgZGV2aWNlIGFwcGVhcnMKPiBpbiB0aGUgZGV2
aWNlIHRyZWUgKHNlZSB0aGUgY29uZGl0aW9uIGFib3ZlKS4gSWYgSSBpbXBsZW1lbnQgdGhlbSBp
bgo+IGRyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmggdGhleSB3aWxsIGJlIGFwcGxpZWQgYXMgc29v
biBhcyB0aGUgZGV2aWNlIGlzCj4gZGV0ZWN0ZWQuIElzIGl0IHdoYXQgd2Ugd2FudD8KPiAKPiBO
b3RlOiB3ZSBhbHJlYWR5IGhhdmUgaGFkIGEgZGlzY3Vzc2lvbiBhYm91dCB0aGUgc3RyYW5nZSBW
SUQvUElEIGRlY2xhcmVkCj4gYnkgdGhpcyBkZXZpY2U6Cj4gICBodHRwczovL3d3dy5zcGluaWNz
Lm5ldC9saXN0cy9uZXRkZXYvbXNnNjkyNTc3Lmh0bWwKClllcywgdmVuZG9yIGlkIDB4MDAwMCBp
cyBpbnZhbGlkIHBlciBTRElPIHNwZWMuIFNvIGJhc2VkIG9uIHRoaXMgdmVuZG9yCmlkLCBpdCBp
cyBub3QgcG9zc2libGUgdG8gd3JpdGUgYW55IHF1aXJrIGluIG1tYy9zZGlvIGdlbmVyaWMgY29k
ZS4KClVsZiwgYnV0IG1heWJlIGl0IGNvdWxkIGJlIHBvc3NpYmxlIHRvIHdyaXRlIHF1aXJrIGJh
c2VkIG9uIE9GCmNvbXBhdGlibGUgc3RyaW5nPwoKSsOpcsO0bWUsIGNvdWxkIHlvdSBwbGVhc2Ug
bm90aWZ5IHlvdXIgaHcgZGVwYXJ0ZW1lbnQgdGhhdCB0aGlzIHNkaW8gY2FyZApkb2VzIG5vdCBj
b21wbHkgd2l0aCBTRElPIHNwZWMgZHVlIHRvIGluY29ycmVjdCB2ZW5kb3IgaWQgc3RvcmVkIGlu
IGh3LApzbyB0aGV5IGNvdWxkIGZpeCB0aGlzIGlzc3VlIGluIG5leHQgcHJvZHVjdCwgYnkgcHJv
cGVyIGFsbG9jYXRpb24gb2YKdmVuZG9yIGlkIG51bWJlciBmcm9tIFVTQi1JRiAoKik/IEkga25v
dyB0aGF0IGZvciBleGlzdGluZyBwcm9kdWN0cyBpdAppcyBub3QgcG9zc2libGUgdG8gZml4LCBi
dXQgaXQgY2FuIGJlIGZpeGVkIGluIG5leHQgZ2VuZXJhdGlvbiBvZgpwcm9kdWN0cyBiYXNlZCBv
biB1c2VkIFNESU8gSVAuCgooKikgLSBVU0ItSUYgcmVhbGx5IGFsbG9jYXRlcyBTRElPIHZlbmRv
ciBpZHMsIHNlZToKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW1jLzIwMjEwNjA3MTQw
MjE2LjY0aXVwcnAzc2lnZ3NscmtAcGFsaS8KCj4gCj4gWy4uLl0KPiA+ID4gKwo+ID4gPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCB3Znhfc2Rpb19pZHNbXSA9IHsKPiA+ID4g
KyAgICAgICB7IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX1NJTEFCUywgU0RJT19ERVZJQ0Vf
SURfU0lMQUJTX1dGMjAwKSB9LAo+ID4gPiArICAgICAgIHsgfSwKPiA+ID4gK307Cj4gPiA+ICtN
T0RVTEVfREVWSUNFX1RBQkxFKHNkaW8sIHdmeF9zZGlvX2lkcyk7Cj4gPiA+ICsKPiA+ID4gK3N0
cnVjdCBzZGlvX2RyaXZlciB3Znhfc2Rpb19kcml2ZXIgPSB7Cj4gPiA+ICsgICAgICAgLm5hbWUg
PSAid2Z4LXNkaW8iLAo+ID4gPiArICAgICAgIC5pZF90YWJsZSA9IHdmeF9zZGlvX2lkcywKPiA+
ID4gKyAgICAgICAucHJvYmUgPSB3Znhfc2Rpb19wcm9iZSwKPiA+ID4gKyAgICAgICAucmVtb3Zl
ID0gd2Z4X3NkaW9fcmVtb3ZlLAo+ID4gPiArICAgICAgIC5kcnYgPSB7Cj4gPiA+ICsgICAgICAg
ICAgICAgICAub3duZXIgPSBUSElTX01PRFVMRSwKPiA+ID4gKyAgICAgICAgICAgICAgIC5vZl9t
YXRjaF90YWJsZSA9IHdmeF9zZGlvX29mX21hdGNoLAo+ID4gCj4gPiBJcyB0aGVyZSBubyBwb3dl
ciBtYW5hZ2VtZW50PyBPciBkbyB5b3UgaW50ZW5kIHRvIGFkZCB0aGF0IG9uIHRvcD8KPiAKPiBJ
dCBzZWVtcyB3ZSBhbHJlYWR5IGhhdmUgaGFkIHRoaXMgZGlzY3Vzc2lvbjoKPiAKPiAgIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi9DQVBEeUtGcUpmPXZVcXBRZzNzdURDYWRLckZUa1FX
RlRZX3FwPSt5REs9X0x1OWdKR2dAbWFpbC5nbWFpbC5jb20vI3IKPiAKPiBJbiB0aGlzIHRocmVh
ZCwgS2FsbGUgc2FpZDoKPiA+IE1hbnkgbWFjODAyMTEgZHJpdmVycyBkbyBzbyB0aGF0IHRoZSBk
ZXZpY2UgaXMgcG93ZXJlZCBvZmYgZHVyaW5nCj4gPiBpbnRlcmZhY2UgZG93biAoaWZjb25maWcg
d2xhbjAgZG93biksIGFuZCBhcyBtYWM4MDIxMSBkb2VzIGludGVyZmFjZQo+ID4gZG93biBhdXRv
bWF0aWNhbGx5IGR1cmluZyBzdXNwZW5kLCBzdXNwZW5kIHRoZW4gd29ya3Mgd2l0aG91dCBleHRy
YQo+ID4gaGFuZGxlcnMuCj4gCj4gCj4gLS0gCj4gSsOpcsO0bWUgUG91aWxsZXIKPiAKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
