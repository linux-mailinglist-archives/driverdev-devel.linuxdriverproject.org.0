Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BC8FB9D3
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 21:29:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C73C488B31;
	Wed, 13 Nov 2019 20:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bgBDC0hkTtOf; Wed, 13 Nov 2019 20:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 199CB88B30;
	Wed, 13 Nov 2019 20:29:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B0391BF3BB
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 20:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0AB2589680
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 20:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zi96nZSnIGV for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 20:29:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E2BFD8967F
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 20:29:24 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id d7so1549976pls.3
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 12:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BpI7rWMSHzFTGfHyMSN5R3kPLCqXyEPhKO3la4d16OQ=;
 b=eg+VJYItPetvKOSgCrq/sNW7WwTY3kxdH+YhR9fen9sve1aK3FtIbKcQTO0IQbMhfz
 xj2OVHt1jq5wv0W4aontCG7tgepWAzihx3AG0OA0OgytRGQaNyMwkfFjll/Cm/dOdu8+
 jFExGxtwV8upYbz/p/teTUtkKU1uf7JnPz6edZEGr5LmN+w0zhLcvIEKK1nAfkcXNRsv
 MoZ0kZrqmZgwDHLIUGBOEBVO+riffrAogFzzTOeEx0c81zbvUiSG6mSrDBr7z9BSoXuE
 OaO9hLJv/JQcCEVoCNx4u5sAyYVL+ewVqxHw1FS6E1FiOKvegXxjqre1afxcBOAogkIE
 F4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BpI7rWMSHzFTGfHyMSN5R3kPLCqXyEPhKO3la4d16OQ=;
 b=Rj7aS+LyOPucxh29Ze51CeIDXj9OMGTyLleKztFmVnp5l1x67Y0PIsV1ElC83YViBj
 xoMQkYBtVvM1tZ2VYKXgTtWjnPGVs4OAPIFdRTyHRberFTgUkUA+/ZLj9+Dip6Z70whE
 AcTOB61Au6ORiAUAv0pjxa3wrQhm6WDB3RqiGEEleSbZmLBsOrixA0jru290g2Svetum
 dYEU/6Lm3M2k0HAGtouSP10j6LDqiXEzV3qWn6gIz5HpfLmwzHye/jzfscrsrwbkako2
 i2z80PC256WlPex3C9KgueXJnErV6rnqXlemIAOy67aYFOOzulp0bsP6CGa6fc7waOBr
 JnSw==
X-Gm-Message-State: APjAAAWVjy6/2I+A8qTbWJip7HdjwxWgR0t49Esd8HJe78QceXKRbb/L
 UoEsUCRTkT5WbJajHQD5gRvoq5zf71yCbHDXXLCT+w==
X-Google-Smtp-Source: APXvYqzAIMKqT7jzeP7js7yPTsjzObT7zKZaDEjX/MnkO6bOeTBEn5u5NiaMDIpov9WFUYg3QAyjMlhXV3OEC47rLig=
X-Received: by 2002:a17:902:8c90:: with SMTP id
 t16mr5982398plo.56.1573676964025; 
 Wed, 13 Nov 2019 12:29:24 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191112230915.GA1931478@kroah.com>
In-Reply-To: <20191112230915.GA1931478@kroah.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 13 Nov 2019 15:29:12 -0500
Message-ID: <CAKvFj6o=tCxUahS614ZePo7r_z=ZVrjGtnVJ9+=t0Je-y0UdNg@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net,
 Stefan Wahren <wahrenst@gmx.net>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgNjowOSBQTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIE5vdiAxMSwgMjAxOSBhdCAxMjoxNDoyM1BN
