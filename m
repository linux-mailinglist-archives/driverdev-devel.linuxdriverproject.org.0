Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778614250CE
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 12:14:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86C64403AE;
	Thu,  7 Oct 2021 10:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 07o_Ysp3BX0F; Thu,  7 Oct 2021 10:13:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F6E54017D;
	Thu,  7 Oct 2021 10:13:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 85F6D1BF2B1
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 745624017D
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j47sPAgYZn-I for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 10:13:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D560400EA
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 10:13:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A6DBD6113E;
 Thu,  7 Oct 2021 10:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633601625;
 bh=kRlcvcbFuHhJuEirwDQ5X9clFRI3p9ivKRaKD8VGIhg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VYCXUey5hK0BTCSnfeqnySTGL/DG4e1RxpN1FhtP7uDqqbCmZ6D2YUqlzSTUU7kPq
 Rzd4EvMqUzLXrWeMgxLdaNumFyFv+yTpik7V6r7maZsu6Y64jCHGd9y2/qoNPGiiLa
 XWxENFVy8w3ToyFnZicsvN2WFbZSEe5u3/qLLAtZt/DmfWo86y8h/0RKU3SskeGdG4
 R2LapygCf2QDX64xjjlz8Je9CLfWrM0Vmv264NewdoDNlih+60GEnFG0sb/PVQ8qWm
 K1NwLl8VUUNI6101Y4Dp3CFMTF71hG+LtdQoslOT30Mu9aFHl3XLAc/bSLco369xJI
 QPmK2NC3FLszg==
Received: by pali.im (Postfix)
 id 8AEFD81A; Thu,  7 Oct 2021 12:13:42 +0200 (CEST)
Date: Thu, 7 Oct 2021 12:13:42 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
Message-ID: <20211007101342.fxl74ud4xra4u3cp@pali>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-11-Jerome.Pouiller@silabs.com>
 <87sfxlj6s1.fsf@codeaurora.org> <2174509.SLDT7moDbM@pc-42>
 <20211001160832.ozxc7bhlwlmjeqbo@pali>
 <87pmshckrm.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pmshckrm.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, Ulf Hansson <ulf.hansson@linaro.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gUm9iISBDb3VsZCB5b3UgbG9vayBhdCBpc3N1ZSBiZWxvdyB0byByZXByZXNlbnQgYW50
