Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEC64250C1
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 12:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3ECC8419E;
	Thu,  7 Oct 2021 10:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7t3z4qmkJHNb; Thu,  7 Oct 2021 10:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C35CD840B5;
	Thu,  7 Oct 2021 10:10:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98F931BF2B1
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 845B560754
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 10:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dAmgHiLtgUt9 for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 10:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 753566071A
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 10:10:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 97909610EA;
 Thu,  7 Oct 2021 10:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633601405;
 bh=Dv3qgGnXN5hf3/aR7Ya39BbKuSxyHbv2DT0bSXt0WUU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EU/xBtuIlE9aHhOu1bi02mIAyV71Vv0ij2ZszvgT9cOyeyl2HZCR9osGMmPqSs7TI
 QdR5zFBc2o4JyTRFcYMlHF9WUaUnF9sIXJw9Pri6tVWG8PV19AuhUDl4txxE0f3/Bs
 DTOVDZdowRBa7Fq863R9rXJPA7HIhaR6CpzpmzjMAn4ZiB+rlLQCSOoZM+1QC3GC6V
 tisoKT4jGORLgEXbQb7FPzXcWvYDzlBTNnVc/yortQ1RcOvFTpTz361L3C6UASKJP0
 Q2gtn+n9Qq/BQqRCS1+ERJHA9XE8tVRBxVMxO45IvxVARQHAcjVMcduuvc2nq0xXev
 Fvw6FuE7kpgcg==
Received: by pali.im (Postfix)
 id 499CF81A; Thu,  7 Oct 2021 12:10:03 +0200 (CEST)