IC0wNTAwLCBNYXJjZWxvIERpb3AtR29uemFsZXogd3JvdGU6Cj4gPiBUaGlzIGFsbG93cyB0aGUg
cmVtb3ZhbCBvZiB0aGUgc3RydWN0IHJwaV9maXJtd2FyZSogbWVtYmVyCj4gPiBmcm9tIHN0cnVj
dCB2Y2hpcV9kcnZkYXRhLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmNlbG8gRGlvcC1Hb256
YWxleiA8bWFyY2dvbnphbGV6QGdvb2dsZS5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vaW50ZXJmYWNl
L3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jICAgICAgICAgICB8IDE0ICsrKysrKysrKysrKyst
Cj4gPiAgLi4uL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV9hcm0uYyAg
fCAxNCAtLS0tLS0tLS0tLS0tLQo+ID4gIC4uLi92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hp
cV9hcm0vdmNoaXFfYXJtLmggIHwgIDEgLQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4KPiBUaGlzIGNvbW1pdCBicmVha3MgdGhlIGJ1aWxk
Ogo+Cj4gSW4gZnVuY3Rpb24g4oCYZnJlZV9wYWdlbGlzdOKAmSwKPiAgICAgaW5saW5lZCBmcm9t
IOKAmHZjaGlxX2NvbXBsZXRlX2J1bGvigJkgYXQgZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2Vydmlj
ZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjI1ODozOgo+IGRyaXZlcnMv
c3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfMjgzNV9hcm0u
Yzo1ODg6NDogd2FybmluZzogYXJndW1lbnQgMiBudWxsIHdoZXJlIG5vbi1udWxsIGV4cGVjdGVk
IFstV25vbm51bGxdCj4gICA1ODggfCAgICBtZW1jcHkoKGNoYXIgKilrbWFwKHBhZ2VzWzBdKSAr
Cj4gICAgICAgfCAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICA1ODkgfCAg
ICAgcGFnZWxpc3QtPm9mZnNldCwKPiAgICAgICB8ICAgICB+fn5+fn5+fn5+fn5+fn5+fgo+ICAg
NTkwIHwgICAgIGZyYWdtZW50cywKPiAgICAgICB8ICAgICB+fn5+fn5+fn5+Cj4gICA1OTEgfCAg
ICAgaGVhZF9ieXRlcyk7Cj4gICAgICAgfCAgICAgfn5+fn5+fn5+fn4KPgoKSSB0aGluayB0aGlz
IG1heSBiZSBhbiBpc3N1ZSB0aGF0IHdpbGwgc2hvdyB1cCBpZiBhbnlvbmUgaW4gdGhlIGZ1dHVy
ZQp0cmllcyBhZGRpbmcgY29kZSB0byB2Y2hpcV9wbGF0Zm9ybV9pbml0KCkgYmVmb3JlIGdfZnJh
Z21lbnRzX2Jhc2UgYW5kCmdfZnJhZ21lbnRzX3NpemUgYXJlIGFzc2lnbmVkLXRvIHRoYXQgaXMg
Z3VhcmFudGVlZCB0byByZXR1cm4gd2hlbgpDT05GSUdfUkFTUEJFUlJZUElfRklSTVdBUkUgaXMg
bm90IHNldCwgc2luY2UgdGhlc2UgbWFrZSB1cCB0aGUKZnJhZ21lbnRzIGFyZ3VtZW50IHRvIHRo
ZSBjYWxsIHRvIG1lbWNweSgpIGluIGZyZWVfcGFnZWxpc3QoKToKICAgICAgIGNoYXIgKmZyYWdt
ZW50cyA9IGdfZnJhZ21lbnRzX2Jhc2UgKwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKHBhZ2VsaXN0LT50eXBlIC0KUEFHRUxJU1RfUkVBRF9XSVRIX0ZSQUdNRU5U
UykgKgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ19mcmFnbWVu
dHNfc2l6ZTsKCkFkZGluZyB0aGUgbGluZSAicmV0dXJuIC0xOyIgdG8gdGhlIGJlZ2lubmluZyBv
ZiB2Y2hpcV9wbGF0Zm9ybV9pbml0KCkKcmVwcm9kdWNlcyB0aGUgd2FybmluZywgYnV0IGFkZGlu
ZyBpdCBqdXN0IGFmdGVyIGdfZnJhZ21lbnRzX3NpemUgaXMKYXNzaWduZWQtdG8gZG9lc24ndC4g
TWF5YmUgd29ydGggZml4aW5nIGluIGEgc2VwYXJhdGUgcGF0Y2guCgo+IFBsZWFzZSBiZSBtb3Jl
IGNhcmVmdWwgYW5kIGF0IGxlYXN0IHRlc3QgeW91ciBjaGFuZ2VzIGJlZm9yZSBzZW5kaW5nCj4g
dGhlbSBvdXQgOigKPgo+IGdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
