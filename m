Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFBA1F969
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 19:40:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 523A187E65;
	Wed, 15 May 2019 17:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7HsY5OSqnDvF; Wed, 15 May 2019 17:40:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C31F287E49;
	Wed, 15 May 2019 17:40:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66FDE1BF36E
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62C998708B
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fu+5Ag+5IADo for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 17:40:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B6CE387066
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 17:40:07 +0000 (UTC)
Received: from mail-pg1-f199.google.com ([209.85.215.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hQxsr-0007KJ-5B
 for devel@driverdev.osuosl.org; Wed, 15 May 2019 17:40:05 +0000
Received: by mail-pg1-f199.google.com with SMTP id e14so355703pgg.12
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 10:40:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=mFpR4rTTfMsJJxbiWGfgKAelVVLvVLyIq7PoT3hLjvs=;
 b=hvYrYnVdfoMIWbPIJu9rU47PGyZ6MZa9J1BPuOfD6VJ2JVVWdGCfILy2y8izNdVs1E
 ryAUnQtfhPwQVOjFnGGCeFWkSvTwStru1LNfUH/QIVET5JetHkF32sFBt5ZGEM24/dpU
 w9puppctKLn4znlSFyU3Uc8rgpNXO25H7yigGW9UMj/BaRwNqUqIPHFEzbbbAi+S8Qp3
 hHQ0A6BY57uAb18vazXmU69OXsOCG1OY0pLXoo4aQ7jYnIC0xOPg1BDHVDLAl0qvp5gB
 dI37KV0OVhHmhwvc8iiRRcX1obgyd2t3ZBy/iPECjFOi2UALWnNQ3RphlaVIKPBJwVxf
 6peA==
X-Gm-Message-State: APjAAAXS5rr+5VseyPBq5u0agE3n9zD/2S80GqkwqwvJgElxwaCcQzom
 lckN0XZjfanv/s1+TeE/aigDKjauNT7dpq4pn99h21bTAtUdSkLzCjasg1Mu7hx3m2GGnyKMjeE
 HeHkRiZBX4sctSOJXCfatMfSng4SbZFL6i5P/3oA=
X-Received: by 2002:a63:1706:: with SMTP id x6mr45185328pgl.280.1557942003811; 
 Wed, 15 May 2019 10:40:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxsUVkNTfD0Bk+OztecBhfR6QBmKx2bNzjxcA0XCAQqd4jt2var1pXK1zpOslEiQ0pYLuZwsA==
X-Received: by 2002:a63:1706:: with SMTP id x6mr45185298pgl.280.1557942003437; 
 Wed, 15 May 2019 10:40:03 -0700 (PDT)
Received: from 2001-b011-380f-14b9-2dec-a462-2693-8ecd.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-2dec-a462-2693-8ecd.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:2dec:a462:2693:8ecd])
 by smtp.gmail.com with ESMTPSA id a13sm6270608pfj.169.2019.05.15.10.40.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 10:40:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190515163945.GA5719@kroah.com>
Date: Thu, 16 May 2019 01:40:00 +0800
Message-Id: <C6B4FA3D-A590-47F1-9F94-916862DD15CD@canonical.com>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
 <20190515114022.GA18824@kroah.com>
 <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
 <20190515123319.GA435@kroah.com>
 <63833AA2-AC8B-4EEA-AF36-EF2A9BFD4F9F@canonical.com>
 <20190515163945.GA5719@kroah.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Mailer: Apple Mail (2.3445.104.8)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

