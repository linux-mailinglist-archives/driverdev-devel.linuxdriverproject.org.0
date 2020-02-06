Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4506153FFC
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Feb 2020 09:19:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12B65870C7;
	Thu,  6 Feb 2020 08:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lS4y3i+--IFs; Thu,  6 Feb 2020 08:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 335AD86135;
	Thu,  6 Feb 2020 08:19:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12B391BF846
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 08:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0BD7884826
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 08:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7F2D3lMI4gW for <devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 08:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCD0983EFD
 for <devel@driverdev.osuosl.org>; Thu,  6 Feb 2020 08:19:01 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id r16so4714905otd.2
 for <devel@driverdev.osuosl.org>; Thu, 06 Feb 2020 00:19:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ILeCcfkYYjTxS6oflRLxWrVymyuGundyUAIWkRyyXgE=;
 b=EaKDK88I3caXBtDfvon5zZ1Py+URlg/gMnaf/igGjcGeGCbppdU/ET9ZD6162FAhs/
 ZQubUziXD9GQYDgFgBo9uXNDNOCeYgFu18FVMfZ0QHr9MhCeb0xTJTmBcj6YviE0DlLm
 ylN9bWjN4SIpCcg8a6XSLmQRVnYu0Afh8i3tgiW9pkdIuXzTBrZ8n+JtN6CTM2dl5Gfk
 cazwj/F5NJCHSt6bmGrFAta6pbIU4MLThAC3KcOpb3kFu8Pzq/N5DTS2wEDaSwyN4JLb
 IgwIUlQM2jVrzpw2L96tDsAawBX5F6lFYK02Cg7PQ6kNeHgPx4zqJi6jQNHlVyeKv06Y
 +kgw==
X-Gm-Message-State: APjAAAW3dKymNb9GZr6LcDUt6X7WaemzJoQngMMvdGxBeUxd1O3AFoim
 mQqfIMYLqeYd6JZarAozKrvPw1Ax7xICZsFwnz4=
X-Google-Smtp-Source: APXvYqzD5+HlMwpdnKhhYsSUh7s8+K86BYM3tnZF4atz2qANzxRGvmiaLDGI59RrIn4aYfNVH10hyIp5eiV2Ps1BzKo=
X-Received: by 2002:a9d:8f1:: with SMTP id 104mr27747368otf.107.1580977140903; 
 Thu, 06 Feb 2020 00:19:00 -0800 (PST)
MIME-Version: 1.0
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
 <20200204203116.GN8731@bombadil.infradead.org> <20200205033416.GT1778@kadam>
 <a3032823-03a9-f018-73e4-eb0d71e0bb53@roeck-us.net>
 <CAMuHMdXKtJEvwRViRpy4nHbxv68P_rCFWbpikw=BMM5XnBvD2A@mail.gmail.com>
 <dd09609d-d504-9a9e-453e-6b0ef66e6211@roeck-us.net>
