Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D7A1229C4
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 12:21:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 104E085EE9;
	Tue, 17 Dec 2019 11:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7yABpuDPRQx4; Tue, 17 Dec 2019 11:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD04984F35;
	Tue, 17 Dec 2019 11:21:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BF2E1BF3D4
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 11:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2AD1287986
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 11:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9vsgmUTigksp for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 11:20:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from nbd.name (nbd.name [46.4.11.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1640387985
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hmLV8T0pAGdd3zLpLnRj4IfM+23QZs7dg/vaDrnwqec=; b=K4SSbBRtn4VJ49BTcWI/GGlegS
 0VIr6sP/TsPpoflU5+AKXQA3TD53gsVHlJYxiGVTKDi4H2AakE1yXR8bVLIzTrmuovYpPjyvTBgUd
 cfd7zqYLuKrejRNQDMrrFUXHLVDVfqGK+oIvXrfnSvDkki8nk0iyO76ewiQheXefoS30=;
Received: from [178.162.209.142] (helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1ihAu9-00082V-80; Tue, 17 Dec 2019 12:20:41 +0100
Subject: Re: [PATCH 07/55] staging: wfx: ensure that retry policy always
 fallbacks to MCS0 / 1Mbps
To: =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
References: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
 <20191216170302.29543-8-Jerome.Pouiller@silabs.com>
 <0777ef33-e1f4-148a-40cb-cfe7b42d5364@nbd.name> <3755885.sodJc2dsoe@pc-42>
From: Felix Fietkau <nbd@nbd.name>
Autocrypt: addr=nbd@nbd.name; prefer-encrypt=mutual; keydata=
 xsDiBEah5CcRBADIY7pu4LIv3jBlyQ/2u87iIZGe6f0f8pyB4UjzfJNXhJb8JylYYRzIOSxh
 ExKsdLCnJqsG1PY1mqTtoG8sONpwsHr2oJ4itjcGHfn5NJSUGTbtbbxLro13tHkGFCoCr4Z5
 Pv+XRgiANSpYlIigiMbOkide6wbggQK32tC20QxUIwCg4k6dtV/4kwEeiOUfErq00TVqIiEE
 AKcUi4taOuh/PQWx/Ujjl/P1LfJXqLKRPa8PwD4j2yjoc9l+7LptSxJThL9KSu6gtXQjcoR2
 vCK0OeYJhgO4kYMI78h1TSaxmtImEAnjFPYJYVsxrhay92jisYc7z5R/76AaELfF6RCjjGeP
 wdalulG+erWju710Bif7E1yjYVWeA/9Wd1lsOmx6uwwYgNqoFtcAunDaMKi9xVQW18FsUusM
 TdRvTZLBpoUAy+MajAL+R73TwLq3LnKpIcCwftyQXK5pEDKq57OhxJVv1Q8XkA9Dn1SBOjNB
 l25vJDFAT9ntp9THeDD2fv15yk4EKpWhu4H00/YX8KkhFsrtUs69+vZQwc0cRmVsaXggRmll
 dGthdSA8bmJkQG5iZC5uYW1lPsJgBBMRAgAgBQJGoeQnAhsjBgsJCAcDAgQVAggDBBYCAwEC
 HgECF4AACgkQ130UHQKnbvXsvgCgjsAIIOsY7xZ8VcSm7NABpi91yTMAniMMmH7FRenEAYMa
 VrwYTIThkTlQzsFNBEah5FQQCACMIep/hTzgPZ9HbCTKm9xN4bZX0JjrqjFem1Nxf3MBM5vN
 CYGBn8F4sGIzPmLhl4xFeq3k5irVg/YvxSDbQN6NJv8o+tP6zsMeWX2JjtV0P4aDIN1pK2/w
 VxcicArw0VYdv2ZCarccFBgH2a6GjswqlCqVM3gNIMI8ikzenKcso8YErGGiKYeMEZLwHaxE
 Y7mTPuOTrWL8uWWRL5mVjhZEVvDez6em/OYvzBwbkhImrryF29e3Po2cfY2n7EKjjr3/141K
 DHBBdgXlPNfDwROnA5ugjjEBjwkwBQqPpDA7AYPvpHh5vLbZnVGu5CwG7NAsrb2isRmjYoqk
 wu++3117AAMFB/9S0Sj7qFFQcD4laADVsabTpNNpaV4wAgVTRHKV/kC9luItzwDnUcsZUPdQ
 f3MueRJ3jIHU0UmRBG3uQftqbZJj3ikhnfvyLmkCNe+/hXhPu9sGvXyi2D4vszICvc1KL4RD
 aLSrOsROx22eZ26KqcW4ny7+va2FnvjsZgI8h4sDmaLzKczVRIiLITiMpLFEU/VoSv0m1F4B
 FtRgoiyjFzigWG0MsTdAN6FJzGh4mWWGIlE7o5JraNhnTd+yTUIPtw3ym6l8P+gbvfoZida0
 TspgwBWLnXQvP5EDvlZnNaKa/3oBes6z0QdaSOwZCRA3QSLHBwtgUsrT6RxRSweLrcabwkkE
 GBECAAkFAkah5FQCGwwACgkQ130UHQKnbvW2GgCfTKx80VvCR/PvsUlrvdOLsIgeRGAAn1ee
 RjMaxwtSdaCKMw3j33ZbsWS4
Message-ID: <f5a6b1b4-6000-04c9-f3a6-c2be8e5dcc61@nbd.name>
Date: Tue, 17 Dec 2019 12:20:40 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <3755885.sodJc2dsoe@pc-42>
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gSsOpcsO0bWUsCgpPbiAyMDE5LTEyLTE3IDEyOjAxLCBKw6lyw7RtZSBQb3VpbGxlciB3
cm90ZToKPiBPbiBNb25kYXkgMTYgRGVjZW1iZXIgMjAxOSAxOTowODozOSBDRVQgRmVsaXggRmll
dGthdSB3cm90ZToKPj4gT24gMjAxOS0xMi0xNiAxODowMywgSsOpcsO0bWUgUG91aWxsZXIgd3Jv
dGU6Cj4+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMu
Y29tPgo+PiA+Cj4+ID4gV2hlbiBub3QgdXNpbmcgSFQgbW9kZSwgbWluc3RyZWwgYWx3YXlzIGlu
Y2x1ZGVzIDFNYnBzIGFzIGZhbGxiYWNrIHJhdGUuCj4+ID4gQnV0LCB3aGVuIHVzaW5nIEhUIG1v
ZGUsIHRoaXMgZmFsbGJhY2sgaXMgbm90IGluY2x1ZGVkLiBZZXQsIGl0IHNlZW1zCj4+ID4gdGhh
dCBpdCBjb3VsZCBzYXZlIHNvbWUgZnJhbWVzLiBTbywgdGhpcyBwYXRjaCBhZGQgaXQgdW5jb25k
aXRpb25hbGx5Lgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGpl
cm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+PiBBcmUgeW91IHN1cmUgdGhhdCdzIGEgZ29vZCBp
ZGVhPyBTb21ldGltZXMgYSBsaXR0bGUgcGFja2V0IGxvc3MgY2FuIGJlCj4+IHByZWZlcmFibGUg
b3ZlciBhIGxhcmdlciBhbW91bnQgb2YgYWlydGltZSB3YXN0ZWQgdGhyb3VnaCB1c2luZyByZWFs
bHkKPj4gbG93IHJhdGVzLiBFc3BlY2lhbGx5IHdoZW4geW91IGNvbnNpZGVyIGJ1ZmZlcmJsb2F0
Lgo+IEkgaGF2ZSBvYnNlcnZlZCB0aGF0LCBpbiBzb21lIGNpcmN1bXN0YW5jZXMsIFRDUCB0aHJv
dWdocHV0IHdhcyBmYXIgCj4gYmV0dGVyIHdpdGggODAyLjExZyB0aGFuIHdpdGggODAyLjExbi4g
SSBmb3VuZCB0aGF0IDgwMi4xMW4gaGFkIG1vcmUgVHggCj4gZmFpbHVyZXMuIFRoZXNlIGZhaWx1
cmVzIGhhdmUgYmlnIGltcGFjdHMgb24gdGhlIGNvbmdlc3Rpb24gd2luZG93LiBXaGVuIAo+IHRo
ZSBjb25nZXN0aW9uIHdpbmRvdyBpcyBsb3csIGl0IGltcGFjdHMgdGhlIGNhcGFjaXR5IG9mIGFn
Z3JlZ2F0aW9uIG9mIAo+IHRoZSBsaW5rLiBUaHVzLCBpdCBkb2VzIG5vdCBoZWxwIHRvIGltcHJv
dmUgdGhlIGNvbmdlc3Rpb24gd2luZG93cy4KPiAKPiBCeSBpbnZlc3RpZ2F0aW5nIGRlZXBlciwg
aXQgYXBwZWFycyB0aGF0IHRoZSBtaW5zdHJlbCAodXNlZCBieSA4MDIuMTFnKQo+IGFsd2F5cyBh
ZGQgcmF0ZSAxTWJwcyB0byB0aGUgcmF0ZSBsaXN0IHdoaWxlIG1pbnN0cmVsX2h0ICh1c2VkIGJ5
Cj4gODAyLjExbikgZG9uJ3QgKGNvbXBhcmUgbWluc3RyZWxfdXBkYXRlX3JhdGVzKCkgYW5kCj4g
bWluc3RyZWxfaHRfdXBkYXRlX3JhdGVzKCkpLiBUaGlzIGRpZmZlcmVuY2Ugc2VlbXMgdG8gYmUg
Y29ycmVsYXRlZCB0bwo+IHRoZSBkaWZmZXJlbmNlIG9mIFRDUCB0aHJvdWdocHV0IEkgY2FuIG9i
c2VydmUuCj4gCj4gSSBkaWQgc29tZSBzZWFyY2ggaW4gZ2l0IGhpc3RvcnkgYW5kIEkgZGlkIG5v
dCBmaW5kIGFueSBleHBsYW5hdGlvbiBmb3IgCj4gdGhpcyBkaWZmZXJlbmNlIGJldHdlZW4gbWlu
c3RyZWwgYW5kIG1pbnN0cmVsX2h0IChob3dldmVyLCBpdCBzZWVtcyB5b3UgCj4gYXJlIHRoZSBy
aWdodCBwZXJzb24gdG8gYXNrIDopICkuIEkgZGlkbid0IGZpbmQgd2h5IGl0IHdvdWxkIGJlCj4g
ZWZmaWNpZW50IG9uIG1pbnN0cmVsIGFuZCBpbmVmZmljaWVudCBvbiBtaW5zdHJlbF9odC4gQW5k
IHNpbmNlIHRoaXMKPiBjaGFuZ2UgZml4IHRoZSBpc3N1ZSB0aGF0IEkgb2JzZXJ2ZWQsIEkgaGF2
ZSB0cmllZCB0byBhcHBseSBpdCBhbmQgd2FpdAo+IGZvciBmZWVkYmFjay4KSSBoYXZlIGZvdW5k
IHRoYXQgaW4gbWFueSBjYXNlcyB3aGVuIG1pbnN0cmVsX2h0IHNlbGVjdHMgc3ViLW9wdGltYWwK
cmF0ZXMgdGhhdCBjYXVzZSB0b28gbWFueSByZS10cmFuc21pc3Npb25zIG9yIHJlLXRyYW5zbWlz
c2lvbiBmYWlsdXJlcywKaXQgd2FzIGJlY2F1c2UgdGhlcmUgd2FzIGFuIGlzc3VlIGluIHR4IHN0
YXR1cyByZXBvcnRpbmcuCkFub3RoZXIgcG9zc2libGUgcmVhc29uIGlzIGJ1ZmZlcmluZyB0b28g
bWFueSBwYWNrZXRzIHdpdGhvdXQgaGF2aW5nIHRoZQphYmlsaXR5IHRvIGFsdGVyIHRoZSByYXRl
cyBmb3IgaW4tZmxpZ2h0IHBhY2tldHMgYmFzZWQgb24gYmFkIHR4IHN0YXR1cwpyZXN1bHRzLgpU
byBmaW5kIG91dCB3aGF0IHRoZSBkcml2ZXIvaGFyZHdhcmUgaXMgZG9pbmcsIEkgdG9vayBhIHF1
aWNrIGxvb2sgYW5kCml0IHNlZW1zIHRvIGJlIG1hbmFnaW5nIG11bHRpcGxlIHR4IHJhdGUgcG9s
aWNpZXMgYmFzZWQgb24gcGVyLXBhY2tldApyYXRlIGluZm8uIEJhc2VkIG9uIHRoYXQgSSBoYXZl
IGFuIGlkZWEgb2Ygd2hhdCB5b3UgY291bGQgdHJ5IHRvIG1ha2UKdGhpbmdzIGJldHRlcjoKSW5z
dGVhZCBvZiB1c2luZyBwZXItcGFja2V0IHJhdGUgaW5mbywgaW1wbGVtZW50IHRoZQouc3RhX3Jh
dGVfdGJsX3VwZGF0ZSBjYWxsYmFjayB0byBtYWludGFpbiBhIHByaW1hcnkgdHggcG9saWN5IHVz
ZWQgZm9yCmFsbCBub24tcHJvYmluZyBub24tZml4ZWQtcmF0ZSBwYWNrZXRzLCB3aGljaCB5b3Ug
Y2FuIGFsdGVyIHdoaWxlCnBhY2tldHMgdXNpbmcgaXQgYXJlIHF1ZXVlZCBhbHJlYWR5LgpUaGUg
ZXhpc3RpbmcgYXBwcm9hY2ggdXNpbmcgcGVyLXBhY2tldCB0eF9pbmZvIGRhdGEgc2hvdWxkIHRo
ZW4gYmUgdXNlZApvbmx5IGZvciBwcm9iaW5nIG9yIGZpeGVkLXJhdGUgcGFja2V0cy4KWW91IHRo
ZW4gcHJvYmFibHkgaGF2ZSB0byBiZSBhIGJpdCBjbGV2ZXIgaW4gdGhlIHR4IHN0YXR1cyBwYXRo
IGZvcgpmaWd1cmluZyBvdXQgd2hhdCByYXRlcyB3ZXJlIGFjdHVhbGx5IHVzZWQuCgotIEZlbGl4
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