YXQgMDA6MzksIEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKCj4g
T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDk6MDY6NDRQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPj4gYXQgMjA6MzMsIEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3
cm90ZToKPj4KPj4+IE9uIFdlZCwgTWF5IDE1LCAyMDE5IGF0IDA3OjU0OjU4UE0gKzA4MDAsIEth
aS1IZW5nIEZlbmcgd3JvdGU6Cj4+Pj4gYXQgMTk6NDAsIEdyZWcgS0ggPGdyZWdraEBsaW51eGZv
dW5kYXRpb24ub3JnPiB3cm90ZToKPj4+Pgo+Pj4+PiBPbiBXZWQsIE1heSAxNSwgMjAxOSBhdCAw
NzoyNDowMVBNICswODAwLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+Pj4+Pj4gVGhlIHJ0bDg4MjFj
ZSBjYW4gYmUgZm91bmQgb24gbWFueSBIUCBhbmQgTGVub3ZvIGxhcHRvcHMuCj4+Pj4+PiBVc2Vy
cyBoYXZlIGJlZW4gdXNpbmcgb3V0LW9mLXRyZWUgbW9kdWxlIGZvciBhIHdoaWxlLAo+Pj4+Pj4K
Pj4+Pj4+IFRoZSBuZXcgUmVhbHRlayBXaUZpIGRyaXZlciwgcnR3ODgsIHdpbGwgc3VwcG9ydCBy
dGw4ODIxY2UgaW4gMjAyMCBvcgo+Pj4+Pj4gbGF0ZXIuCj4+Pj4+Cj4+Pj4+IFdoZXJlIGlzIHRo
YXQgZHJpdmVyLCBhbmQgd2h5IGlzIGl0IGdvaW5nIHRvIHRha2Ugc28gbG9uZyB0byBnZXQgIAo+
Pj4+PiBtZXJnZWQ/Cj4+Pj4KPj4+PiBydHc4OCBpcyBpbiA1LjIgbm93LCBidXQgaXQgZG9lc27i
gJl0IHN1cHBvcnQgODgyMWNlIHlldC4KPj4+Pgo+Pj4+IFRoZXkgcGxhbiB0byBhZGQgdGhlIHN1
cHBvcnQgaW4gMjAyMC4KPj4+Cj4+PiBXaG8gaXMgInRoZXkiIGFuZCB3aGF0IGlzIG5lZWRlZCB0
byBzdXBwb3J0IHRoaXMgZGV2aWNlIGFuZCB3aHkgd2FpdCBhCj4+PiBmdWxsIHllYXI/Cj4+Cj4+
IOKAnFRoZXnigJ0gcmVmZXJzIHRvIFJlYWx0ZWsuCj4+IEl04oCZcyB0aGVpciBwbGFuIHNvIEkg
Y2Fu4oCZdCByZWFsbHkgYW5zd2VyIHRoYXQgb24gYmVoYWxmIG9mIFJlYWx0ZWsuCj4KPiBXaGVy
ZSBkaWQgdGhleSBzYXkgdGhhdD8gIEFueSByZWFzb24gdGhlaXIgZGV2ZWxvcGVycyBhcmUgbm90
IG9uIHRoaXMKPiBwYXRjaD8KPgo+Pj4+Pj4gMjk2IGZpbGVzIGNoYW5nZWQsIDIwNjE2NiBpbnNl
cnRpb25zKCspCj4+Pj4+Cj4+Pj4+IFVnaCwgd2h5IGRvIHdlIGtlZXAgaGF2aW5nIHRvIGFkZCB0
aGUgd2hvbGUgbWVzcyBmb3IgZXZlcnkgc2luZ2xlIG9uZSAgCj4+Pj4+IG9mCj4+Pj4+IHRoZXNl
IGRldmljZXM/Cj4+Pj4KPj4+PiBCZWNhdXNlIFJlYWx0ZWsgZGV2aWNlcyBhcmUgdW5mb3J0dW5h
dGVseSB1YmlxdWl0b3VzIHNvIHRoZSBzdXBwb3J0IGlzCj4+Pj4gYmV0dGVyIGNvbWUgZnJvbSBr
ZXJuZWwuCj4+Pgo+Pj4gVGhhdCdzIG5vdCB0aGUgaXNzdWUgaGVyZS4gIFRoZSBpc3N1ZSBpcyB0
aGF0IHdlIGtlZXAgYWRkaW5nIHRoZSBzYW1lCj4+PiBodWdlIGRyaXZlciBmaWxlcyB0byB0aGUg
a2VybmVsIHRyZWUsIG92ZXIgYW5kIG92ZXIsIHdpdGggbm8gcmVhbCBjaGFuZ2UKPj4+IGF0IGFs
bC4gIFdlIGhhdmUgc2VlbiBhbG1vc3QgYWxsIG9mIHRoZXNlIGZpbGVzIGluIG90aGVyIHJlYWx0
ZWsKPj4+IGRyaXZlcnMsIHJpZ2h0Pwo+Pgo+PiBZZXMuIFRoZXkgdXNlIG9uZSBzaW5nbGUgZHJp
dmVyIHRvIHN1cHBvcnQgZGlmZmVyZW50IFNvQ3MsIGRpZmZlcmVudAo+PiBhcmNoaXRlY3R1cmVz
IGFuZCBldmVuIGRpZmZlcmVudCBPU2VzLgo+Cj4gV2VsbCwgdGhleSB0cnkgdG8sIGl0IGRvZXNu
J3QgYWx3YXlzIHdvcmsgOigKPgo+PiBUaGF04oCZcyB3aHkgaXTigJlzIGEgbWVzcy4KPgo+IE9o
IHdlIGFsbCBrbm93IHdoeSB0aGlzIGlzIGEgbWVzcy4gIEJ1dCB0aGV5IGhhdmUgYmVlbiBzYXlp
bmcgZm9yCj4gX3llYXJzXyB0aGV5IHdvdWxkIGNsZWFuIHVwIHRoaXMgbWVzcy4gIFNvIHB1c2gg
YmFjaywgSSdtIG5vdCBnb2luZyB0bwo+IHRha2UgYW5vdGhlciAyMDBrIGxpbmVzIGZvciBhIHNp
bXBsZSB3aWZpIGRyaXZlciwgYWdhaW4uCj4KPiBBbG9uZyB0aG9zZSBsaW5lcywgd2Ugc2hvdWxk
IHByb2JhYmx5IGp1c3QgZGVsZXRlIHRoZSBvdGhlciBvbGQgcmVhbHRlawo+IGRyaXZlcnMgdGhh
dCBkb24ndCBzZWVtIHRvIGJlIGdvaW5nIGFueXdoZXJlIGZyb20gc3RhZ2luZyBhcyB3ZWxsLAo+
IGJlY2F1c2UgdGhvc2UgYXJlIGp1c3QgY29uZnVzaW5nIHBlb3BsZS4KPgo+Pj4gV2h5IG5vdCB1
c2UgdGhlIG9uZXMgd2UgYWxyZWFkeSBoYXZlPwo+Pgo+PiBJdOKAmXMgdmlydHVhbGx5IGltcG9z
c2libGUgYmVjYXVzZSBSZWFsdGVr4oCZcyBtZWdhIHdpZmkgZHJpdmVyIHVzZXMgdG9ucyBvZgo+
PiAjaWZkZWZzLCBvbmx5IG9uZSBjaGlwIGNhbiBiZSBzZWxlY3RlZCB0byBiZSBzdXBwb3J0ZWQg
YXQgY29tcGlsZSB0aW1lLgo+Cj4gVGhhdCdzIG5vdCB3aGF0IEkgYXNrZWQuCj4KPiBJIHdhbnQg
dG8ga25vdyB3aHkgdGhleSBjYW4ndCBqdXN0IGFkZCBzdXBwb3J0IGZvciB0aGVpciBuZXcgZGV2
aWNlcyB0bwo+IG9uZSBvZiB0aGUgbWFueSBleGlzdGluZyByZWFsdGVrIGRyaXZlcnMgd2UgYWxy
ZWFkeSBoYXZlLiAgVGhhdCBpcyB0aGUKPiBzaW1wbGVyIHdheSwgYW5kIHRoZSBjb3JyZWN0IHdh
eSB0byBkbyB0aGlzLiAgV2UgZG9uJ3QgZG8gdGhpcyBieSBhZGRpbmcKPiAyMDBrIGxpbmVzLCBh
Z2Fpbi4KPgo+Pj4gQnV0IGJldHRlciB5ZXQsIHdoeSBub3QgYWRkIHByb3BlciBzdXBwb3J0IGZv
ciB0aGlzIGhhcmR3YXJlIGFuZCBub3QgdXNlCj4+PiBhIHN0YWdpbmcgZHJpdmVyPwo+Pgo+PiBS
ZWFsdGVrIHBsYW5zIHRvIGFkZCB0aGUgc3VwcG9ydCBpbiAyMDIwLCBpZiBldmVyeXRoaW5nIGdv
ZXMgd2VsbC4KPgo+IERldmljZSAiZ29lcyB3ZWxsIiBwbGVhc2UuICBBbmQgd2hlbiBpbiAyMDIw
PyAgQW5kIHdoeSAyMDIwPyAgV2h5IG5vdAo+IDIwMjI/ICAyMDI0Pwo+Cj4+IE1lYW53aGlsZSwg
bWFueSB1c2VycyBvZiBIUCBhbmQgTGVub3ZvIGxhcHRvcHMgYXJlIHVzaW5nIG91dC1vZi10cmVl
ICAKPj4gZHJpdmVyLAo+PiBzb21lIG9mIHRoZW0gYXJlIHN0dWNrIHRvIG9sZGVyIGtlcm5lbHMg
YmVjYXVzZSB0aGV5IGRvbuKAmXQga25vdyBob3cgdG8gZml4Cj4+IHRoZSBkcml2ZXIuIFNvIEkg
c3Ryb25nbHkgdGhpbmsgaGF2aW5nIHRoaXMgaW4ga2VybmVsIGlzIGJlbmVmaWNpYWwgdG8gIAo+
PiBtYW55Cj4+IHVzZXJzLCBldmVuIGl04oCZcyBvbmx5IGZvciBhIHllYXIuCj4KPiBTbyB3aG8g
aXMgZ29pbmcgdG8gYmUgcmVzcG9uc2libGUgZm9yICJmaXhpbmcgdGhlIGRyaXZlciIgZm9yIGFs
bCBuZXcKPiBrZXJuZWwgYXBpIHVwZGF0ZXM/ICBJJ20gdGlyZWQgb2Ygc2VlaW5nIG5ldyBkZXZl
bG9wZXJzIGdldCBsb3N0IGluIHRoZQo+IG1hemUgb2YgeWV0LWFub3RoZXIgcmVhbHRlayB3aWZp
IGRyaXZlci4gIFdlJ3ZlIGJlZW4gcHV0dGluZyB1cCB3aXRoCj4gdGhpcyBjcnVkIGZvciB5ZWFy
cywgYW5kIGl0IGhhcyBub3QgZ290dGVuIGFueSBiZXR0ZXIgaWYgeW91IHdhbnQgdG8gYWRkCj4g
YW5vdGhlciAyMDBrIGxpbmVzIGZvciBzb21lIHVua25vd24gYW1vdW50IG9mIHRpbWUgd2l0aCB0
aGUgaG9wZSB0aGF0IGEKPiBkcml2ZXIgbWlnaHQgbWFnaWNhbGx5IHNob3cgdXAgb25lIGRheS4K
CkkgaGF2ZSBubyBpZGVhIHdoeSB0aGV5IGhhdmVu4oCZdCBtYWRlIGV2ZXJ5dGhpbmcgdXBzdHJl
YW0sIGFuZCBJIGRvIGhvcGUgIAp0aGV5IGRpZCBhIGJldHRlciBqb2IsIHNvIEkgZG9u4oCZdCBu
ZWVkIHRvIGNsZWFudXAgdGhlaXIgZHJpdmVyIGFuZCBzZW5kIGl0ICAKdXBzdHJlYW0gOigKClNv
IGJhc2ljYWxseSBJIGNhbuKAmXQgYW5zd2VyIGFueSBvZiB5b3VyIHF1ZXN0aW9ucy4gQXMgTGFy
cnkgc3VnZ2VzdGVkLCAgCnRoZWlyIGRyaXZlciBzaG91bGQgYmUgaG9zdGVkIHNlcGFyYXRlbHkg
YW5kIG1heWJlIGJ5IGRvd25zdHJlYW0gZGlzdHJvLgoKS2FpLUhlbmcKCj4KPiB0aGFua3MsCj4K
PiBncmVnIGstaAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
