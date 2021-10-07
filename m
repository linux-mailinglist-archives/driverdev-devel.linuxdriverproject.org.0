Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9223425100
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 12:25:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44B26409A4;
	Thu,  7 Oct 2021 10:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id adgBnhyttv9B; Thu,  7 Oct 2021 10:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CA004098E;
	Thu,  7 Oct 2021 10:25:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFA0D1BF2B1
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBEFB6075F
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kTwPHsIdqFuS for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 10:24:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7762606A5
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 10:24:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1F60C60C4C;
 Thu,  7 Oct 2021 10:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633602294;
 bh=ovURSsNma7DN09CRPZqqCrVNUPMHPnGPJNUWoT0IKso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kEOtFaILmndWWmHB4pF4w+OtT4NgSPduEzpl5Uh76av0g2xdnWNhz2PXPo0Z/d1pB
 Y+EwBnWdBi4QRZ53FPpIyLBr8+vBHAu656j1RP9b6itykzJsbZXS+FGh2FKUTBenlA
 VAmKqYcJWM23OolwNasAs7V52STFtYtMmjIQEv1aDkDIU+iLxy0RcQSixLHY4BQoZw
 dRtrr6ZV7cMZExuglqI+9CNQOQ9DvCzZ+kEbeiZbvnUilTR41xN+3n1EeF2jDJIkwG
 gRYnnJHPyUE/GkXG9FHlqIo0A9J0AO/wEJBm2ocBP3hOJ0vLyx7TV2Y5XUSgo24asi
 6ylGqg+mwdijw==
Received: by pali.im (Postfix)
 id 0193A81A; Thu,  7 Oct 2021 12:24:51 +0200 (CEST)
Date: Thu, 7 Oct 2021 12:24:51 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 08/24] wfx: add bus_sdio.c
Message-ID: <20211007102451.gfqw7ucvwqxcgw4m@pali>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <149139701.nbvtKH4F0p@pc-42>
 <CAPDyKFr62Kykg3=9WiXAV8UToqjw8gj4t6bbM7pGQ+iGGQRLmg@mail.gmail.com>
 <4117481.h6P39bWmWk@pc-42> <87czohckal.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87czohckal.fsf@codeaurora.org>
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

