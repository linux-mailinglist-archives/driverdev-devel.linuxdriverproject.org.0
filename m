Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D2515217E
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 21:32:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 02D5B82558;
	Tue,  4 Feb 2020 20:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4giPLvWHFqRf; Tue,  4 Feb 2020 20:32:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 260C981CDF;
	Tue,  4 Feb 2020 20:32:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E64E1BF3BA
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 20:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 158242076B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 20:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id luECJTqsBwjN for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 20:32:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 21A3120764
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 20:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=Eu9GqXtK/l01BRKY5MaH0T26o4LWxGBFtxT+Sqy2At0=; b=eb/+Qll3sWrmKSHxQU9iT1kfMP
 k7NzIrfllcEgTOM34fqnUWirEWv0G1hJunMF3t+myQgtLvn5p2TZ56dnHB9wAUhjRBHK30B7glzST
 3p7oZAN5uqaFPul0fNPvu6UiDGmv0sVOksrLLMJGXE+c4UYDQ3KtTTQZOir5r1TSnyrF+RVq4sZQr
 dn8pGIkB5B+Ib9Lmxjg2mWMPTFARfRt4LSflK3OGsHiwkQP4vVKwiYwuAuTAEmWQbDMAhX8QO0qkl
 M3/OZh4WSN/y9kilO2XQhX30g07VI//PgwJzKt46tocRFGf02dej5mPVrhC1zaUdTdSvDXT575rFO
 C9ZTlR4g==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iz4qq-0007Zf-6k; Tue, 04 Feb 2020 20:31:16 +0000
Date: Tue, 4 Feb 2020 12:31:16 -0800
From: Matthew Wilcox <willy@infradead.org>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20200204203116.GN8731@bombadil.infradead.org>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
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
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "fw@strlen.de" <fw@strlen.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>,
 "sandro@volery.com" <sandro@volery.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDg6MDY6MTRQTSArMDAwMCwgQ2hyaXMgUGFja2hhbSB3
