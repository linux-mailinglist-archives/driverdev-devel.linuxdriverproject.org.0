Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2439132267
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jan 2020 10:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8279F878D7;
	Tue,  7 Jan 2020 09:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DgEt0C+CGdUx; Tue,  7 Jan 2020 09:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B50A087824;
	Tue,  7 Jan 2020 09:32:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A438F1BF2AB
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 09:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A031420010
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 09:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TkR1Am16UFPy for <devel@linuxdriverproject.org>;
 Tue,  7 Jan 2020 09:31:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 1F9A82000B
 for <devel@driverdev.osuosl.org>; Tue,  7 Jan 2020 09:31:58 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id x1so42017855qkl.12
 for <devel@driverdev.osuosl.org>; Tue, 07 Jan 2020 01:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FHSr1IYP6sHrnY75lBxGflLY4NIZIBc6Izm2kKVNa1E=;
 b=s1NMDq9/sBrmA5XoPocAi78NArZo9kNNswJunowCk2YHw7EZeh5mcuiJsdOUmT9dQ9
 zdxvvuLWbBaXFnUjhtCJaoowFYzNm24hnlXcLDPpFk+bp7M8K7aVIvNyMBmZcbCd5Jwa
 Qca0XIrWeeSWpoZbTEIkBbrx+36kVsDEBPwz066sTFsU7DAzAxdOOVsucbBtCvUOPYn4
 8yGu6Jaz+pdyxk3zBicmw8bKsQ1c+bYEkuyCDf4v9wyCLliimHSBuFvBvVHhCytSU0yu
 Rw+ggJEMZDX7Li5zFP5eDDI70qlIk+2MhudI1L2CE968YPlvrEZanauHkhEpTHRpn5XS
 qlPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FHSr1IYP6sHrnY75lBxGflLY4NIZIBc6Izm2kKVNa1E=;
 b=BfgJ3DH9UBupKnFSDvnPf2+yxEc9lKtMGjicjNKa5bTuM1ff1NxKirLsvYB9eGwkOU
 xZdJJytcSxnXMP0jsZjg8gYdod4RO0GNl2YbSh4Fbdf5mfOFGG3K20HWm4uSU5x/mGzc
 bv9QKJ3/3tFyFJSVa5NNiKOyvjTYj14r7JRIJ2KjP6Pjid0NrU25bsbaq5poNZAe9z4n
 fZBsZjvy7LHdgVBqyucYN01QXp35v5+A0dPPS0TS8f76ITw7cHLZAb7C3ILYPfr3EZ36
 y3gG76jlo22GRWlcwnA8XwfolELPr9e6rmpT2/+a4XawkBHIvXU+eD5/u7ttbKYnhARj
 58+g==
X-Gm-Message-State: APjAAAXNFu692RiiXD9A3fZNM4SpWHDjzvMfx2TO51tYqfbgKXd8n5RY
 AG5xMVMtRiAQ4c07A254JmdjFRg9GDRGt2fSRcNSiQ==
X-Google-Smtp-Source: APXvYqyzh/t07P9vyliAzsEnQQ0oKUIkV6IpBTsB8uwurKy6zHOgxpt9G9ywFzEef2V/hnj16hQ6sDb/IrlD+O/aKE8=
X-Received: by 2002:a37:6fc4:: with SMTP id k187mr74675027qkc.21.1578389517217; 
 Tue, 07 Jan 2020 01:31:57 -0800 (PST)
MIME-Version: 1.0
References: <20191215183047.9414-1-digetx@gmail.com>
 <CACRpkdYAKS50-CNmE0nRNQanFxKejoHrwxho3fZXROoLZUb4+Q@mail.gmail.com>
 <CAMpxmJVi1hy6a72M7rAHP0AXW1Z4cGp8H0O6ayLMwFm9UL3WPQ@mail.gmail.com>
 <CACRpkdaNAzpDu6uxETnuDGxnXTJTh0LhcE=9DL9-Kwi4butZLA@mail.gmail.com>
In-Reply-To: <CACRpkdaNAzpDu6uxETnuDGxnXTJTh0LhcE=9DL9-Kwi4butZLA@mail.gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 7 Jan 2020 10:31:46 +0100
Message-ID: <CAMpxmJXbR8=esuKhMKzD8LGFC6_Rz4uQXJ2egCXGLj_eauxS5g@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
To: Linus Walleij <linus.walleij@linaro.org>
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
Cc: devel@driverdev.osuosl.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

