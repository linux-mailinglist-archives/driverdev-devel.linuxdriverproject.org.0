Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2266C1D8FEC
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 May 2020 08:21:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BAB02262B;
	Tue, 19 May 2020 06:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZRdeCC5K9VD0; Tue, 19 May 2020 06:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 69D8F221DC;
	Tue, 19 May 2020 06:21:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF3251BF2FF
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 06:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB59587852
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 06:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fSLCZzmyDyvu for <devel@linuxdriverproject.org>;
 Tue, 19 May 2020 06:21:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail18c50.megamailservers.eu (mail81c50.megamailservers.eu
 [91.136.10.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE383878A8
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 06:21:22 +0000 (UTC)
X-Authenticated-User: 017623705678@o2online.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1589869278;
 bh=bICxOQkKWptX/IVuhwdUQBYTZXOzDZV8tWkiB06kPZk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=aIRDb6AHzj4Zkla7eGQfHpE8+9vTBNWYZUfl2fNGe6h0cc50ecNkd0pYGfcl4cyi5
 n9NhB7/VsEcr76oqLrtfc9qexTGR9DkYfBJFAr+VSqh6trtStfIXo5nygWor+NuqdH
 dhmdXqhrVaLexdPKzgvdwy8r6yuxdQ9wVyqZTknc=
Feedback-ID: 017623705678@o2
Received: from [192.168.2.2]
 (dslb-178-011-017-047.178.011.pools.vodafone-ip.de [178.11.17.47])
 (authenticated bits=0)
 by mail18c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 04J6LE8B005870; 
 Tue, 19 May 2020 06:21:15 +0000
Subject: Re: RTL8723BS driver doesn't work for,me but I can help testing
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
From: Tobias Baumann <017623705678@o2online.de>
Message-ID: <c244b34f-8958-0cbd-38e6-a786aef56e7c@o2online.de>
Date: Tue, 19 May 2020 08:21:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCCgFtv=u4ZKW3rdoDPZ_jh3jU03MDxHoDk=pbi+4pxB_w@mail.gmail.com>
Content-Language: de-DE
X-Antivirus: AVG (VPS 200518-0, 18.05.2020), Outbound message
X-Antivirus-Status: Clean
X-CTCH-RefID: str=0001.0A782F1A.5EC37A8E.0094, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=K8Zc4BeI c=1 sm=1 tr=0 a=cfXdPu6Ul6OsnrHrce2WRQ==:117
 a=cfXdPu6Ul6OsnrHrce2WRQ==:17 a=IkcTkHD0fZMA:10 a=oCcaPWc0AAAA:8
 a=DZZeUtYjHzpd_z8FqtsA:9 a=QEXdDO2ut3YA:10
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

Z29vZCBtb3JuaW5nCgppIGdvdCB0aGUgbmV3IGltYWdlIGZyb20gb2xlZyhiYWxiZXMxNTApIDIw
MjAwNTE4IFJDNcKgIGFuZCBzb21lIG1vcmUgCmZlZWRiYWNrCgp3aXRoIG15IHBhdGNoIGFuZCBv
bGVnIFJDNSBob3RzdGFydChzaHV0ZG93biBub3cpwqAgZG8gbm90IHdvcmsgd2l0aCBteSAKYm94
ICggd2xhbiBnb2VzIGJhY2sgdG8gc2xlZXAgbW9kZSBhbHdheXMpCgp3aXRoIG15IHBhdGNoIGNo
YW5jZcKgIDEgb2YgNSB0aWxsIDEgb2YgMyB0aGF0IG15IHdsYW4gaXMgdXAgYW5kIG5vdCAKc2xl
ZXAgZnJvbSBjb2xkIHN0YXJ0Cgp3aXRoIG9sZWcgY2hhbmNlIDEgb2YgMiB0aWxsIDFvZiAzIGZy
b20gY29sZCBzdGFydCB0aGF0IHdsYW4gaXMgdXDCoCAuIAoobWF5YmUgYmVjYXVzZSBvZiBwaGFu
ZGxlIG9yZGVyPykKCmkgdGhpbmcgdGhlcmUgaXMgbWF5YmUgYSB0aW1taW5nIHByb2JsZW0gYmV0
d2VlbsKgIHdsYW4gZGlzICwgc2Rpb8KgIGRhdGEgCmFuZMKgIGhvc3Qgd2FrZSB1cCB3bGFuIC4K
Cml0IGNvdWxkIGJlIHRoYXQgR1BJT0FPXzYgaXMgdGhlIGhvc3Qgd2FrZSB1cCB3bGFuID8gaXMg
aXQgcG9zc2libGUgdG8gCmNoYW5nZSB0aGUgYWN0aXZhdGlvbiBvcmRlciBmb3IgdGhlIGdwaW8g
cGlucyBieSBjaGFuZ2UgaXQgaW4gZHRzID8KClRvYmlhcwoKCgpBbSAxOC4wNS4yMDIwIHVtIDIy
OjM3IHNjaHJpZWIgTWFydGluIEJsdW1lbnN0aW5nbDoKPiBIaSBUb2JpYXMsCj4KPiBPbiBNb24s
IE1heSAxOCwgMjAyMCBhdCA3OjU5IEFNIFRvYmlhcyBCYXVtYW5uIDwwMTc2MjM3MDU2NzhAbzJv
bmxpbmUuZGU+IHdyb3RlOgo+PiBoaSBtYXJ0aW4KPj4KPj4gaSBhY3RpdmF0ZSB5b3VyIHBhdGNo
IDsgd2xhbiB3b3JrcyA7ICBhbHNvIHdpdGggb25seSAgZWRpdCBHUElPWF8xMSB3bGFuCj4+IHdv
cmtzCj4+Cj4+IGl0cyBub3cgR1BJTy00MDIgb3V0IGhpZ2ggQUNUSVZFX0xPVyAgKCAzLjNWIG9u
IHBpbjEyKQo+IGdyZWF0LCB0aGFuayB5b3UgZm9yIGRvaW5nIHRoZSByZXNlYXJjaCEKPgo+IGRp
ZCB5b3UgZmluZCBvdXQgaWYgR1BJT0FPXzYgaXMgbmVlZGVkIGF0IGFsbD8KPiB0aGUgMy4xMCBr
ZXJuZWwgZW5hYmxlcyBpdCBhbmQgc2V0cyBpdCB0byBISUdILiBteSB1bmRlcnN0YW5kaW5nIGlz
Cj4gdGhhdCB5b3UgZGlkbid0IGNoYW5nZSB0aGlzIG9uZSBzbyB0aGUgb3V0cHV0IGlzIHN0aWxs
IExPVy4KPiBzbyBJJ20gd29uZGVyaW5nIGlmIGl0IGlzIG5lZWRlZCBhdCBhbGwgKEkgd291bGRu
J3QgYmUgc3VycHJpc2VkIGlmIGl0Cj4gd2FzIG5vdCBuZWVkZWQsIHRoZXNlIDMuMTAga2VybmVs
IC5kdHMgZmlsZXMgc2VlbSB0byBiZSBjb3B5JnBhc3RlZAo+IGZyb20gdmFyaW91cyB2ZW5kb3Jz
IGFuZCBkbyBub3QgbmVjZXNzYXJpbHkgcmVmbGVjdCB0aGUgYWN0dWFsCj4gaGFyZHdhcmUgc2V0
dXAgaW5zaWRlIHRoZSBib3gpCj4KPj4gaSBhbHNvIGF0dGFjaGVkIHRoZSBwZXJmb3JtYW5jZSBp
bmZvcyAgV2xhbjAtPlJvdXRlciBhbmQgUkFNLT5TREhDCj4gdGhhdCdzIHByZXR0eSBnb29kLCBn
cmVhdCB0byBzZWUgdGhhdCBpdCB3b3JrcyBmaW5lIGZvciB5b3UgOi0pCj4KPgo+IE1hcnRpbgo+
CgotLSAKRGllc2UgRS1NYWlsIHd1cmRlIHZvbiBBVkcgYXVmIFZpcmVuIGdlcHLDvGZ0LgpodHRw
Oi8vd3d3LmF2Zy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
