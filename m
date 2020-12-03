Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8432CD0BB
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 09:05:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A617A8777D;
	Thu,  3 Dec 2020 08:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tr3CWipFSXn; Thu,  3 Dec 2020 08:05:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9737D87753;
	Thu,  3 Dec 2020 08:05:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C768A1BF86D
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 08:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C2DEC8771C
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 08:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ftcHIN9Esoqh for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 08:05:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7D9187705
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 08:05:27 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id x16so2080745ejj.7
 for <devel@driverdev.osuosl.org>; Thu, 03 Dec 2020 00:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FZ8VxZZvqmh6ehr3KHE/PiRk3db+weOkpDGOlsh3YO8=;
 b=haDseJv+D02T10aLAxQHXG0BsYACsfkijqaB+ELZmfch2JYU9g6y9ryqDyIqWShXaW
 yaAZ88xKKVmpIrZKV/qetu3zM2AbVORk0wYWL03XQMh8ss+hr7Dc6CnNOdvjOspJC/vQ
 R2df0RgSro0FHNGu8o3DpusAvPeMobIgNjOfc7hfwHJ6Nvy0U69h0GmKMctPOdP8JHuK
 uCRMiqbef850rMYfMmIEUS0TzdqaTlcSg4Jgua9sT1AuBgZSfdy1txMa/Fszl/iCAsRa
 6RBF8zj3OIpntYgPprvZoROYfpZUKnhmmTVDrR3O2ZTkmVat83g3y0aDOoH39HHPuS4h
 RbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FZ8VxZZvqmh6ehr3KHE/PiRk3db+weOkpDGOlsh3YO8=;
 b=myvtPBAFgASUMZJMhi/Oa+S1cElvMuepnMgeH2OpC/wNljMLCZMOK2LIT+wOwxtsqM
 wPof4GIzyrzG/ayDYhqOYVxUmUDv/RveyJ/PsktZQR3hT7Dk72oNLvbmVfbn4dm64/UP
 g2/IcD0R61mI8R26jVftmVhijZke6UHVca+VAl1i7hEwAE7qFwnDyn1+Klwx0EOn0Fx5
 yuRtWgyLCxShvFh9NcGyKfTwn062f5OzaJh4uDa2MCoQY+o40L+mY6u7nucVp/UPXZrK
 2YfmAjpR8QQhNiurprv1N6Qt4NB1QM8toYMx7IySfQlUSojX7H4HLfWCI85JBeur6d7Z
 ZE8g==
X-Gm-Message-State: AOAM531MWuGQK4dbdWIz5XEo9TeF0jd0PKn3U0GwmOEBnjYk4I09YLXl
 vKwsYhHffL0RldxcteVz6MGB6rgxwSTQ6z+RydicnQ==
X-Google-Smtp-Source: ABdhPJxP2EJznI3pbg+Rqtm4SZQefIKFXf0kkiRRTqzbUDyEG5oMEZvNtOYbyFNg3cm8vTl+G0cfLIdKavT7T0DOD1k=
X-Received: by 2002:a17:906:7f01:: with SMTP id
 d1mr1414079ejr.429.1606982726027; 
 Thu, 03 Dec 2020 00:05:26 -0800 (PST)
