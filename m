Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A92F61DF5BE
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 May 2020 09:48:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41F5A88653;
	Sat, 23 May 2020 07:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OPzUZn4Y+DCg; Sat, 23 May 2020 07:48:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C21488617;
	Sat, 23 May 2020 07:48:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90ED81BF288
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 07:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7D3062039D
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 07:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GCKW1Kh2IlK7 for <devel@linuxdriverproject.org>;
 Sat, 23 May 2020 07:48:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail37c50.megamailservers.eu (mail231c50.megamailservers.eu
 [91.136.10.241])
 by silver.osuosl.org (Postfix) with ESMTPS id 5F0C92039C
 for <devel@driverdev.osuosl.org>; Sat, 23 May 2020 07:48:02 +0000 (UTC)
X-Authenticated-User: 017623705678@o2online.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1590220080;
 bh=DN0ROQEaCqnxRVKpv6MDhbIDUAf3VFRkVOIz1J1AS0k=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=nsrsABSSaE0fo+k0jVDxjNT6nI+3CoBDBOjSNkdUo/C4cacluzPT0xD/qPWvj9v4k
 sTGpDydDkOLTAQwqSAWbIX/dCPWqhWWxTNk84AArFc43juMefa9Ca7UPtsJ5Oi4KI5
 VPHtFmI88pxkruw9T9cPZWLi1AXxodnV0pCX/T8M=
Feedback-ID: 017623705678@o2
Received: from [192.168.2.2]
 (dslb-178-011-017-047.178.011.pools.vodafone-ip.de [178.11.17.47])
 (authenticated bits=0)
 by mail37c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 04N7lvdn004739; 
 Sat, 23 May 2020 07:47:58 +0000
Subject: Re: RTL8723BS driver doesn't work for,me but I can help testing
From: Tobias Baumann <017623705678@o2online.de>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <bcefba5b-107c-716b-bb60-5b4b2476894b@o2online.de>
 <CAFBinCD8-tr97GCVhBi5R1nzxLhy=_6VuLY8ubUO1SDTFjiELw@mail.gmail.com>
 <22af498b-44a0-ced3-86f3-114427a73910@o2online.de>
 <CAFBinCCGAkhPCwOW=mAvsV2qdixq8Gf8yQw1gYErHpz7KmuAZg@mail.gmail.com>
 <5de6db87-a71f-d14c-390d-b0caeab5d650@o2online.de>
 <CAFBinCDB9c2uMRXO9DKSX4hC7EBgnRfBa+BM5-VdEPZeieKn_w@mail.gmail.com>
 <813dfc08-f13a-dcac-0bd9-821d188bba08@o2online.de>
 <CAFBinCCgZF5Pu944q-_+V0yQ-nc6q82xDjJHjsnj6=uOQL+DEw@mail.gmail.com>
 <8cbbf90c-54ba-8fa3-3386-022c9c997a20@o2online.de>
 <CAFBinCBukGbzgO-Y1dCRYXZHhX2PcSEQQ_XvhHqLcnw0fGDP8w@mail.gmail.com>
 <a95f5fe1-4376-f872-961a-c2237c36811c@o2online.de>
 <CAFBinCCgFtv=u4ZKW3rdoDPZ_jh3jU03MDxHoDk=pbi+4pxB_w@mail.gmail.com>
 <c244b34f-8958-0cbd-38e6-a786aef56e7c@o2online.de>
 <CAFBinCDvwy7xCYdJzRHV0ACJ=CF+A5efD-WpPvyE62gfUribUw@mail.gmail.com>
 <fb9d8d57-2958-4023-2a95-af240714d5df@o2online.de>