d3QuLCA3IHN0eSAyMDIwIG8gMTA6MjkgTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5h
cm8ub3JnPiBuYXBpc2HFgihhKToKPgo+IE9uIFR1ZSwgSmFuIDcsIDIwMjAgYXQgOToyNSBBTSBC
YXJ0b3N6IEdvbGFzemV3c2tpCj4gPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+IHdyb3RlOgo+
Cj4gPiBwb24uLCA2IHN0eSAyMDIwIG8gMjM6NTkgTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVp
akBsaW5hcm8ub3JnPiBuYXBpc2HFgihhKToKPiA+ID4gT24gU3VuLCBEZWMgMTUsIDIwMTkgYXQg
NzozMSBQTSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+
ID4gPiA+IEkgd2FzIGludmVzdGlnYXRpbmcgd2h5IENQVSBoYW5ncyBkdXJpbmcgb2YgR1BJTyBk
cml2ZXIgc3VzcGVuZCBhbmQgaW4KPiA+ID4gPiB0aGUgZW5kIGl0IHR1cm5lZCBvdXQgdGhhdCBp
dCBpcyBhIEJyb2FkY29tIFdpRmkgZHJpdmVyIHByb2JsZW0gYmVjYXVzZQo+ID4gPiA+IGl0IGtl
ZXBzIE9PQiB3YWtlLWludGVycnVwdCBlbmFibGVkIHdoaWxlIFdMQU4gaW50ZXJmYWNlIGlzIERP
V04gYW5kIHRoaXMKPiA+ID4gPiBtYXkgY2F1c2UgYSBiaXQgd2VpcmQgQ1BVIGhhbmcgb24gd3Jp
dGluZyB0byBJTlRfRU5CIHJlZ2lzdGVyIGR1cmluZyBvZgo+ID4gPiA+IEdQSU8gZHJpdmVyIHN1
c3BlbmQuIE1lYW53aGlsZSBJIGFsc28gbm90aWNlZCB0aGF0IGEgZmV3IHRoaW5ncyBjb3VsZCBi
ZQo+ID4gPiA+IGltcHJvdmVkIGluIHRoZSBkcml2ZXIsIHRoYXQncyB3aGF0IHRoaXMgc21hbGwg
c2VyaWVzIGFkZHJlc3Nlcy4KPiA+ID4gPgo+ID4gPiA+IERtaXRyeSBPc2lwZW5rbyAoMyk6Cj4g
PiA+ID4gICBncGlvOiB0ZWdyYTogVXNlIGdlbmVyaWMgcmVhZGxfcmVsYXhlZC93cml0ZWxfcmVs
YXhlZCBhY2Nlc3NvcnMKPiA+ID4gPiAgIGdwaW86IHRlZ3JhOiBQcm9wZXJseSBoYW5kbGUgaXJx
X3NldF9pcnFfd2FrZSgpIGVycm9yCj4gPiA+ID4gICBncGlvOiB0ZWdyYTogVXNlIE5PSVJRIHBo
YXNlIGZvciBzdXNwZW5kL3Jlc3VtZQo+ID4gPgo+ID4gPiBBbGwgdGhyZWUgcGF0Y2hlcyBhcHBs
aWVkIHdpdGggVGhpZXJyeSdzIHJldmlldy90ZXN0IHRhZy4KPiA+ID4KPiA+ID4gWW91cnMsCj4g
PiA+IExpbnVzIFdhbGxlaWoKPiA+Cj4gPiBVZ2gsIEkgbm93IG5vdGljZWQgSSByZXNwb25kZWQg
dG8gVGhpZXJyeSBvbmx5IGFmdGVyIGFwcGx5aW5nIHRoaXMgdG8gbXkgdHJlZS4KPiA+Cj4gPiBB
bnl3YXksIGl0IHNob3VsZG4ndCBiZSBhIHByb2JsZW0uIEknbGwgdGFrZSBtb3JlIGNhcmUgbmV4
dCB0aW1lLgo+Cj4gT0sgc2hhbGwgSSBkcm9wIHRoZSBwYXRjaGVzIGZyb20gbXkgdHJlZSB0aGVu
PyBObyBiaWcgZGVhbC4KPgoKSWYgeW91J3JlIGZpbmUgd2l0aCB0aGlzLCBzdXJlIQoKVGhhbmtz
IGEgbG90LApCYXJ0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