MIME-Version: 1.0
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-2-nsaenzjulienne@suse.de>
In-Reply-To: <20201123183833.18750-2-nsaenzjulienne@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 3 Dec 2020 09:05:15 +0100
Message-ID: <CAMpxmJX6zdoYek2THEj2x8ycJYz-bxqE_5RnOz1sYv0vwLSFpA@mail.gmail.com>
Subject: Re: [PATCH v5 01/11] firmware: raspberrypi: Keep count of all
 consumers
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 linux-devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Input <linux-input@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBOb3YgMjMsIDIwMjAgYXQgNzozOCBQTSBOaWNvbGFzIFNhZW56IEp1bGllbm5lCjxu
c2FlbnpqdWxpZW5uZUBzdXNlLmRlPiB3cm90ZToKPgo+IFdoZW4gdW5iaW5kaW5nIHRoZSBmaXJt
d2FyZSBkZXZpY2Ugd2UgbmVlZCB0byBtYWtlIHN1cmUgaXQgaGFzIG5vCj4gY29uc3VtZXJzIGxl
ZnQuIE90aGVyd2lzZSB3ZSdkIGxlYXZlIHRoZW0gd2l0aCBhIGZpcm13YXJlIGhhbmRsZQo+IHBv
aW50aW5nIGF0IGZyZWVkIG1lbW9yeS4KPgo+IEtlZXAgYSByZWZlcmVuY2UgY291bnQgb2YgYWxs
IGNvbnN1bWVycyBhbmQgaW50cm9kdWNlIHJwaV9maXJtd2FyZV9wdXQoKQo+IHdoaWNoIHdpbGwg
cGVybWl0IGF1dG9tYXRpY2FsbHkgZGVjcmVhc2UgdGhlIHJlZmVyZW5jZSBjb3VudCB1cG9uCj4g
dW5iaW5kaW5nIGNvbnN1bWVyIGRyaXZlcnMuCj4KPiBTdWdnZXN0ZWQtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gU2lnbmVkLW9mZi1ieTog
Tmljb2xhcyBTYWVueiBKdWxpZW5uZSA8bnNhZW56anVsaWVubmVAc3VzZS5kZT4KPiAtLS0KPgo+
IENoYW5nZXMgc2luY2UgdjM6Cj4gLSBVc2Uga3JlZiBpbnN0ZWFkIG9mIHdhaXRpbmcgb24gcmVm
Y291bnQKPgo+ICBkcml2ZXJzL2Zpcm13YXJlL3Jhc3BiZXJyeXBpLmMgICAgICAgICAgICAgfCAz
NyArKysrKysrKysrKysrKysrKysrLS0tCj4gIGluY2x1ZGUvc29jL2JjbTI4MzUvcmFzcGJlcnJ5
cGktZmlybXdhcmUuaCB8ICAyICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL3Jhc3Bi
ZXJyeXBpLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3Jhc3BiZXJyeXBpLmMKPiBpbmRleCAzMDI1OWRj
OWI4MDUuLmVkNzkzYWVmNzg1MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJlL3Jhc3Bi
ZXJyeXBpLmMKPiArKysgYi9kcml2ZXJzL2Zpcm13YXJlL3Jhc3BiZXJyeXBpLmMKPiBAQCAtNyw2
ICs3LDcgQEAKPiAgICovCj4KPiAgI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXBwaW5nLmg+Cj4gKyNp
bmNsdWRlIDxsaW51eC9rcmVmLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tYWlsYm94X2NsaWVudC5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZl9wbGF0
Zm9ybS5oPgo+IEBAIC0yNyw2ICsyOCw4IEBAIHN0cnVjdCBycGlfZmlybXdhcmUgewo+ICAgICAg
ICAgc3RydWN0IG1ib3hfY2hhbiAqY2hhbjsgLyogVGhlIHByb3BlcnR5IGNoYW5uZWwuICovCj4g
ICAgICAgICBzdHJ1Y3QgY29tcGxldGlvbiBjOwo+ICAgICAgICAgdTMyIGVuYWJsZWQ7Cj4gKwo+
ICsgICAgICAgc3RydWN0IGtyZWYgY29uc3VtZXJzOwo+ICB9Owo+Cj4gIHN0YXRpYyBERUZJTkVf
TVVURVgodHJhbnNhY3Rpb25fbG9jayk7Cj4gQEAgLTIyNSwxMiArMjI4LDI3IEBAIHN0YXRpYyB2
b2lkIHJwaV9yZWdpc3Rlcl9jbGtfZHJpdmVyKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtMSwgTlVMTCwgMCk7Cj4g
IH0KPgo+ICtzdGF0aWMgdm9pZCBycGlfZmlybXdhcmVfZGVsZXRlKHN0cnVjdCBrcmVmICprcmVm
KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdyA9IGNvbnRhaW5lcl9vZihr
cmVmLCBzdHJ1Y3QgcnBpX2Zpcm13YXJlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY29uc3VtZXJzKTsKPiArCj4gKyAgICAgICBtYm94X2ZyZWVfY2hh
bm5lbChmdy0+Y2hhbik7Cj4gKyAgICAgICBrZnJlZShmdyk7Cj4gK30KPiArCj4gK3ZvaWQgcnBp
X2Zpcm13YXJlX3B1dChzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdykKPiArewo+ICsgICAgICAga3Jl
Zl9wdXQoJmZ3LT5jb25zdW1lcnMsIHJwaV9maXJtd2FyZV9kZWxldGUpOwo+ICt9Cj4gK0VYUE9S
VF9TWU1CT0xfR1BMKHJwaV9maXJtd2FyZV9wdXQpOwo+ICsKPiAgc3RhdGljIGludCBycGlfZmly
bXdhcmVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+ICAgICAgICAg
c3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiAgICAgICAgIHN0cnVjdCBycGlfZmly
bXdhcmUgKmZ3Owo+Cj4gLSAgICAgICBmdyA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqZncp
LCBHRlBfS0VSTkVMKTsKCk9uZSBuaXQgZnJvbSBteSBzaWRlOiBtYXliZSBhZGQgYSBjb21tZW50
IGhlcmUgc2F5aW5nIHRoYXQgeW91IHJlYWxseQp3YW50IHRvIHVzZSBub24tbWFuYWdlZCBremFs
bG9jKCkgYmVjYXVzZSB5b3UncmUgZ29pbmcgdG8gZ2V0IHBlb3BsZQpibGluZGx5IGNvbnZlcnRp
bmcgaXQgdG8gZGV2bV9remFsbG9jKCkgdmVyeSBzb29uLgoKQmFydG9zegoKPiArICAgICAgIGZ3
ID0ga3phbGxvYyhzaXplb2YoKmZ3KSwgR0ZQX0tFUk5FTCk7Cj4gICAgICAgICBpZiAoIWZ3KQo+
ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPgo+IEBAIC0yNDcsNiArMjY1LDcgQEAg
c3RhdGljIGludCBycGlfZmlybXdhcmVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiAgICAgICAgIH0KPgo+ICAgICAgICAgaW5pdF9jb21wbGV0aW9uKCZmdy0+Yyk7Cj4gKyAg
ICAgICBrcmVmX2luaXQoJmZ3LT5jb25zdW1lcnMpOwo+Cj4gICAgICAgICBwbGF0Zm9ybV9zZXRf
ZHJ2ZGF0YShwZGV2LCBmdyk7Cj4KPiBAQCAtMjc1LDI1ICsyOTQsMzUgQEAgc3RhdGljIGludCBy
cGlfZmlybXdhcmVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAg
ICBycGlfaHdtb24gPSBOVUxMOwo+ICAgICAgICAgcGxhdGZvcm1fZGV2aWNlX3VucmVnaXN0ZXIo
cnBpX2Nsayk7Cj4gICAgICAgICBycGlfY2xrID0gTlVMTDsKPiAtICAgICAgIG1ib3hfZnJlZV9j
aGFubmVsKGZ3LT5jaGFuKTsKPiArCj4gKyAgICAgICBycGlfZmlybXdhcmVfcHV0KGZ3KTsKPgo+
ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+ICAvKioKPiAtICogcnBpX2Zpcm13YXJlX2dldCAt
IEdldCBwb2ludGVyIHRvIHJwaV9maXJtd2FyZSBzdHJ1Y3R1cmUuCj4gICAqIEBmaXJtd2FyZV9u
b2RlOiAgICBQb2ludGVyIHRvIHRoZSBmaXJtd2FyZSBEZXZpY2UgVHJlZSBub2RlLgo+ICAgKgo+
ICsgKiBUaGUgcmVmZXJlbmNlIHRvIHJwaV9maXJtd2FyZSBoYXMgdG8gYmUgcmVsZWFzZWQgd2l0
aCBycGlfZmlybXdhcmVfcHV0KCkuCj4gKyAqCj4gICAqIFJldHVybnMgTlVMTCBpcyB0aGUgZmly
bXdhcmUgZGV2aWNlIGlzIG5vdCByZWFkeS4KPiAgICovCj4gIHN0cnVjdCBycGlfZmlybXdhcmUg
KnJwaV9maXJtd2FyZV9nZXQoc3RydWN0IGRldmljZV9ub2RlICpmaXJtd2FyZV9ub2RlKQo+ICB7
Cj4gICAgICAgICBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gb2ZfZmluZF9kZXZpY2Vf
Ynlfbm9kZShmaXJtd2FyZV9ub2RlKTsKPiArICAgICAgIHN0cnVjdCBycGlfZmlybXdhcmUgKmZ3
Owo+Cj4gICAgICAgICBpZiAoIXBkZXYpCj4gICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+
Cj4gLSAgICAgICByZXR1cm4gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gKyAgICAgICBm
dyA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+ICsgICAgICAgaWYgKCFmdykKPiArICAg
ICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gKwo+ICsgICAgICAgaWYgKCFrcmVmX2dldF91bmxl
c3NfemVybygmZnctPmNvbnN1bWVycykpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+
ICsKPiArICAgICAgIHJldHVybiBmdzsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChycGlfZmly
bXdhcmVfZ2V0KTsKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3NvYy9iY20yODM1L3Jhc3BiZXJy
eXBpLWZpcm13YXJlLmggYi9pbmNsdWRlL3NvYy9iY20yODM1L3Jhc3BiZXJyeXBpLWZpcm13YXJl
LmgKPiBpbmRleCBjYzljZGJjNjY0MDMuLmZkZmVmN2ZlNDBkZiAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL3NvYy9iY20yODM1L3Jhc3BiZXJyeXBpLWZpcm13YXJlLmgKPiArKysgYi9pbmNsdWRlL3Nv
Yy9iY20yODM1L3Jhc3BiZXJyeXBpLWZpcm13YXJlLmgKPiBAQCAtMTQwLDYgKzE0MCw3IEBAIGlu
dCBycGlfZmlybXdhcmVfcHJvcGVydHkoc3RydWN0IHJwaV9maXJtd2FyZSAqZncsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICB1MzIgdGFnLCB2b2lkICpkYXRhLCBzaXplX3QgbGVuKTsKPiAg
aW50IHJwaV9maXJtd2FyZV9wcm9wZXJ0eV9saXN0KHN0cnVjdCBycGlfZmlybXdhcmUgKmZ3LAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpkYXRhLCBzaXplX3QgdGFnX3Np
emUpOwo+ICt2b2lkIHJwaV9maXJtd2FyZV9wdXQoc3RydWN0IHJwaV9maXJtd2FyZSAqZncpOwo+
ICBzdHJ1Y3QgcnBpX2Zpcm13YXJlICpycGlfZmlybXdhcmVfZ2V0KHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqZmlybXdhcmVfbm9kZSk7Cj4gICNlbHNlCj4gIHN0YXRpYyBpbmxpbmUgaW50IHJwaV9maXJt
d2FyZV9wcm9wZXJ0eShzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdywgdTMyIHRhZywKPiBAQCAtMTU0
LDYgKzE1NSw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IHJwaV9maXJtd2FyZV9wcm9wZXJ0eV9saXN0
KHN0cnVjdCBycGlfZmlybXdhcmUgKmZ3LAo+ICAgICAgICAgcmV0dXJuIC1FTk9TWVM7Cj4gIH0K
Pgo+ICtzdGF0aWMgaW5saW5lIHZvaWQgcnBpX2Zpcm13YXJlX3B1dChzdHJ1Y3QgcnBpX2Zpcm13
YXJlICpmdykgeyB9Cj4gIHN0YXRpYyBpbmxpbmUgc3RydWN0IHJwaV9maXJtd2FyZSAqcnBpX2Zp
cm13YXJlX2dldChzdHJ1Y3QgZGV2aWNlX25vZGUgKmZpcm13YXJlX25vZGUpCj4gIHsKPiAgICAg
ICAgIHJldHVybiBOVUxMOwo+IC0tCj4gMi4yOS4yCj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
