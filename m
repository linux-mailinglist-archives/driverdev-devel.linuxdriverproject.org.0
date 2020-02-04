Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498F0152289
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 23:53:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21BB587263;
	Tue,  4 Feb 2020 22:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KrWrn+gkD3SI; Tue,  4 Feb 2020 22:53:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58BE186BC1;
	Tue,  4 Feb 2020 22:53:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C179A1BF5F8
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 22:53:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B7D3886BC1
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 22:53:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GcAJdGswn1v for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 22:53:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6432186BA1
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 22:53:34 +0000 (UTC)
Received: from localhost (unknown [167.98.85.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB8A32084E;
 Tue,  4 Feb 2020 22:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580856814;
 bh=oxwJvXSqIfXICehj/SghLfgVcbieW0oDOVxIwdXphck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=suYV9xqyxODkhiSyMOMTvwm0iiZhH1MYizjV4dK0YLem/fMLCJkqGNKxe3W5QxGxK
 BXpilZWtXehy0JhBNdivHZurUzUc6VDgIJXWNMSPPrpgzMcPQ1VBqMltLFN9+0176j
 O/5Jr74Xcj9wVm7X3II2m7DeJH/ZbefC6Rek0kiw=
Date: Tue, 4 Feb 2020 22:53:32 +0000
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20200204225332.GC1128093@kroah.com>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
 <20200204203116.GN8731@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204203116.GN8731@bombadil.infradead.org>
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
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>, "fw@strlen.de" <fw@strlen.de>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "sandro@volery.com" <sandro@volery.com>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMTI6MzE6MTZQTSAtMDgwMCwgTWF0dGhldyBXaWxjb3gg
d3JvdGU6Cj4gT24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDg6MDY6MTRQTSArMDAwMCwgQ2hyaXMg
UGFja2hhbSB3cm90ZToKPiA+IE9uIFR1ZSwgMjAyMC0wMi0wNCBhdCAwNzowOSArMDAwMCwgZ3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmcgd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgRmViIDA0LCAyMDIw
IGF0IDA0OjAyOjE1QU0gKzAwMDAsIENocmlzIFBhY2toYW0gd3JvdGU6Cj4gPiA+ID4gSSdsbCBw
aXBlIHVwIG9uIHRoaXMgdGhyZWFkIHRvbwo+ID4gPiA+IAo+ID4gPiA+IE9uIFR1ZSwgMjAxOS0x
Mi0xMCBhdCAwMjo0MiAtMDgwMCwgR3VlbnRlciBSb2VjayB3cm90ZToKPiA+ID4gPiA+IE9uIDEy
LzEwLzE5IDE6MTUgQU0sIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToKPiA+ID4gPiA+ID4gVGhp
cyBkcml2ZXIgaGFzIGJlZW4gaW4gdGhlIHRyZWUgc2luY2UgMjAwOSB3aXRoIG5vIHJlYWwgbW92
ZW1lbnQgdG8gZ2V0Cj4gPiA+ID4gPiA+IGl0IG91dC4gIE5vdyBpdCBpcyBzdGFydGluZyB0byBj
YXVzZSBidWlsZCBpc3N1ZXMgYW5kIG90aGVyIHByb2JsZW1zIGZvcgo+ID4gPiA+ID4gPiBwZW9w
bGUgd2hvIHdhbnQgdG8gZml4IGNvZGluZyBzdHlsZSBwcm9ibGVtcywgYnV0IGNhbiBub3QgYWN0
dWFsbHkgYnVpbGQKPiA+ID4gPiA+ID4gaXQuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBBcyBu
b3RoaW5nIGlzIGhhcHBlbmluZyBoZXJlLCBqdXN0IGRlbGV0ZSB0aGUgbW9kdWxlIGVudGlyZWx5
Lgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gUmVwb3J0ZWQtYnk6IEd1ZW50ZXIgUm9lY2sgPGxp
bnV4QHJvZWNrLXVzLm5ldD4KPiA+ID4gPiA+ID4gQ2M6IERhdmlkIERhbmV5IDxkZGFuZXlAY2F2
aXVtbmV0d29ya3MuY29tPgo+ID4gPiA+ID4gPiBDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVt
QGRhdmVtbG9mdC5uZXQ+Cj4gPiA+ID4gPiA+IENjOiAiTWF0dGhldyBXaWxjb3ggKE9yYWNsZSki
IDx3aWxseUBpbmZyYWRlYWQub3JnPgo+ID4gPiA+ID4gPiBDYzogR3VlbnRlciBSb2VjayA8bGlu
dXhAcm9lY2stdXMubmV0Pgo+ID4gPiA+ID4gPiBDYzogWXVlSGFpYmluZyA8eXVlaGFpYmluZ0Bo
dWF3ZWkuY29tPgo+ID4gPiA+ID4gPiBDYzogQWFybyBLb3NraW5lbiA8YWFyby5rb3NraW5lbkBp
a2kuZmk+Cj4gPiA+ID4gPiA+IENjOiBXYW1idWkgS2FydWdhIDx3YW1idWkua2FydWdheEBnbWFp
bC5jb20+Cj4gPiA+ID4gPiA+IENjOiBKdWxpYSBMYXdhbGwgPGp1bGlhLmxhd2FsbEBsaXA2LmZy
Pgo+ID4gPiA+ID4gPiBDYzogRmxvcmlhbiBXZXN0cGhhbCA8ZndAc3RybGVuLmRlPgo+ID4gPiA+
ID4gPiBDYzogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4KPiA+ID4g
PiA+ID4gQ2M6IEJyYW5kZW4gQm9uYWJ5IDxicmFuZG9uYm9uYWJ5OTRAZ21haWwuY29tPgo+ID4g
PiA+ID4gPiBDYzogIlBldHIgxaB0ZXRpYXIiIDx5bmV6ekB0cnVlLmN6Pgo+ID4gPiA+ID4gPiBD
YzogU2FuZHJvIFZvbGVyeSA8c2FuZHJvQHZvbGVyeS5jb20+Cj4gPiA+ID4gPiA+IENjOiBQYXVs
IEJ1cnRvbiA8cGF1bGJ1cnRvbkBrZXJuZWwub3JnPgo+ID4gPiA+ID4gPiBDYzogRGFuIENhcnBl
bnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgo+ID4gPiA+ID4gPiBDYzogR2lvdmFubmkg
R2hlcmRvdmljaCA8Ym9iZGM5NjY0QHNlem5hbS5jej4KPiA+ID4gPiA+ID4gQ2M6IFZhbGVyeSBJ
dmFub3YgPGl2YWxlcnkxMTFAZ21haWwuY29tPgo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBH
cmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBBY2tlZC1ieTogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+
ID4gPiA+IAo+ID4gPiA+IFBsZWFzZSBjYW4gd2Uga2VlcCB0aGlzIGRyaXZlci4gV2UgZG8gaGF2
ZSBwbGF0Zm9ybXMgdXNpbmcgaXQgYW5kIHdlCj4gPiA+ID4gd291bGQgbGlrZSBpdCB0byBzdGF5
IGFyb3VuZC4KPiA+ID4gPiAKPiA+ID4gPiBDbGVhcmx5IHdlJ2xsIG5lZWQgdG8gc29ydCB0aGlu
Z3Mgb3V0IHRvIGEgcG9pbnQgd2hlcmUgdGhleSBidWlsZAo+ID4gPiA+IHN1Y2Nlc3NmdWxseS4g
V2UndmUgYmVlbiBob3BpbmcgdG8gc2VlIHRoaXMgbW92ZSBvdXQgb2Ygc3RhZ2luZyBldmVyCj4g
PiA+ID4gc2luY2Ugd2Ugc2VsZWN0ZWQgQ2F2aXVtIGFzIGEgdmVuZG9yLgo+ID4gPiAKPiA+ID4g
R3JlYXQsIGNhbiB5b3Ugc2VuZCBtZSBhIHBhdGNoc2V0IHRoYXQgcmV2ZXJ0cyB0aGlzIGFuZCBm
aXhlcyB0aGUgYnVpbGQKPiA+ID4gaXNzdWVzIGFuZCBhY2NlcHQgbWFpbnRhaW5lcnNoaXAgb2Yg
dGhlIGNvZGU/Cj4gPiA+IAo+ID4gCj4gPiBZZXAgd2lsbCBkby4KPiA+IAo+ID4gT24gVHVlLCAy
MDIwLTAyLTA0IGF0IDEwOjIxICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+ID4gPiBNeSBh
ZHZpY2UgaXMgdG8gZGVsZXRlIGFsbCB0aGUgQ09NUElMRV9URVNUIGNvZGUuICBUaGF0IHN0dWZm
IHdhcyBhCj4gPiA+IGNvbnN0YW50IHNvdXJjZSBvZiBjb25mdXNpb24gYW5kIGhlYWRhY2hlcy4K
PiA+IAo+ID4gSSB3YXMgYWxzbyBnb2luZyB0byBzdWdnZXN0IHRoaXMuIFNpbmNlIHRoZSBDT01Q
SUxFX1RFU1QgaGFzIGJlZW4gYQo+ID4gc291cmNlIG9mIHRyb3VibGUgSSB3YXMgZ29pbmcgdG8g
cHJvcG9zZSBkcm9wcGluZyB0aGUgfHwgQ09NUElMRV9URVNUCj4gPiBmcm9tIHRoZSBLY29uZmln
IGZvciB0aGUgb2N0ZW9uIGRyaXZlcnMuCj4gCj4gTm90IGhhdmluZyBpdCBhbHNvIGNhdXNlcyBw
cm9ibGVtcy4gIEkgZGlkbid0IG9yaWdpbmFsbHkgYWRkIGl0IGZvcgo+IHNoaXRzIGFuZCBnaWdn
bGVzLgoKWWVzLCB3aXRob3V0IHRoaXMgb3B0aW9uLCB0aGUgY29kZSBiaXQtcm90dGVkIGhvcnJp
Ymx5LiAgSXQgbmVlZHMgdG8gYmUKYWJsZSB0byBiZSBidWlsdCBvdGhlcndpc2UgcGVvcGxlIHdp
bGwgY2hhbmdlIHRoZSBjb2RlIGFuZCBpdCB3aWxsIGJyZWFrCmFuZCBubyBvbmUgd2lsbCBub3Rp
Y2UgZXhjZXB0IEd1ZW50ZXIncyBidWlsZCBib3RzIGFuZCB0aGVuIG5vIG9uZSB3aWxsCmZpeCBp
dCA6KAoKaS5lLiBleGFjdGx5IHdoYXQgd2FzIGhhcHBlbmluZyBiZWZvcmUuLi4KClNvIHRoaXMg
bmVlZHMgdG8gYWxsIGJlIGZpeGVkIHVwIHByb3Blcmx5LCBhbmQgcmVhbGx5LCBzaG91bGQgYmUg
bWVyZ2VkCnRvIHRoZSAicmVhbCIgcGFydCBvZiB0aGUga2VybmVsLi4uCgp0aGFua3MsCgpncmVn
IGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