In-Reply-To: <dd09609d-d504-9a9e-453e-6b0ef66e6211@roeck-us.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Feb 2020 09:18:48 +0100
Message-ID: <CAMuHMdVfH90GDJMOTBQeLE5vx==YEMdE-Q+Hp1+E1ZKpQ=nhqQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
To: Guenter Roeck <linux@roeck-us.net>
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
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>, "fw@strlen.de" <fw@strlen.de>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "sandro@volery.com" <sandro@volery.com>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgR8O8bnRlciwKCk9uIFdlZCwgRmViIDUsIDIwMjAgYXQgMjo1MiBQTSBHdWVudGVyIFJvZWNr
IDxsaW51eEByb2Vjay11cy5uZXQ+IHdyb3RlOgo+IE9uIDIvNS8yMCAxOjAzIEFNLCBHZWVydCBV
eXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBXZWQsIEZlYiA1LCAyMDIwIGF0IDQ6NTcgQU0gR3Vl
bnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0PiB3cm90ZToKPiA+PiBPbiAyLzQvMjAgNzoz
NCBQTSwgRGFuIENhcnBlbnRlciB3cm90ZToKPiA+Pj4gT24gVHVlLCBGZWIgMDQsIDIwMjAgYXQg
MTI6MzE6MTZQTSAtMDgwMCwgTWF0dGhldyBXaWxjb3ggd3JvdGU6Cj4gPj4+PiBPbiBUdWUsIEZl
YiAwNCwgMjAyMCBhdCAwODowNjoxNFBNICswMDAwLCBDaHJpcyBQYWNraGFtIHdyb3RlOgo+ID4+
Pj4+IE9uIFR1ZSwgMjAyMC0wMi0wNCBhdCAwNzowOSArMDAwMCwgZ3JlZ2toQGxpbnV4Zm91bmRh
dGlvbi5vcmcgd3JvdGU6Cj4gPj4+Pj4+IE9uIFR1ZSwgRmViIDA0LCAyMDIwIGF0IDA0OjAyOjE1
QU0gKzAwMDAsIENocmlzIFBhY2toYW0gd3JvdGU6Cj4gPj4+Pj4gT24gVHVlLCAyMDIwLTAyLTA0
IGF0IDEwOjIxICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+ID4+Pj4+PiBNeSBhZHZpY2Ug
aXMgdG8gZGVsZXRlIGFsbCB0aGUgQ09NUElMRV9URVNUIGNvZGUuICBUaGF0IHN0dWZmIHdhcyBh
Cj4gPj4+Pj4+IGNvbnN0YW50IHNvdXJjZSBvZiBjb25mdXNpb24gYW5kIGhlYWRhY2hlcy4KPiA+
Pj4+Pgo+ID4+Pj4+IEkgd2FzIGFsc28gZ29pbmcgdG8gc3VnZ2VzdCB0aGlzLiBTaW5jZSB0aGUg
Q09NUElMRV9URVNUIGhhcyBiZWVuIGEKPiA+Pj4+PiBzb3VyY2Ugb2YgdHJvdWJsZSBJIHdhcyBn
b2luZyB0byBwcm9wb3NlIGRyb3BwaW5nIHRoZSB8fCBDT01QSUxFX1RFU1QKPiA+Pj4+PiBmcm9t
IHRoZSBLY29uZmlnIGZvciB0aGUgb2N0ZW9uIGRyaXZlcnMuCj4gPj4+Pgo+ID4+Pj4gTm90IGhh
dmluZyBpdCBhbHNvIGNhdXNlcyBwcm9ibGVtcy4gIEkgZGlkbid0IG9yaWdpbmFsbHkgYWRkIGl0
IGZvcgo+ID4+Pj4gc2hpdHMgYW5kIGdpZ2dsZXMuCj4gPj4+Cj4gPj4+IEkgd29uZGVyIGlmIHRo
ZSBrYnVpbGQgYm90IGRvZXMgZW5vdWdoIGNyb3NzIGNvbXBpbGUgYnVpbGQgdGVzdGluZyB0aGVz
ZQo+ID4+PiBkYXlzIHRvIGRldGVjdCBjb21waWxlIHByb2JsZW1zLiAgSXQgbWlnaHQgaGF2ZSBp
bXByb3ZlZCB0byB0aGUgcG9pbnQKPiA+Pj4gd2hlcmUgQ09NUElMRV9URVNUIGlzbid0IHJlcXVp
cmVkLgo+ID4KPiA+IEl0IGRlcGVuZHMuLi4KPiA+Cj4gPj4gTm90IHJlYWxseS4gTG9va2luZyBh
dCB0aGUgYnVpbGQgZmFpbHVyZXMgaW4gdGhlIG1haW5saW5lIGtlcm5lbCByaWdodCBub3c6Cj4g
Pj4KPiA+PiBGYWlsZWQgYnVpbGRzOgo+ID4+ICAgICAgICAgIGFscGhhOmFsbG1vZGNvbmZpZwo+
ID4+ICAgICAgICAgIGFybTphbGxtb2Rjb25maWcKPiA+PiAgICAgICAgICBpMzg2OmFsbHllc2Nv
bmZpZwo+ID4+ICAgICAgICAgIGkzODY6YWxsbW9kY29uZmlnCj4gPj4gICAgICAgICAgbTY4azph
bGxtb2Rjb25maWcKPiA+PiAgICAgICAgICBtaWNyb2JsYXplOm1tdV9kZWZjb25maWcKPiA+PiAg
ICAgICAgICBtaXBzOmFsbG1vZGNvbmZpZwo+ID4+ICAgICAgICAgIHBhcmlzYzphbGxtb2Rjb25m
aWcKPiA+PiAgICAgICAgICBwb3dlcnBjOmFsbG1vZGNvbmZpZwo+ID4+ICAgICAgICAgIHMzOTA6
YWxsbW9kY29uZmlnCj4gPj4gICAgICAgICAgc3BhcmM2NDphbGxtb2Rjb25maWcKPiA+Cj4gPiBJ
IGRpZCByZWNlaXZlIGEgcmVwb3J0IGZyb20gbm9yZXBseUBlbGxlcm1hbi5pZC5hdSBmb3IgdGhl
IG02OGsgYnVpbGQKPiA+IGZhaWx1cmUuIEJ1dCB0aGF0IHdhcyBzZW50IHRvIG1lIG9ubHksIG5v
dCB0byB0aGUgb2ZmZW5kZXIsIGFuZCBJIGRvIG15Cj4gPiBvd24gYnVpbGRzIGFueXdheS4KPiA+
Cj4gPiBNb3JlIGludGVyZXN0aW5nLCB0aGF0IHJlcG9ydCBoYXBwZW5lZCBhZnRlciB0aGUgb2Zm
ZW5kaW5nIGNvbW1pdCBsYW5kZWQKPiA+IHVwc3RyZWFtLCB3aGlsZSBpdCBoYWQgYmVlbiBpbiBu
ZXh0IGZvciA0IHdlZWtzLgo+Cj4gbTY4ayBpbiAtbmV4dCBidWlsZHMgZmluZSBmb3IgbWUsIGFu
ZCBkaWQgZm9yIGEgd2hpbGUuIEkgaGF2ZSBub3Qgc2VlbiBhIGJ1aWxkCj4gZmFpbHVyZSB0aGVy
ZS4gVGhlcmUgbXVzdCBiZSBhIGNvbnRleHQgY29tbWl0IGNhdXNpbmcgdGhpcyBmYWlsdXJlLCBv
ciB3aGF0Cj4gaXMgKG9yIHdhcykgaW4gLW5leHQgZGlmZmVycyBmcm9tIHdoYXQgaXMgaW4gbWFp
bmxpbmUuCgpJbmRlZWQuIFRoZSBvZmZlbmRpbmcgc3ltYm9sIGRlcGVuZGVkIG9uIGFub3RoZXIg
c3ltYm9sLCB3aGljaCBuZXZlcgptYWRlIGl0IHRvIG5leHQgYmVmb3JlIGl0IGhpdCBtYWlubGlu
ZSwgdGh1cyBoaWRpbmcgdGhlIGlzc3VlLgoKPiA+PiBNYW55IG9mIHRob3NlIGRvbid0IGV2ZW4g
X2hhdmVfIHNwZWNpZmljIGNvbmZpZ3VyYXRpb25zIGNhdXNpbmcgdGhlIGJ1aWxkIGZhaWx1cmVz
Lgo+ID4KPiA+IEV4YWN0bHkuIFRoZXNlIGFyZSB0aGUgImVhc3kiIG9uZXMsIGFzIHRoZSBhbGwq
Y29uZmlnIGJ1aWxkcyBlbmFibGUgYXMKPiA+IG11Y2ggaW5mcmFzdHJ1Y3R1cmUgYXMgcG9zc2li
bGUuICBJdCdzIG11Y2ggaGFyZGVyIGlmIHNvbWUgY29tbW9uCj4gPiBkZXBlbmRlbmN5IGlzIG5v
dCBmdWxmaWxsZWQgaW4gc29tZSBzcGVjaWZpYyBjb25maWcuCj4KPiBZZXMsIHRoYXQgaXMgY29y
cmVjdC4gQnV0IHRoYXQgZG9lc24ndCBtZWFuIHRoYXQgaXQgd291bGQgYmUgYSBnb29kIGlkZWEK
PiB0byByZXRpcmUgQ09NUElMRV9URVNULgoKSSBhZ3JlZS4KClJldGlyaW5nIENPTVBJTEVfVEVT
VCBjb3VsZCBoYXZlIGEgcG9zaXRpdmUgc2lkZS1lZmZlY3QsIHRob3VnaDogaXQKd291bGQgcmVk
dWNlIHRoZSBjb21waWxlIHRpbWUgZm9yIGFsbCpjb25maWcsIHdoaWNoIG1pZ2h0IGdpdmUgdGhl
Cm92ZXJsb2FkZWQgYnVpbGQgYm90cyBzcGFyZSBjeWNsZXMgdG8gY292ZXIgb3RoZXIgY29uZmln
cy4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0t
IApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMy
IC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGgg
dGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRh
bGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5n
IGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2
YWxkcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