cm90ZToKPiBPbiBUdWUsIDIwMjAtMDItMDQgYXQgMDc6MDkgKzAwMDAsIGdyZWdraEBsaW51eGZv
dW5kYXRpb24ub3JnIHdyb3RlOgo+ID4gT24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDQ6MDI6MTVB
TSArMDAwMCwgQ2hyaXMgUGFja2hhbSB3cm90ZToKPiA+ID4gSSdsbCBwaXBlIHVwIG9uIHRoaXMg
dGhyZWFkIHRvbwo+ID4gPiAKPiA+ID4gT24gVHVlLCAyMDE5LTEyLTEwIGF0IDAyOjQyIC0wODAw
LCBHdWVudGVyIFJvZWNrIHdyb3RlOgo+ID4gPiA+IE9uIDEyLzEwLzE5IDE6MTUgQU0sIEdyZWcg
S3JvYWgtSGFydG1hbiB3cm90ZToKPiA+ID4gPiA+IFRoaXMgZHJpdmVyIGhhcyBiZWVuIGluIHRo
ZSB0cmVlIHNpbmNlIDIwMDkgd2l0aCBubyByZWFsIG1vdmVtZW50IHRvIGdldAo+ID4gPiA+ID4g
aXQgb3V0LiAgTm93IGl0IGlzIHN0YXJ0aW5nIHRvIGNhdXNlIGJ1aWxkIGlzc3VlcyBhbmQgb3Ro
ZXIgcHJvYmxlbXMgZm9yCj4gPiA+ID4gPiBwZW9wbGUgd2hvIHdhbnQgdG8gZml4IGNvZGluZyBz
dHlsZSBwcm9ibGVtcywgYnV0IGNhbiBub3QgYWN0dWFsbHkgYnVpbGQKPiA+ID4gPiA+IGl0Lgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBBcyBub3RoaW5nIGlzIGhhcHBlbmluZyBoZXJlLCBqdXN0IGRl
bGV0ZSB0aGUgbW9kdWxlIGVudGlyZWx5Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBSZXBvcnRlZC1i
eTogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+ID4gPiA+ID4gQ2M6IERhdmlk
IERhbmV5IDxkZGFuZXlAY2F2aXVtbmV0d29ya3MuY29tPgo+ID4gPiA+ID4gQ2M6ICJEYXZpZCBT
LiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0Pgo+ID4gPiA+ID4gQ2M6ICJNYXR0aGV3IFdp
bGNveCAoT3JhY2xlKSIgPHdpbGx5QGluZnJhZGVhZC5vcmc+Cj4gPiA+ID4gPiBDYzogR3VlbnRl
ciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+ID4gPiA+ID4gQ2M6IFl1ZUhhaWJpbmcgPHl1
ZWhhaWJpbmdAaHVhd2VpLmNvbT4KPiA+ID4gPiA+IENjOiBBYXJvIEtvc2tpbmVuIDxhYXJvLmtv
c2tpbmVuQGlraS5maT4KPiA+ID4gPiA+IENjOiBXYW1idWkgS2FydWdhIDx3YW1idWkua2FydWdh
eEBnbWFpbC5jb20+Cj4gPiA+ID4gPiBDYzogSnVsaWEgTGF3YWxsIDxqdWxpYS5sYXdhbGxAbGlw
Ni5mcj4KPiA+ID4gPiA+IENjOiBGbG9yaWFuIFdlc3RwaGFsIDxmd0BzdHJsZW4uZGU+Cj4gPiA+
ID4gPiBDYzogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4KPiA+ID4g
PiA+IENjOiBCcmFuZGVuIEJvbmFieSA8YnJhbmRvbmJvbmFieTk0QGdtYWlsLmNvbT4KPiA+ID4g
PiA+IENjOiAiUGV0ciDFoHRldGlhciIgPHluZXp6QHRydWUuY3o+Cj4gPiA+ID4gPiBDYzogU2Fu
ZHJvIFZvbGVyeSA8c2FuZHJvQHZvbGVyeS5jb20+Cj4gPiA+ID4gPiBDYzogUGF1bCBCdXJ0b24g
PHBhdWxidXJ0b25Aa2VybmVsLm9yZz4KPiA+ID4gPiA+IENjOiBEYW4gQ2FycGVudGVyIDxkYW4u
Y2FycGVudGVyQG9yYWNsZS5jb20+Cj4gPiA+ID4gPiBDYzogR2lvdmFubmkgR2hlcmRvdmljaCA8
Ym9iZGM5NjY0QHNlem5hbS5jej4KPiA+ID4gPiA+IENjOiBWYWxlcnkgSXZhbm92IDxpdmFsZXJ5
MTExQGdtYWlsLmNvbT4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1h
biA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gPiA+ID4gCj4gPiA+ID4gQWNrZWQtYnk6
IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVzLm5ldD4KPiA+ID4gCj4gPiA+IFBsZWFzZSBj
YW4gd2Uga2VlcCB0aGlzIGRyaXZlci4gV2UgZG8gaGF2ZSBwbGF0Zm9ybXMgdXNpbmcgaXQgYW5k
IHdlCj4gPiA+IHdvdWxkIGxpa2UgaXQgdG8gc3RheSBhcm91bmQuCj4gPiA+IAo+ID4gPiBDbGVh
cmx5IHdlJ2xsIG5lZWQgdG8gc29ydCB0aGluZ3Mgb3V0IHRvIGEgcG9pbnQgd2hlcmUgdGhleSBi
dWlsZAo+ID4gPiBzdWNjZXNzZnVsbHkuIFdlJ3ZlIGJlZW4gaG9waW5nIHRvIHNlZSB0aGlzIG1v
dmUgb3V0IG9mIHN0YWdpbmcgZXZlcgo+ID4gPiBzaW5jZSB3ZSBzZWxlY3RlZCBDYXZpdW0gYXMg
YSB2ZW5kb3IuCj4gPiAKPiA+IEdyZWF0LCBjYW4geW91IHNlbmQgbWUgYSBwYXRjaHNldCB0aGF0
IHJldmVydHMgdGhpcyBhbmQgZml4ZXMgdGhlIGJ1aWxkCj4gPiBpc3N1ZXMgYW5kIGFjY2VwdCBt
YWludGFpbmVyc2hpcCBvZiB0aGUgY29kZT8KPiA+IAo+IAo+IFllcCB3aWxsIGRvLgo+IAo+IE9u
IFR1ZSwgMjAyMC0wMi0wNCBhdCAxMDoyMSArMDMwMCwgRGFuIENhcnBlbnRlciB3cm90ZToKPiA+
IE15IGFkdmljZSBpcyB0byBkZWxldGUgYWxsIHRoZSBDT01QSUxFX1RFU1QgY29kZS4gIFRoYXQg
c3R1ZmYgd2FzIGEKPiA+IGNvbnN0YW50IHNvdXJjZSBvZiBjb25mdXNpb24gYW5kIGhlYWRhY2hl
cy4KPiAKPiBJIHdhcyBhbHNvIGdvaW5nIHRvIHN1Z2dlc3QgdGhpcy4gU2luY2UgdGhlIENPTVBJ
TEVfVEVTVCBoYXMgYmVlbiBhCj4gc291cmNlIG9mIHRyb3VibGUgSSB3YXMgZ29pbmcgdG8gcHJv
cG9zZSBkcm9wcGluZyB0aGUgfHwgQ09NUElMRV9URVNUCj4gZnJvbSB0aGUgS2NvbmZpZyBmb3Ig
dGhlIG9jdGVvbiBkcml2ZXJzLgoKTm90IGhhdmluZyBpdCBhbHNvIGNhdXNlcyBwcm9ibGVtcy4g
IEkgZGlkbid0IG9yaWdpbmFsbHkgYWRkIGl0IGZvcgpzaGl0cyBhbmQgZ2lnZ2xlcy4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