ZW5uYSAocGRzKQpmaXJtd2FyZSBmaWxlIHJlcXVpcmVtZW50IGZvciB0aGlzIGRyaXZlciBpbiBE
VFMgZmlsZT8KCk9uIFRodXJzZGF5IDA3IE9jdG9iZXIgMjAyMSAxMToxNjoyOSBLYWxsZSBWYWxv
IHdyb3RlOgo+IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+IHdyaXRlczoKPiAKPiA+IE9u
IEZyaWRheSAwMSBPY3RvYmVyIDIwMjEgMTc6MDk6NDEgSsOpcsO0bWUgUG91aWxsZXIgd3JvdGU6
Cj4gPj4gT24gRnJpZGF5IDEgT2N0b2JlciAyMDIxIDEzOjU4OjM4IENFU1QgS2FsbGUgVmFsbyB3
cm90ZToKPiA+PiA+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+
IHdyaXRlczoKPiA+PiA+IAo+ID4+ID4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21l
LnBvdWlsbGVyQHNpbGFicy5jb20+Cj4gPj4gPiA+Cj4gPj4gPiA+IFNpZ25lZC1vZmYtYnk6IErD
qXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KPiA+PiA+IAo+ID4+
ID4gWy4uLl0KPiA+PiA+IAo+ID4+ID4gPiArc3RhdGljIGludCBnZXRfZmlybXdhcmUoc3RydWN0
IHdmeF9kZXYgKndkZXYsIHUzMiBrZXlzZXRfY2hpcCwKPiA+PiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqKmZ3LCBpbnQgKmZpbGVfb2Zmc2V0KQo+ID4+
ID4gPiArewo+ID4+ID4gPiArICAgICBpbnQga2V5c2V0X2ZpbGU7Cj4gPj4gPiA+ICsgICAgIGNo
YXIgZmlsZW5hbWVbMjU2XTsKPiA+PiA+ID4gKyAgICAgY29uc3QgY2hhciAqZGF0YTsKPiA+PiA+
ID4gKyAgICAgaW50IHJldDsKPiA+PiA+ID4gKwo+ID4+ID4gPiArICAgICBzbnByaW50ZihmaWxl
bmFtZSwgc2l6ZW9mKGZpbGVuYW1lKSwgIiVzXyUwMlguc2VjIiwKPiA+PiA+ID4gKyAgICAgICAg
ICAgICAgd2Rldi0+cGRhdGEuZmlsZV9mdywga2V5c2V0X2NoaXApOwo+ID4+ID4gPiArICAgICBy
ZXQgPSBmaXJtd2FyZV9yZXF1ZXN0X25vd2FybihmdywgZmlsZW5hbWUsIHdkZXYtPmRldik7Cj4g
Pj4gPiA+ICsgICAgIGlmIChyZXQpIHsKPiA+PiA+ID4gKyAgICAgICAgICAgICBkZXZfaW5mbyh3
ZGV2LT5kZXYsICJjYW4ndCBsb2FkICVzLCBmYWxsaW5nIGJhY2sgdG8gJXMuc2VjXG4iLAo+ID4+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgIGZpbGVuYW1lLCB3ZGV2LT5wZGF0YS5maWxlX2Z3
KTsKPiA+PiA+ID4gKyAgICAgICAgICAgICBzbnByaW50ZihmaWxlbmFtZSwgc2l6ZW9mKGZpbGVu
YW1lKSwgIiVzLnNlYyIsCj4gPj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgd2Rldi0+cGRh
dGEuZmlsZV9mdyk7Cj4gPj4gPiA+ICsgICAgICAgICAgICAgcmV0ID0gcmVxdWVzdF9maXJtd2Fy
ZShmdywgZmlsZW5hbWUsIHdkZXYtPmRldik7Cj4gPj4gPiA+ICsgICAgICAgICAgICAgaWYgKHJl
dCkgewo+ID4+ID4gPiArICAgICAgICAgICAgICAgICAgICAgZGV2X2Vycih3ZGV2LT5kZXYsICJj
YW4ndCBsb2FkICVzXG4iLCBmaWxlbmFtZSk7Cj4gPj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAqZncgPSBOVUxMOwo+ID4+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsK
PiA+PiA+ID4gKyAgICAgICAgICAgICB9Cj4gPj4gPiA+ICsgICAgIH0KPiA+PiA+IAo+ID4+ID4g
SG93IGlzIHRoaXMgZmlybXdhcmUgZmlsZSBsb2FkaW5nIHN1cHBvc2VkIHRvIHdvcms/IElmIEkn
bSByZWFkaW5nIHRoZQo+ID4+ID4gY29kZSByaWdodCwgdGhlIGRyaXZlciB0cmllcyB0byBsb2Fk
IGZpbGUgIndmbV93ZjIwMF8/Py5zZWMiIGJ1dCBpbgo+ID4+ID4gbGludXgtZmlybXdhcmUgdGhl
IGZpbGUgaXMgc2lsYWJzL3dmbV93ZjIwMF9DMC5zZWM6Cj4gPj4gPiAKPiA+PiA+IGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Zpcm13YXJlL2xpbnV4LWZp
cm13YXJlLmdpdC90cmVlL3NpbGFicwo+ID4+ID4gCj4gPj4gPiBUaGF0IGNhbid0IHdvcmsgYXV0
b21hdGljYWxseSwgdW5sZXNzIEknbSBtaXNzaW5nIHNvbWV0aGluZyBvZiBjb3Vyc2UuCj4gPj4g
Cj4gPj4gVGhlIGZpcm13YXJlIGFyZSBzaWduZWQuICJDMCIgaXMgdGhlIGtleSB1c2VkIHRvIHNp
Z24gdGhpcyBmaXJtd2FyZS4gVGhpcwo+ID4+IGtleSBtdXN0IG1hdGNoIHdpdGggdGhlIGtleSBi
dXJuZWQgaW50byB0aGUgY2hpcC4gRm9ydHVuYXRlbHksIHRoZSBkcml2ZXIKPiA+PiBpcyBhYmxl
IHRvIHJlYWQgdGhlIGtleSBhY2NlcHRlZCBieSB0aGUgY2hpcCBhbmQgYXV0b21hdGljYWxseSBj
aG9vc2UgdGhlCj4gPj4gcmlnaHQgZmlybXdhcmUuCj4gPj4gCj4gPj4gV2UgY291bGQgaW1hZ2lu
ZSB0byBhZGQgYSBhdHRyaWJ1dGUgaW4gdGhlIERUIHRvIGNob29zZSB0aGUgZmlybXdhcmUgdG8K
PiA+PiBsb2FkLiBIb3dldmVyLCBpdCB3b3VsZCBiZSBhIHBpdHkgdG8gaGF2ZSB0byBzcGVjaWZ5
IGl0IG1hbnVhbGx5IHdoZXJlYXMKPiA+PiB0aGUgZHJpdmVyIGlzIGFibGUgdG8gZGV0ZWN0IGl0
IGF1dG9tYXRpY2FsbHkuCj4gPj4gCj4gPj4gQ3VycmVudGx5LCB0aGUgb25seSBwb3NzaWJsZSBr
ZXkgaXMgQzAuIEhvd2V2ZXIsIGl0IGV4aXN0cyBzb21lIGludGVybmFsCj4gPj4gcGFydHMgd2l0
aCBvdGhlciBrZXlzLiBJbiBhZGRpdGlvbiwgaXQgaXMgdGhlb3JldGljYWxseSBwb3NzaWJsZSB0
byBhc2sKPiA+PiB0byBTaWxhYnMgdG8gYnVybiBwYXJ0cyB3aXRoIGEgc3BlY2lmaWMga2V5IGlu
IG9yZGVyIHRvIGltcHJvdmUgc2VjdXJpdHkKPiA+PiBvZiBhIHByb2R1Y3QuIAo+ID4+IAo+ID4+
IE9idmlvdXNseSwgZm9yIG5vdywgdGhpcyBmZWF0dXJlIG1haW5seSBleGlzdHMgZm9yIHRoZSBT
aWxhYnMgZmlybXdhcmUKPiA+PiBkZXZlbG9wZXJzIHdobyBoYXZlIHRvIHdvcmsgd2l0aCBvdGhl
ciBrZXlzLgo+ID4+ICAKPiA+PiA+IEFsc28gSSB3b3VsZCBwcmVmZXIgdG8gdXNlIGRpcmVjdG9y
eSBuYW1lIGFzIHRoZSBkcml2ZXIgbmFtZSB3ZngsIGJ1dCBJCj4gPj4gPiBndWVzcyBzaWxhYnMg
aXMgYWxzbyBkb2FibGUuCj4gPj4gCj4gPj4gSSBoYXZlIG5vIG9waW5pb24uCj4gPj4gCj4gPj4g
Cj4gPj4gPiBBbHNvIEknbSBub3Qgc2VlaW5nIHRoZSBQRFMgZmlsZXMgaW4gbGludXgtZmlybXdh
cmUuIFRoZSBpZGVhIGlzIHRoYXQKPiA+PiA+IHdoZW4gdXNlciBpbnN0YWxscyBhbiB1cHN0cmVh
bSBrZXJuZWwgYW5kIHRoZSBsaW51eC1maXJtd2FyZSBldmVyeXRoaW5nCj4gPj4gPiB3aWxsIHdv
cmsgYXV0b21hdGljYWxseSwgd2l0aG91dCBhbnkgbWFudWFsIGZpbGUgaW5zdGFsbGF0aW9ucy4K
PiA+PiAKPiA+PiBXRjIwMCBpcyBqdXN0IGEgY2hpcC4gU29tZW9uZSBoYXMgdG8gZGVzaWduIGFu
IGFudGVubmEgYmVmb3JlIHRvIGJlIGFibGUKPiA+PiB0byB1c2UuCj4gPj4gCj4gPj4gSG93ZXZl
ciwgd2UgaGF2ZSBldmFsdWF0aW9uIGJvYXJkcyB0aGF0IGhhdmUgYW50ZW5uYXMgYW5kIGNvcnJl
c3BvbmRpbmcKPiA+PiBQRFMgZmlsZXNbMV0uIE1heWJlIGxpbnV4LWZpcm13YXJlIHNob3VsZCBp
bmNsdWRlIHRoZSBQRFMgZm9yIHRoZXNlIGJvYXJkcwo+ID4KPiA+IFNvIGNoaXAgdmVuZG9yIHBy
b3ZpZGVzIGZpcm13YXJlIGFuZCBjYXJkIHZlbmRvciBwcm92aWRlcyBQRFMgZmlsZXMuIEluCj4g
PiBteSBvcGluaW9uIGFsbCBmaWxlcyBzaG91bGQgZ28gaW50byBsaW51eC1maXJtd2FyZSByZXBv
c2l0b3J5LiBJZiBTaWxhYnMKPiA+IGhhcyBQRFMgZmlsZXMgZm9yIGl0cyBkZXZlbCBib2FyZHMg
KHdoaWNoIGFyZSBiYXNpY2FsbHkgY2FyZHMpIHRoZW4gSQo+ID4gdGhpbmsgdGhlc2UgZmlsZXMg
c2hvdWxkIGdvIGFsc28gaW50byBsaW51eC1maXJtd2FyZSByZXBvc2l0b3J5Lgo+IAo+IEkgYWdy
ZWUsIGFsbCBmaWxlcyByZXF1aXJlZCBmb3Igbm9ybWFsIGZ1bmN0aW9uYWxpdHkgc2hvdWxkIGJl
IGluCj4gbGludXgtZmlybXdhcmUuIFRoZSB1cHN0cmVhbSBwaGlsb3NvcGh5IGlzIHRoYXQgYSB1
c2VyIGNhbiBqdXN0IGluc3RhbGwKPiB0aGUgbGF0ZXN0IGtlcm5lbCBhbmQgbGF0ZXN0IGxpbnV4
LWZpcm13YXJlLCBhbmQgZXZlcnl0aGluZyBzaG91bGQgd29yawo+IG91dCBvZiBib3ggKHdpdGhv
dXQgYW55IG1hbnVhbCB3b3JrKS4KPiAKPiA+IEFuZCBiYXNlZCBvbiBzb21lIHBhcmFtZXRlciwg
ZHJpdmVyIHNob3VsZCBsb2FkIGNvcnJlY3QgUERTIGZpbGUuIFNlZW1zCj4gPiBsaWtlIERUIGNh
biBiZSBhIHBsYWNlIHdoZXJlIHRvIHB1dCBzb21ldGhpbmcgd2hpY2ggaW5kaWNhdGVzIHdoaWNo
IFBEUwo+ID4gZmlsZSBzaG91bGQgYmUgdXNlZC4KPiAKPiBBZ2FpbiBJIGFncmVlLgo+IAo+ID4g
QnV0IHNob3VsZCBiZSBpbiBEVCBkaXJlY3RseSBuYW1lIG9mIFBEUyBmaWxlPyBPciBzaG91bGQg
YmUgaW4gRFQganVzdAo+ID4gYWRkaXRpb25hbCBjb21wYXRpYmxlIHN0cmluZyB3aXRoIGNhcmQg
dmVuZG9yIG5hbWUgYW5kIHRoZW4gaW4gZHJpdmVyCj4gPiBpdHNlbGYgc2hvdWxkIGJlIG1hcHBp
bmcgdGFibGUgZnJvbSBjb21wYXRpYmxlIHN0cmluZyB0byBmaWxlbmFtZT8gSSBkbwo+ID4gbm90
IGtub3cgd2hhdCBpcyBiZXR0ZXIuCj4gCj4gVGhpcyBpcyBhbHNvIHdoYXQgSSB3YXMgd29uZGVy
aW5nLCB0byBtZSBpdCBzb3VuZHMgd3JvbmcgdG8gaGF2ZSBhCj4gZmlsZW5hbWUgaW4gRFQuIEkg
d2FzIG1vcmUgdGhpbmtpbmcgYWJvdXQgY2FsbGluZyBpdCAiYW50ZW5uYSBuYW1lIiAoYW5kCj4g
bm90IHRoZSBhY3R1YWxseSBmaWxlbmFtZSksIGJ1dCB1c2luZyBjb21wYXRpYmxlIHN0cmluZ3Mg
c291bmRzIGdvb2QgdG8KPiBtZSBhcyB3ZWxsLiBCdXQgb2YgY291cnNlIERUIG1haW50YWluZXJz
IGtub3cgdGhpcyBiZXR0ZXIuCj4gCj4gLS0gCj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCj4gCj4gaHR0cHM6Ly93aXJlbGVzcy53aWtp
Lmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