T24gVGh1cnNkYXkgMDcgT2N0b2JlciAyMDIxIDExOjI2OjQyIEthbGxlIFZhbG8gd3JvdGU6Cj4g
SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cj4g
PiBPbiBXZWRuZXNkYXkgNiBPY3RvYmVyIDIwMjEgMTc6MDI6MDcgQ0VTVCBVbGYgSGFuc3NvbiB3
cm90ZToKPiA+PiBPbiBUdWUsIDUgT2N0IDIwMjEgYXQgMTA6MTQsIErDqXLDtG1lIFBvdWlsbGVy
IDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4gPj4gPiBPbiBGcmlkYXkgMSBP
Y3RvYmVyIDIwMjEgMTc6MjM6MTYgQ0VTVCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+PiA+ID4gT24g
VGh1LCAzMCBTZXB0IDIwMjEgYXQgMTk6MDYsIFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+
IHdyb3RlOgo+ID4+ID4gPiA+IE9uIFRodXJzZGF5IDMwIFNlcHRlbWJlciAyMDIxIDE4OjUxOjA5
IErDqXLDtG1lIFBvdWlsbGVyIHdyb3RlOgo+ID4+ID4gPiA+ID4gT24gVGh1cnNkYXkgMzAgU2Vw
dGVtYmVyIDIwMjEgMTI6MDc6NTUgQ0VTVCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+PiA+ID4gPiA+
ID4gT24gTW9uLCAyMCBTZXB0IDIwMjEgYXQgMTg6MTIsIEplcm9tZSBQb3VpbGxlcgo+ID4+ID4g
PiA+ID4gPiA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyb3RlOgo+ID4+ID4gPiA+ID4g
PiA+Cj4gPj4gPiA+ID4gPiA+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3Vp
bGxlckBzaWxhYnMuY29tPgo+ID4+ID4gPiA+ID4gPiA+Cj4gPj4gPiA+ID4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+
ID4+ID4gPiA+ID4gPiA+IC0tLQo+ID4+ID4gPiA+ID4gPiA+ICBkcml2ZXJzL25ldC93aXJlbGVz
cy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMgfCAyNjEgKysrKysrKysrKysrKysrKysrKysrCj4gPj4g
PiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNjEgaW5zZXJ0aW9ucygrKQo+ID4+ID4gPiA+
ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dm
eC9idXNfc2Rpby5jCj4gPj4gPiA+ID4gPiA+ID4KPiA+PiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5jCj4gPj4gPiA+ID4g
PiA+ID4gYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMKPiA+PiA+
ID4gPiA+ID4KPiA+PiA+ID4gPiA+ID4gWy4uLl0KPiA+PiA+ID4gPiA+ID4KPiA+PiA+ID4gPiA+
ID4gPiArCj4gPj4gPiA+ID4gPiA+ID4gK3N0YXRpYyBpbnQgd2Z4X3NkaW9fcHJvYmUoc3RydWN0
IHNkaW9fZnVuYyAqZnVuYywKPiA+PiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCAqaWQpCj4gPj4gPiA+ID4gPiA+ID4gK3sK
PiA+PiA+ID4gPiA+ID4gPiArICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBmdW5jLT5k
ZXYub2Zfbm9kZTsKPiA+PiA+ID4gPiA+ID4gPiArICAgICAgIHN0cnVjdCB3Znhfc2Rpb19wcml2
ICpidXM7Cj4gPj4gPiA+ID4gPiA+ID4gKyAgICAgICBpbnQgcmV0Owo+ID4+ID4gPiA+ID4gPiA+
ICsKPiA+PiA+ID4gPiA+ID4gPiArICAgICAgIGlmIChmdW5jLT5udW0gIT0gMSkgewo+ID4+ID4g
PiA+ID4gPiA+ICsgZGV2X2VycigmZnVuYy0+ZGV2LCAiU0RJTyBmdW5jdGlvbiBudW1iZXIgaXMg
JWQgd2hpbGUKPiA+PiA+ID4gPiA+ID4gPiBpdCBzaG91bGQgYWx3YXlzIGJlIDEgKHVuc3VwcG9y
dGVkIGNoaXA/KVxuIiwKPiA+PiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBm
dW5jLT5udW0pOwo+ID4+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RF
VjsKPiA+PiA+ID4gPiA+ID4gPiArICAgICAgIH0KPiA+PiA+ID4gPiA+ID4gPiArCj4gPj4gPiA+
ID4gPiA+ID4gKyAgICAgICBidXMgPSBkZXZtX2t6YWxsb2MoJmZ1bmMtPmRldiwgc2l6ZW9mKCpi
dXMpLCBHRlBfS0VSTkVMKTsKPiA+PiA+ID4gPiA+ID4gPiArICAgICAgIGlmICghYnVzKQo+ID4+
ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+PiA+ID4gPiA+
ID4gPiArCj4gPj4gPiA+ID4gPiA+ID4gKyAgICAgICBpZiAoIW5wIHx8ICFvZl9tYXRjaF9ub2Rl
KHdmeF9zZGlvX29mX21hdGNoLCBucCkpIHsKPiA+PiA+ID4gPiA+ID4gPiArIGRldl93YXJuKCZm
dW5jLT5kZXYsICJubyBjb21wYXRpYmxlIGRldmljZSBmb3VuZCBpbgo+ID4+ID4gPiA+ID4gPiA+
IERUXG4iKTsKPiA+PiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7
Cj4gPj4gPiA+ID4gPiA+ID4gKyAgICAgICB9Cj4gPj4gPiA+ID4gPiA+ID4gKwo+ID4+ID4gPiA+
ID4gPiA+ICsgICAgICAgYnVzLT5mdW5jID0gZnVuYzsKPiA+PiA+ID4gPiA+ID4gPiArICAgICAg
IGJ1cy0+b2ZfaXJxID0gaXJxX29mX3BhcnNlX2FuZF9tYXAobnAsIDApOwo+ID4+ID4gPiA+ID4g
PiA+ICsgICAgICAgc2Rpb19zZXRfZHJ2ZGF0YShmdW5jLCBidXMpOwo+ID4+ID4gPiA+ID4gPiA+
ICsgICAgICAgZnVuYy0+Y2FyZC0+cXVpcmtzIHw9IE1NQ19RVUlSS19MRU5JRU5UX0ZOMCB8Cj4g
Pj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTU1DX1FVSVJLX0JM
S1NaX0ZPUl9CWVRFX01PREUgfAo+ID4+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIE1NQ19RVUlSS19CUk9LRU5fQllURV9NT0RFXzUxMjsKPiA+PiA+ID4gPiA+ID4K
PiA+PiA+ID4gPiA+ID4gSSB3b3VsZCByYXRoZXIgc2VlIHRoYXQgeW91IGFkZCBhbiBTRElPX0ZJ
WFVQIGZvciB0aGUgU0RJTyBjYXJkLCB0bwo+ID4+ID4gPiA+ID4gPiB0aGUgc2Rpb19maXh1cF9t
ZXRob2RzW10sIGluIGRyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmgsIGluc3RlYWQgb2YKPiA+PiA+
ID4gPiA+ID4gdGhpcy4KPiA+PiA+ID4gPiA+Cj4gPj4gPiA+ID4gPiBJbiB0aGUgY3VycmVudCBw
YXRjaCwgdGhlc2UgcXVpcmtzIGFyZSBhcHBsaWVkIG9ubHkgaWYgdGhlIGRldmljZSBhcHBlYXJz
Cj4gPj4gPiA+ID4gPiBpbiB0aGUgZGV2aWNlIHRyZWUgKHNlZSB0aGUgY29uZGl0aW9uIGFib3Zl
KS4gSWYgSSBpbXBsZW1lbnQgdGhlbSBpbgo+ID4+ID4gPiA+ID4gZHJpdmVycy9tbWMvY29yZS9x
dWlya3MuaCB0aGV5IHdpbGwgYmUgYXBwbGllZCBhcyBzb29uIGFzIHRoZSBkZXZpY2UgaXMKPiA+
PiA+ID4gPiA+IGRldGVjdGVkLiBJcyBpdCB3aGF0IHdlIHdhbnQ/Cj4gPj4gPiA+ID4gPgo+ID4+
ID4gPiA+ID4gTm90ZTogd2UgYWxyZWFkeSBoYXZlIGhhZCBhIGRpc2N1c3Npb24gYWJvdXQgdGhl
IHN0cmFuZ2UgVklEL1BJRCBkZWNsYXJlZAo+ID4+ID4gPiA+ID4gYnkgdGhpcyBkZXZpY2U6Cj4g
Pj4gPiA+ID4gPiAgIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL25ldGRldi9tc2c2OTI1
NzcuaHRtbAo+ID4+ID4gPiA+Cj4gPj4gPiA+ID4gWWVzLCB2ZW5kb3IgaWQgMHgwMDAwIGlzIGlu
dmFsaWQgcGVyIFNESU8gc3BlYy4gU28gYmFzZWQgb24gdGhpcyB2ZW5kb3IKPiA+PiA+ID4gPiBp
ZCwgaXQgaXMgbm90IHBvc3NpYmxlIHRvIHdyaXRlIGFueSBxdWlyayBpbiBtbWMvc2RpbyBnZW5l
cmljIGNvZGUuCj4gPj4gPiA+ID4KPiA+PiA+ID4gPiBVbGYsIGJ1dCBtYXliZSBpdCBjb3VsZCBi
ZSBwb3NzaWJsZSB0byB3cml0ZSBxdWlyayBiYXNlZCBvbiBPRgo+ID4+ID4gPiA+IGNvbXBhdGli
bGUgc3RyaW5nPwo+ID4+ID4gPgo+ID4+ID4gPiBZZXMsIHRoYXQgd291bGQgYmUgYmV0dGVyIGlu
IG15IG9waW5pb24uCj4gPj4gPiA+Cj4gPj4gPiA+IFdlIGFscmVhZHkgaGF2ZSBEVCBiaW5kaW5n
cyB0byBkZXNjcmliZSBlbWJlZGRlZCBTRElPIGNhcmRzIChhIHN1Ym5vZGUKPiA+PiA+ID4gdG8g
dGhlIG1tYyBjb250cm9sbGVyIG5vZGUpLCBzbyB3ZSBzaG91bGQgYmUgYWJsZSB0byBleHRlbmQg
dGhhdCBJCj4gPj4gPiA+IHRoaW5rLgo+ID4+ID4KPiA+PiA+IFNvLCB0aGlzIGZlYXR1cmUgZG9l
cyBub3QgeWV0IGV4aXN0PyBEbyB5b3UgY29uc2lkZXIgaXQgaXMgYSBibG9ja2VyIGZvcgo+ID4+
ID4gdGhlIGN1cnJlbnQgcGF0Y2g/Cj4gPj4gCj4gPj4gWWVzLCBzb3JyeS4gSSB0aGluayB3ZSBz
aG91bGQgYXZvaWQgdW5uZWNlc3NhcnkgaGFja3MgaW4gU0RJTyBmdW5jCj4gPj4gZHJpdmVycywg
ZXNwZWNpYWxseSB0aG9zZSB0aGF0IGRlc2VydmUgdG8gYmUgZml4ZWQgaW4gdGhlIG1tYyBjb3Jl
Lgo+ID4+IAo+ID4+IE1vcmVvdmVyLCB3ZSBhbHJlYWR5IHN1cHBvcnQgdGhlIHNpbWlsYXIgdGhp
bmcgZm9yIGVNTUMgY2FyZHMsIHBsdXMKPiA+PiB0aGF0IG1vc3QgcGFydHMgYXJlIGFscmVhZHkg
ZG9uZSBmb3IgU0RJTyB0b28uCj4gPj4gCj4gPj4gPgo+ID4+ID4gVG8gYmUgaG9uZXN0LCBJIGRv
bid0IHJlYWxseSB3YW50IHRvIHRha2Ugb3ZlciB0aGlzIGNoYW5nZSBpbiBtbWMvY29yZS4KPiA+
PiAKPiA+PiBJIHVuZGVyc3RhbmQuIEFsbG93IG1lIGEgY291cGxlIG9mIGRheXMsIHRoZW4gSSBj
YW4gcG9zdCBhIHBhdGNoIHRvCj4gPj4gaGVscCB5b3Ugb3V0Lgo+ID4KPiA+IEdyZWF0ISBUaGFu
ayB5b3UuIEkgYXBvbG9naXplIGZvciB0aGUgZXh0cmEgd29yayBkdWUgdG8gdGhpcyBpbnZhbGlk
Cj4gPiB2ZW5kb3IgaWQuCj4gCj4gQlRXIHBsZWFzZSBlc2NhbGF0ZSBpbiB5b3VyIGNvbXBhbnkg
aG93IEhPUlJJQkxFIGl0IGlzIHRoYXQgeW91Cj4gbWFudWZhY3R1cmUgU0RJTyBkZXZpY2VzIHdp
dGhvdXQgcHJvcGVyIGRldmljZSBpZHMsIGFuZCBtYWtlIHN1cmUgdGhhdAo+IGFsbCB5b3VyIGZ1
dHVyZSBkZXZpY2VzIGhhdmUgb2ZmaWNpYWxseSBhc3NpZ25lZCBpZHMuIEkgY2Fubm90IHN0cmVz
cwo+IGVub3VnaCBob3cgaW1wb3J0YW50IHRoYXQgaXMgZm9yIHRoZSBMaW51eCBjb21tdW5pdHkh
CgpBYnNvbHV0ZWx5ISBQbGVhc2UgcmVhbGx5IGVzY2FsYXRlIHRoaXMgcHJvYmxlbSBpbiB5b3Vy
IGNvbXBhbnkgYW5kCnByb3Blcmx5IGFzayBVU0ItSUYgZm9yIGFzc2lnbmluZyBQQ01DSUEgdmVu
ZG9yIElEIGFzIFVTQi1JRiBtYWludGFpbnMKUENNQ0lBIHZlbmRvciBkYXRhYmFzZSBhbmQgUENN
Q0lBIGlkcyBhcmUgdXNlZCBpbiBTRElPIGRldmljZXM6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LW1tYy8yMDIxMDYwNzE0MDIxNi42NGl1cHJwM3NpZ2dzbHJrQHBhbGkvCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