Message-ID: <5e576561-f119-e9cc-688b-085d84d78b34@o2online.de>
Date: Sat, 23 May 2020 09:47:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <fb9d8d57-2958-4023-2a95-af240714d5df@o2online.de>
Content-Language: de-DE
X-Antivirus: AVG (VPS 200522-0, 22.05.2020), Outbound message
X-Antivirus-Status: Clean
X-CTCH-RefID: str=0001.0A782F18.5EC8D4C2.000D, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=bJNo382Z c=1 sm=1 tr=0 a=cfXdPu6Ul6OsnrHrce2WRQ==:117
 a=cfXdPu6Ul6OsnrHrce2WRQ==:17 a=IkcTkHD0fZMA:10 a=9AdMxfjQAAAA:20
 a=tRq-XDIbAAAA:20 a=oCcaPWc0AAAA:8 a=ZtR4bvJMnFn1KTMmwqEA:9
 a=QEXdDO2ut3YA:10
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UmVzZW5kIGh0bWwtZm9ybWF0IHdhcyBpbnNpZGUgZW1haWwKCkFtIDIxLjA1LjIwMjAgdW0gMTM6
MTcgc2NocmllYiBUb2JpYXMgQmF1bWFubjoKPgo+IEhpIE1hcnRpbgo+Cj4gZmlyc3Qgb2YgYWxs
IHNvcnJ5IGZvciBteSBzaG9ydCBlbmdsaXNoIHdyaXRpbmcKPgo+Cj4gQW0gMTkuMDUuMjAyMCB1
bSAyMjoxNiBzY2hyaWViIE1hcnRpbiBCbHVtZW5zdGluZ2w6Cj4+IEhpIFRvYmlhcywKPj4KPj4g
T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgODoyMSBBTSBUb2JpYXMgQmF1bWFubjwwMTc2MjM3MDU2
NzhAbzJvbmxpbmUuZGU+ICB3cm90ZToKPj4+IGdvb2QgbW9ybmluZwo+Pj4KPj4+IGkgZ290IHRo
ZSBuZXcgaW1hZ2UgZnJvbSBvbGVnKGJhbGJlczE1MCkgMjAyMDA1MTggUkM1ICBhbmQgc29tZSBt
b3JlCj4+PiBmZWVkYmFjawo+Pj4KPj4+IHdpdGggbXkgcGF0Y2ggYW5kIG9sZWcgUkM1IGhvdHN0
YXJ0KHNodXRkb3duIG5vdykgIGRvIG5vdCB3b3JrIHdpdGggbXkKPj4+IGJveCAoIHdsYW4gZ29l
cyBiYWNrIHRvIHNsZWVwIG1vZGUgYWx3YXlzKQo+PiBJJ20gbm90IHN1cmUgd2hhdCB5b3UgbWVh
biBoZXJlLgo+PiBpZiB5b3UgcnVuICJzaHV0ZG93biBub3ciIHRoZW4gdGhlIHN5c3RlbSBkb2Vz
IG5vdCBzaHV0IGRvd24gYW5kIG9ubHkKPj4gd2lmaSBnb2VzIHRvIHNsZWVwIG1vZGU/Cj4KPiBp
IG1lYW50wqAgdGhhdCBhZnRlciBhIHJlYm9vdCB3aXRoICJzaHV0ZG93biBub3ciIG15IGJveCBy
ZXN0YXJ0IGJ1dCAKPiB0aGUgd2lmaSBjaGlwIGlzIGJhY2sgaW4gc2xlZXAgbW9kZSAswqAgd2hp
bGUgdGhlIHdpZmkgY2hpcCB3YXMgb25saW5lIAo+IGJlZm9yIHRoZSByZXN0YXJ0IC4KPgo+Cj4+
PiB3aXRoIG15IHBhdGNoIGNoYW5jZSAgMSBvZiA1IHRpbGwgMSBvZiAzIHRoYXQgbXkgd2xhbiBp
cyB1cCBhbmQgbm90Cj4+PiBzbGVlcCBmcm9tIGNvbGQgc3RhcnQKPj4+Cj4+PiB3aXRoIG9sZWcg
Y2hhbmNlIDEgb2YgMiB0aWxsIDFvZiAzIGZyb20gY29sZCBzdGFydCB0aGF0IHdsYW4gaXMgdXAg
IC4KPj4+IChtYXliZSBiZWNhdXNlIG9mIHBoYW5kbGUgb3JkZXI/KQo+Pj4KPj4+IGkgdGhpbmcg
dGhlcmUgaXMgbWF5YmUgYSB0aW1taW5nIHByb2JsZW0gYmV0d2VlbiAgd2xhbiBkaXMgLCBzZGlv
ICBkYXRhCj4+PiBhbmQgIGhvc3Qgd2FrZSB1cCB3bGFuIC4KPj4gdGhlIHBvd2VyIHNlcXVlbmNl
IGRyaXZlciBzdXBwb3J0cyB0aGUgZm9sbG93aW5nIHR3byBwcm9wZXJ0aWVzLCBzZWUgWzBdOgo+
PiAtIHBvc3QtcG93ZXItb24tZGVsYXktbXMKPj4gLSBwb3dlci1vZmYtZGVsYXktdXMKPj4KPj4g
VGhvc2UgYXJlIG5vdCBzZXQsIG1lYW5pbmcgbm8gZGVsYXkgaXMgYXBwbGllZC4KPj4gRm9yIHJl
ZmVyZW5jZSwgdGhlc2UgYXJlIHRoZSBkZWxheXMgd2hpY2ggYXJlIHVzZWQgb24gdGhlIEVuZGxl
c3MgTWluaQo+PiAod2hpY2ggYWxzbyBoYXMgYSBSVEw4NzIzQlMgbW9kdWxlKTogWzFdCj4+IERv
IHlvdSBrbm93IG1vcmUgYWJvdXQgdGhlc2UgZGVsYXlzICh3aGV0aGVyIHRoZXkgYXJlIG5lZWRl
ZCBhbmQgaG93Cj4+IGxvbmcgdGhleSBhcmUgc3VwcG9zZWQgdG8gYmUpPwo+Cj4gwqBpIHJlYWQg
YWxzbyB0aGUgQVA2MzMwIGFuZCBCQ000MzMwIERhdGFzaGVldMKgIGZvciBib3RoIG9mIHRoZW0g
aXMgYSAKPiBzdGFydCBvcmRlciBpbnNpZGUgdGhlIGRhdGFzaGV0ICggaSB0aGluayB0aGF0IFJU
TDg3MjNCUyBzaG91bGQgaGF2ZSAKPiBzYW1lIHRpbW1pbmcpIC4gdGhlIHRpbWUgYmV0d2VlbiAz
MmsgY2xvY2sgYW5kIFdMQU5fZGlzIHNob3VsZCBiZSBtb3JlIAo+IHRoYW4gbWluaW11bSAyIGNs
b2NrIGN5Y2xlICgxLzMya0haICogMmN5Y2xlID0gMC4wNm1zICkKPgo+IGFsc28gdGhhdCBBUDYz
MzAgaGFzIG1vc3QgaWRlbnRpY2FswqAgcGlub3V0IGFzIFJUTDg3MjNCUyAoIGkgZGlkIG5vdCAK
PiBnZXQgdGhlIHBpbm91dCBvZiBCQ000MzMwIGJlY2F1c2UgZGF0YXNoZWV0IG9ubHkgaGFzIGlu
Zm9ybWF0aW9uIHRvIAo+IHRoZSBjaGlwIGFuZCBub3QgdGhlIHNtYWxsIGV4dHJhIHBjYiB3aGVy
ZSB0aGUgY2hpcCBpcyBtb3VudCkKPgo+IG9uIEFuZHJvaWQgNC40IG15IGJveCB0b2xkIG1lIHRo
YXQgR1BJT0FPXzYgaXN0IGNoaXAgZW5hYmxlIGFuZCAKPiBHUElPWF8xMSBpc3Qgd2xhbiBlbmFi
bGUKPgo+IG15YmUgYSBjbHVlIGlzIHRoYXQgaW4gdGhlIEhBcmRrZXJuZWwgUzgwNSBEYXRhc2hl
ZXQgdGhlIEdQSU9BT182IGlzIAo+IGFsc28gYSAzMmsgY2xvY2vCoCBvdXRwdXQgKHNpdGUgNDIg
dGFibGUgMTAgRnVuYzEgbWF5YmXCoCAoYnV0IGkgYWxzbyAKPiBmb3VuZCBzb21lIER0cyBmaWxl
IGZyb20gb2xkIFM4MDUgUlRMODcyM2JzIGJveCB0aGV5IHVzZSBvbmx5IEdQSU9YXzExIAo+IGFu
ZCBwb3dlclBpbjIgd2FzIGNvbW1lbnQgb3V0ICkKPgo+IC0+Cj4KPiBpIGhhdmUgYW5vdGhlciBx
dWVzdGlvbiAsIGRvIHdlIHVzZSB0aGUgc2FtZSB3aWZpLmMgZmlsZSBmb3IgdGhlIAo+IG1lc29u
OG0yIGJveGVzIGFzIGZvciBlbmRsZXNzIG1pbmkgPyBpIGhhdmUgdGFrZW4gYSBjbG9zZXIgbG9v
ayBhdCB0aGUgCj4gZmlsZSBhbmQgdGhlIHR3byBkZWxheSBpbmZvcm1hdGlvbiB5b3UgYXJlIG1l
bnRpb24gYXJlIG5vdMKgIGluIHRoZSAKPiB3aWZpLiBjIGlzIG5laXRoZXIgYSBmdW5jdGlvbiBu
b3IgYW4gaW5zdGFuY2UsIGl0IGp1c3QgdGFrZXMgdHdvIGZpeGVkIAo+IHZhbHVlcyAibWRlbGF5
KDIwMCkiIGxpbmUgMTU2ICwgZnVydGhlcm1vcmUgd2UgaWdub3JlIHRoZSBvdXRwdXQgbGV2ZWwg
Cj4gb2Ygd2lmaV9wb3dlcl9ncGlvMiBhbmQgYXV0b21hdGljYWxseSBzZXQgaXQgdG8gIjEiIGxp
bmUgMzc4ICwgc28gaXQgCj4gaXMgaW1wb3J0YW50IHdoaWNoIG9mIHRoZSB0d28gcGlucyBpcyBw
YXNzZWQgdG8gdGhlIGhlYWRlciBmaWxlIGZpcnN0IAo+ICh0cmFuc2xhdGUgd2l0aCBERUVQTCkK
Pgo+IDwtCj4KPgo+Cj4KPj4+IGl0IGNvdWxkIGJlIHRoYXQgR1BJT0FPXzYgaXMgdGhlIGhvc3Qg
d2FrZSB1cCB3bGFuID8gaXMgaXQgcG9zc2libGUgdG8KPj4+IGNoYW5nZSB0aGUgYWN0aXZhdGlv
biBvcmRlciBmb3IgdGhlIGdwaW8gcGlucyBieSBjaGFuZ2UgaXQgaW4gZHRzID8KPj4gcGxlYXNl
IGNoZWNrIG15IHByZXZpb3VzIG1haWxzLiBJIHRoaW5rIHRoYXQgR1BJT1hfMjEgaXMgdGhlIHdp
ZmkgaG9zdAo+PiB3YWtldXAgcGluIGJlY2F1c2UgaXQgaXMgbWFya2VkIGFzICJpbnB1dCIgb24g
dGhlIDMuMTAga2VybmVsLgo+PiB5b3UgY2FuIGNoYW5nZSB0aGUgb3JkZXIgb2YgdGhlIEdQSU9z
IGluc2lkZSB0aGUgc2Rpb19wd3JzZXEgbm9kZSwgYnV0Cj4+IGFsbCBHUElPcyBhcmUgbWFuYWdl
ZCB0b2dldGhlciAobWVhbmluZyB0aGVyZSdzIHZpcnR1YWxseSBubyBkZWxheQo+PiBiZXR3ZWVu
IGVuYWJsaW5nIHRoZSBmaXJzdCBhbmQgdGhlIHNlY29uZCBvbmUpLgo+PiBJIGFtIG5vdCBzdXJl
IGlmIHVzaW5nIGFuIE1NQyBwb3dlciBzZXF1ZW5jZSBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8s
Cj4+IGJlY2F1c2UgdGhlIGNhcmQgaXMgZGV0ZWN0ZWQgZm9yIG1lIHJlZ2FyZGxlc3Mgb2Ygd2hl
dGhlciBHUElPWF8xMSBpcwo+PiBISUdIIG9yIExPVy4gVGhlIFJUTDg3MjNCUyBkcml2ZXIgY3Vy
cmVudGx5IGRvZXMgbm90IG1hbmFnZSBhbnkgR1BJT3MuCj4+Cj4+Cj4+IE1hcnRpbgo+Pgo+Pgo+
PiBbMF1odHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9jNDc3ZWJlMjFmYWJl
MDAxMGEyZWQzMjRjZTNhMTc2MmM3NTdkODY3L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9tbWMvbW1jLXB3cnNlcS1zaW1wbGUudHh0Cj4+IFsxXWh0dHBzOi8vZ2l0aHViLmNvbS9l
bmRsZXNzbS9saW51eC1tZXNvbi9ibG9iLzRjNzY5OTljNWM3MDdmYmE5YzM5MDQ2NmVmY2EwOTNj
M2JlZmE5MDgvZHJpdmVycy9hbWxvZ2ljL3dpZmkvd2lmaV9kdC5jI0wxNTMKPgo+IFlvdSBhcmUg
cmlnaHQgdGhlIGNoaXAgaGFzIG9ubHkgd2lmaSB3YWtlIGhvc3QgYW5kIHRoYXQgc2hvdWxkIGJl
IAo+IEdQSU9YXzIxIGFzIGlucHV0IDsgbWF5YmUgb24geW91ciBib3ggdGhlIHBpbiBpcyBhbHdh
eSBoaWdoIG9uIHRoZSAKPiBib2FyZMKgICggZGlyZWt0IGFuIDMuM1YgdmVyZHJhaHRldCkKPgo+
Cj4gdGhhbmtzIGZvciB0aGUgaW5mb3JtYXRpb24KPgo+Cj4gVG9iaWFzCj4KCi0tIApEaWVzZSBF
LU1haWwgd3VyZGUgdm9uIEFWRyBhdWYgVmlyZW4gZ2VwcsO8ZnQuCmh0dHA6Ly93d3cuYXZnLmNv
bQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