Date: Thu, 7 Oct 2021 12:10:03 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
Message-ID: <20211007101003.na5rdtildnatx432@pali>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <2174509.SLDT7moDbM@pc-42> <20211001160832.ozxc7bhlwlmjeqbo@pali>
 <19961646.Mslci0rqIs@pc-42> <87lf35ckn5.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lf35ckn5.fsf@codeaurora.org>
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
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1cnNkYXkgMDcgT2N0b2JlciAyMDIxIDExOjE5OjEwIEthbGxlIFZhbG8gd3JvdGU6Cj4g
SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cj4g
Cj4gPiBPbiBGcmlkYXkgMSBPY3RvYmVyIDIwMjEgMTg6MDg6MzIgQ0VTVCBQYWxpIFJvaMOhciB3
cm90ZToKPiA+PiBPbiBGcmlkYXkgMDEgT2N0b2JlciAyMDIxIDE3OjA5OjQxIErDqXLDtG1lIFBv
dWlsbGVyIHdyb3RlOgo+ID4+ID4gT24gRnJpZGF5IDEgT2N0b2JlciAyMDIxIDEzOjU4OjM4IENF
U1QgS2FsbGUgVmFsbyB3cm90ZToKPiA+PiA+ID4gSmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91
aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgo+ID4+ID4gPgo+ID4+ID4gPiA+IEZyb206IErDqXLD
tG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KPiA+PiA+ID4gPgo+ID4+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJA
c2lsYWJzLmNvbT4KPiA+PiA+ID4KPiA+PiA+ID4gWy4uLl0KPiA+PiA+ID4KPiA+PiA+ID4gPiAr
c3RhdGljIGludCBnZXRfZmlybXdhcmUoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBrZXlzZXRf
Y2hpcCwKPiA+PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGZpcm13
YXJlICoqZncsIGludCAqZmlsZV9vZmZzZXQpCj4gPj4gPiA+ID4gK3sKPiA+PiA+ID4gPiArICAg
ICBpbnQga2V5c2V0X2ZpbGU7Cj4gPj4gPiA+ID4gKyAgICAgY2hhciBmaWxlbmFtZVsyNTZdOwo+
ID4+ID4gPiA+ICsgICAgIGNvbnN0IGNoYXIgKmRhdGE7Cj4gPj4gPiA+ID4gKyAgICAgaW50IHJl
dDsKPiA+PiA+ID4gPiArCj4gPj4gPiA+ID4gKyAgICAgc25wcmludGYoZmlsZW5hbWUsIHNpemVv
ZihmaWxlbmFtZSksICIlc18lMDJYLnNlYyIsCj4gPj4gPiA+ID4gKyAgICAgICAgICAgICAgd2Rl
di0+cGRhdGEuZmlsZV9mdywga2V5c2V0X2NoaXApOwo+ID4+ID4gPiA+ICsgICAgIHJldCA9IGZp
cm13YXJlX3JlcXVlc3Rfbm93YXJuKGZ3LCBmaWxlbmFtZSwgd2Rldi0+ZGV2KTsKPiA+PiA+ID4g
PiArICAgICBpZiAocmV0KSB7Cj4gPj4gPiA+ID4gKyAgICAgICAgICAgICBkZXZfaW5mbyh3ZGV2
LT5kZXYsICJjYW4ndCBsb2FkICVzLCBmYWxsaW5nIGJhY2sgdG8gJXMuc2VjXG4iLAo+ID4+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgZmlsZW5hbWUsIHdkZXYtPnBkYXRhLmZpbGVfZncp
Owo+ID4+ID4gPiA+ICsgICAgICAgICAgICAgc25wcmludGYoZmlsZW5hbWUsIHNpemVvZihmaWxl
bmFtZSksICIlcy5zZWMiLAo+ID4+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgd2Rldi0+
cGRhdGEuZmlsZV9mdyk7Cj4gPj4gPiA+ID4gKyAgICAgICAgICAgICByZXQgPSByZXF1ZXN0X2Zp
cm13YXJlKGZ3LCBmaWxlbmFtZSwgd2Rldi0+ZGV2KTsKPiA+PiA+ID4gPiArICAgICAgICAgICAg
IGlmIChyZXQpIHsKPiA+PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgZGV2X2Vycih3ZGV2
LT5kZXYsICJjYW4ndCBsb2FkICVzXG4iLCBmaWxlbmFtZSk7Cj4gPj4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICpmdyA9IE5VTEw7Cj4gPj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHJldHVybiByZXQ7Cj4gPj4gPiA+ID4gKyAgICAgICAgICAgICB9Cj4gPj4gPiA+ID4gKyAgICAg
fQo+ID4+ID4gPgo+ID4+ID4gPiBIb3cgaXMgdGhpcyBmaXJtd2FyZSBmaWxlIGxvYWRpbmcgc3Vw
cG9zZWQgdG8gd29yaz8gSWYgSSdtIHJlYWRpbmcgdGhlCj4gPj4gPiA+IGNvZGUgcmlnaHQsIHRo
ZSBkcml2ZXIgdHJpZXMgdG8gbG9hZCBmaWxlICJ3Zm1fd2YyMDBfPz8uc2VjIiBidXQgaW4KPiA+
PiA+ID4gbGludXgtZmlybXdhcmUgdGhlIGZpbGUgaXMgc2lsYWJzL3dmbV93ZjIwMF9DMC5zZWM6
Cj4gPj4gPiA+Cj4gPj4gPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlLmdpdC90cmVlL3NpbGFicwo+ID4+ID4g
Pgo+ID4+ID4gPiBUaGF0IGNhbid0IHdvcmsgYXV0b21hdGljYWxseSwgdW5sZXNzIEknbSBtaXNz
aW5nIHNvbWV0aGluZyBvZiBjb3Vyc2UuCj4gPj4gPgo+ID4+ID4gVGhlIGZpcm13YXJlIGFyZSBz
aWduZWQuICJDMCIgaXMgdGhlIGtleSB1c2VkIHRvIHNpZ24gdGhpcyBmaXJtd2FyZS4gVGhpcwo+
ID4+ID4ga2V5IG11c3QgbWF0Y2ggd2l0aCB0aGUga2V5IGJ1cm5lZCBpbnRvIHRoZSBjaGlwLiBG
b3J0dW5hdGVseSwgdGhlIGRyaXZlcgo+ID4+ID4gaXMgYWJsZSB0byByZWFkIHRoZSBrZXkgYWNj
ZXB0ZWQgYnkgdGhlIGNoaXAgYW5kIGF1dG9tYXRpY2FsbHkgY2hvb3NlIHRoZQo+ID4+ID4gcmln
aHQgZmlybXdhcmUuCj4gPj4gPgo+ID4+ID4gV2UgY291bGQgaW1hZ2luZSB0byBhZGQgYSBhdHRy
aWJ1dGUgaW4gdGhlIERUIHRvIGNob29zZSB0aGUgZmlybXdhcmUgdG8KPiA+PiA+IGxvYWQuIEhv
d2V2ZXIsIGl0IHdvdWxkIGJlIGEgcGl0eSB0byBoYXZlIHRvIHNwZWNpZnkgaXQgbWFudWFsbHkg
d2hlcmVhcwo+ID4+ID4gdGhlIGRyaXZlciBpcyBhYmxlIHRvIGRldGVjdCBpdCBhdXRvbWF0aWNh
bGx5Lgo+ID4+ID4KPiA+PiA+IEN1cnJlbnRseSwgdGhlIG9ubHkgcG9zc2libGUga2V5IGlzIEMw
LiBIb3dldmVyLCBpdCBleGlzdHMgc29tZSBpbnRlcm5hbAo+ID4+ID4gcGFydHMgd2l0aCBvdGhl
ciBrZXlzLiBJbiBhZGRpdGlvbiwgaXQgaXMgdGhlb3JldGljYWxseSBwb3NzaWJsZSB0byBhc2sK
PiA+PiA+IHRvIFNpbGFicyB0byBidXJuIHBhcnRzIHdpdGggYSBzcGVjaWZpYyBrZXkgaW4gb3Jk
ZXIgdG8gaW1wcm92ZSBzZWN1cml0eQo+ID4+ID4gb2YgYSBwcm9kdWN0Lgo+ID4+ID4KPiA+PiA+
IE9idmlvdXNseSwgZm9yIG5vdywgdGhpcyBmZWF0dXJlIG1haW5seSBleGlzdHMgZm9yIHRoZSBT
aWxhYnMgZmlybXdhcmUKPiA+PiA+IGRldmVsb3BlcnMgd2hvIGhhdmUgdG8gd29yayB3aXRoIG90
aGVyIGtleXMuCj4gPj4gPgo+ID4+ID4gPiBBbHNvIEkgd291bGQgcHJlZmVyIHRvIHVzZSBkaXJl
Y3RvcnkgbmFtZSBhcyB0aGUgZHJpdmVyIG5hbWUgd2Z4LCBidXQgSQo+ID4+ID4gPiBndWVzcyBz
aWxhYnMgaXMgYWxzbyBkb2FibGUuCj4gPj4gPgo+ID4+ID4gSSBoYXZlIG5vIG9waW5pb24uCj4g
Pj4gPgo+ID4+ID4KPiA+PiA+ID4gQWxzbyBJJ20gbm90IHNlZWluZyB0aGUgUERTIGZpbGVzIGlu
IGxpbnV4LWZpcm13YXJlLiBUaGUgaWRlYSBpcyB0aGF0Cj4gPj4gPiA+IHdoZW4gdXNlciBpbnN0
YWxscyBhbiB1cHN0cmVhbSBrZXJuZWwgYW5kIHRoZSBsaW51eC1maXJtd2FyZSBldmVyeXRoaW5n
Cj4gPj4gPiA+IHdpbGwgd29yayBhdXRvbWF0aWNhbGx5LCB3aXRob3V0IGFueSBtYW51YWwgZmls
ZSBpbnN0YWxsYXRpb25zLgo+ID4+ID4KPiA+PiA+IFdGMjAwIGlzIGp1c3QgYSBjaGlwLiBTb21l
b25lIGhhcyB0byBkZXNpZ24gYW4gYW50ZW5uYSBiZWZvcmUgdG8gYmUgYWJsZQo+ID4+ID4gdG8g
dXNlLgo+ID4+ID4KPiA+PiA+IEhvd2V2ZXIsIHdlIGhhdmUgZXZhbHVhdGlvbiBib2FyZHMgdGhh
dCBoYXZlIGFudGVubmFzIGFuZCBjb3JyZXNwb25kaW5nCj4gPj4gPiBQRFMgZmlsZXNbMV0uIE1h
eWJlIGxpbnV4LWZpcm13YXJlIHNob3VsZCBpbmNsdWRlIHRoZSBQRFMgZm9yIHRoZXNlIGJvYXJk
cwo+ID4+IAo+ID4+IFNvIGNoaXAgdmVuZG9yIHByb3ZpZGVzIGZpcm13YXJlIGFuZCBjYXJkIHZl
bmRvciBwcm92aWRlcyBQRFMgZmlsZXMuCj4gPgo+ID4gRXhhY3RseS4KPiA+Cj4gPj4gSW4KPiA+
PiBteSBvcGluaW9uIGFsbCBmaWxlcyBzaG91bGQgZ28gaW50byBsaW51eC1maXJtd2FyZSByZXBv
c2l0b3J5LiBJZiBTaWxhYnMKPiA+PiBoYXMgUERTIGZpbGVzIGZvciBpdHMgZGV2ZWwgYm9hcmRz
ICh3aGljaCBhcmUgYmFzaWNhbGx5IGNhcmRzKSB0aGVuIEkKPiA+PiB0aGluayB0aGVzZSBmaWxl
cyBzaG91bGQgZ28gYWxzbyBpbnRvIGxpbnV4LWZpcm13YXJlIHJlcG9zaXRvcnkuCj4gPj4gCj4g
Pj4gQW5kIGJhc2VkIG9uIHNvbWUgcGFyYW1ldGVyLCBkcml2ZXIgc2hvdWxkIGxvYWQgY29ycmVj
dCBQRFMgZmlsZS4gU2VlbXMKPiA+PiBsaWtlIERUIGNhbiBiZSBhIHBsYWNlIHdoZXJlIHRvIHB1
dCBzb21ldGhpbmcgd2hpY2ggaW5kaWNhdGVzIHdoaWNoIFBEUwo+ID4+IGZpbGUgc2hvdWxkIGJl
IHVzZWQuCj4gPj4gCj4gPj4gQnV0IHNob3VsZCBiZSBpbiBEVCBkaXJlY3RseSBuYW1lIG9mIFBE
UyBmaWxlPyBPciBzaG91bGQgYmUgaW4gRFQganVzdAo+ID4+IGFkZGl0aW9uYWwgY29tcGF0aWJs
ZSBzdHJpbmcgd2l0aCBjYXJkIHZlbmRvciBuYW1lIGFuZCB0aGVuIGluIGRyaXZlcgo+ID4+IGl0
c2VsZiBzaG91bGQgYmUgbWFwcGluZyB0YWJsZSBmcm9tIGNvbXBhdGlibGUgc3RyaW5nIHRvIGZp
bGVuYW1lPyBJIGRvCj4gPj4gbm90IGtub3cgd2hhdCBpcyBiZXR0ZXIuCj4gPgo+ID4gVGhlIERU
IGFscmVhZHkgYWNjZXB0cyB0aGUgYXR0cmlidXRlIHNpbGFicyxhbnRlbm5hLWNvbmZpZy1maWxl
IChzZWUKPiA+IHBhdGNoICMyKS4KPiA+Cj4gPiBJIHRoaW5rIHRoYXQgbGludXgtZmlybXdhcmUg
cmVwb3NpdG9yeSB3aWxsIHJlamVjdCB0aGUgcGRzIGZpbGVzIGlmCj4gPiBubyBkcml2ZXIgaW4g
dGhlIGtlcm5lbCBkaXJlY3RseSBwb2ludCB0byBpdC4gRWxzZSBob3cgdG8gZGV0ZWN0Cj4gPiBv
cnBoYW5zPwo+IAo+IFRoaXMgKGxpbnV4LWZpcm13YXJlIHJlamVjdGluZyBmaWxlcykgaXMgbmV3
cyB0byBtZSwgZG8geW91IGhhdmUgYW55Cj4gcG9pbnRlcnM/CgpJIHVuZGVyc3RhbmQgdGhpcyBh
cywgbGludXgtZmlybXdhcmUgcmVqZWN0cyBmaWxlcyB3aGljaCBhcmUgbm90IHVzZWQgYnkKYW55
IGRyaXZlciB5ZXQuCgpCdXQgeW91IGNhbiBzZW5kIGJvdGggcHVsbCByZXF1ZXN0IGZvciBsaW51
eC1maXJtd2FyZSBhbmQgcHVsbCByZXF1ZXN0CmZvciB5b3VyIGtlcm5lbCBkcml2ZXIgdG8gbWFp
bGluZyBsaXN0cy4gQW5kIG9uY2UgZHJpdmVyIGNoYW5nZXMgYXJlCm1lcmdlZCBpbnRvIC1uZXQg
dHJlZSB0aGVuIHB1bGwgcmVxdWVzdCBmb3IgbGludXgtZmlybXdhcmUgY2FuIGJlIG1lcmdlZAp0
b28uCgo+ID4gU28sIEkgdGhpbmsgaXQgaXMgc2xpZ2h0bHkgYmV0dGVyIHRvIHVzZSBhIG1hcHBp
bmcgdGFibGUuCj4gCj4gTm90IGZvbGxvd2luZyB5b3UgaGVyZS4KCkkgdW5kZXJzdGFuZCB0aGlz
IHBhcnQgdG8gaGF2ZSBtYXBwaW5nIHRhYmxlIGJldHdlZW4gRFRTIGNvbXBhdGlibGUKc3RyaW5n
IGFuZCBwZHMgZmlybXdhcmUgbmFtZSBpbiBkcml2ZXIgY29kZS4KCj4gLS0gCj4gaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCj4gCj4gaHR0
cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9u
L3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
