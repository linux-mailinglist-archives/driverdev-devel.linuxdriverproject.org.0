Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFF72A7A38
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 10:14:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACF34870B2;
	Thu,  5 Nov 2020 09:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a872WtLvCP4T; Thu,  5 Nov 2020 09:14:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DF5786C82;
	Thu,  5 Nov 2020 09:14:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B5AE1BF4E2
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 201B4860BE
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mRMjvZXa7PkT for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 09:13:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6038585078
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 09:13:58 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id dk16so1513919ejb.12
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 01:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cosNbBc+pGCwoieZsWO9CcMsgFAi+qgVJh6/ZaKe1v0=;
 b=h2AbCJ6xtX9calmobLzMDdUmOt4016ZAljqf+kWZm3SpJ5dyWf5xX8QV+8uAKO7KzB
 whVd90vtF4kEq0FjKmV2eXJCusoVmf8b1ZXm4g19A6c9d3zpTGecCZcl0xPaOrSMnUzM
 OGxi6KTPLoJsWq0pzXzySThLXXe1GQN0O9JNP7hJsN0mTV3NqA97jL96kLNinAgMKhRQ
 8LQz93+7bzMlzUxaAtidPL1DLIRzbOEahVB/7cnJeyFT+Us2VOVrMCBQcnomz5KE/6GC
 gF+l6kEcCMCIt86RD/mLxN3qSNhWZV0UIk0wGcZ/d2v9DKiSjhWGarH/Lc5p3RkZiIJ/
 zceA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cosNbBc+pGCwoieZsWO9CcMsgFAi+qgVJh6/ZaKe1v0=;
 b=r5ZfGY7raqVtSFE8/Y1w/eYsRPsa2Fzgi0lF2tbdM5wjU8ngUsgx/Nok4SLBGLG8o4
 jDFEBNDroK5CTjFleR/WXgnXyTFrd43DYB2F423NqOEzSlXfm8owka2N96U4idaXzbpH
 O/6XdjEt/RWXQBcItehZQOTYBOS7W07u6MEO8lMIABHI50H9o0ybCM8l9Y7ni97Z3V1y
 0sCcvG6k/EeSOtHrxFLKEy+8bP6OErSj75Pt3SrIcQMo1HqGAHVOj0pYa3YLP/FdC/hU
 17qqZLTEEvsTqTJQMM6Y+T3w2eKwtGTKTfTWhiL29UJPLQwki3ASEoj0j/1BGEPeXWNt
 fWEA==
X-Gm-Message-State: AOAM531mpQIUxmab/NJvWiL9DkqQIDDLLUqJfE/UowTP6hJq3PpJpKha
 ETPibpO0vpH6HPjdbnlk3UP98ryfBJ28yuWVIYldbw==
X-Google-Smtp-Source: ABdhPJyFgzr6/OtoGqHbIjxgJayFJFC6ooeiWsm56YhTmEcoAALq1JBufGgUh3laISQqZelpAaKQMgQ7rYi7EiPI/xk=
X-Received: by 2002:a17:907:420d:: with SMTP id
 oh21mr1350987ejb.429.1604567636515; 
 Thu, 05 Nov 2020 01:13:56 -0800 (PST)
MIME-Version: 1.0
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-2-nsaenzjulienne@suse.de>
In-Reply-To: <20201104103938.1286-2-nsaenzjulienne@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 5 Nov 2020 10:13:45 +0100
Message-ID: <CAMpxmJWJRcQQiLitJCLWKmhQVQWr3bMDY=td5FEn5uy2YZfwkA@mail.gmail.com>
Subject: Re: [PATCH v3 01/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
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

T24gV2VkLCBOb3YgNCwgMjAyMCBhdCAxMTozOSBBTSBOaWNvbGFzIFNhZW56IEp1bGllbm5lCjxu
c2FlbnpqdWxpZW5uZUBzdXNlLmRlPiB3cm90ZToKPgo+IFdoZW4gdW5iaW5kaW5nIHRoZSBmaXJt
d2FyZSBkZXZpY2Ugd2UgbmVlZCB0byBtYWtlIHN1cmUgaXQgaGFzIG5vCj4gY29uc3VtZXJzIGxl
ZnQuIE90aGVyd2lzZSB3ZSdkIGxlYXZlIHRoZW0gd2l0aCBhIGZpcm13YXJlIGhhbmRsZQo+IHBv
aW50aW5nIGF0IGZyZWVkIG1lbW9yeS4KPgo+IEtlZXAgYSByZWZlcmVuY2UgY291bnQgb2YgYWxs
IGNvbnN1bWVycyBhbmQgaW50cm9kdWNlCj4gZGV2bV9ycGlfZmlybXdhcmVfZ2V0KCkgd2hpY2gg
d2lsbCBhdXRvbWF0aWNhbGx5IGRlY3JlYXNlIHRoZSByZWZlcmVuY2UKPiBjb3VudCB1cG9uIHVu
YmluZGluZyBjb25zdW1lciBkcml2ZXJzLgo+Cj4gU3VnZ2VzdGVkLWJ5OiBVd2UgS2xlaW5lLUvD
tm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IFNpZ25lZC1vZmYtYnk6IE5p
Y29sYXMgU2FlbnogSnVsaWVubmUgPG5zYWVuemp1bGllbm5lQHN1c2UuZGU+Cj4KPiAtLS0KPgo+
IENoYW5nZXMgc2luY2UgdjI6Cj4gIC0gQ3JlYXRlIGRldm1fcnBpX2Zpcm13YXJlX2dldCgpCj4K
PiAgZHJpdmVycy9maXJtd2FyZS9yYXNwYmVycnlwaS5jICAgICAgICAgICAgIHwgNDYgKysrKysr
KysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL3NvYy9iY20yODM1L3Jhc3BiZXJyeXBpLWZpcm13
YXJlLmggfCAgOCArKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvcmFzcGJlcnJ5cGkuYyBiL2RyaXZlcnMvZmly
bXdhcmUvcmFzcGJlcnJ5cGkuYwo+IGluZGV4IDIzNzFkMDhiZGQxNy4uNzRiZGIzYmRlOWRjIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZmlybXdhcmUvcmFzcGJlcnJ5cGkuYwo+ICsrKyBiL2RyaXZl
cnMvZmlybXdhcmUvcmFzcGJlcnJ5cGkuYwo+IEBAIC0xMSw3ICsxMSw5IEBACj4gICNpbmNsdWRl
IDxsaW51eC9tb2R1bGUuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L29mX3BsYXRmb3JtLmg+Cj4gICNp
bmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3JlZmNv
dW50Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC93YWl0
Lmg+Cj4gICNpbmNsdWRlIDxzb2MvYmNtMjgzNS9yYXNwYmVycnlwaS1maXJtd2FyZS5oPgo+Cj4g
ICNkZWZpbmUgTUJPWF9NU0coY2hhbiwgZGF0YTI4KSAgICAgICAgICgoKGRhdGEyOCkgJiB+MHhm
KSB8ICgoY2hhbikgJiAweGYpKQo+IEBAIC0yNyw2ICsyOSw5IEBAIHN0cnVjdCBycGlfZmlybXdh
cmUgewo+ICAgICAgICAgc3RydWN0IG1ib3hfY2hhbiAqY2hhbjsgLyogVGhlIHByb3BlcnR5IGNo
YW5uZWwuICovCj4gICAgICAgICBzdHJ1Y3QgY29tcGxldGlvbiBjOwo+ICAgICAgICAgdTMyIGVu
YWJsZWQ7Cj4gKwo+ICsgICAgICAgcmVmY291bnRfdCBjb25zdW1lcnM7Cj4gKyAgICAgICB3YWl0
X3F1ZXVlX2hlYWRfdCB3YWl0Owo+ICB9Owo+Cj4gIHN0YXRpYyBERUZJTkVfTVVURVgodHJhbnNh
Y3Rpb25fbG9jayk7Cj4gQEAgLTI0Nyw2ICsyNTIsOCBAQCBzdGF0aWMgaW50IHJwaV9maXJtd2Fy
ZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgfQo+Cj4gICAg
ICAgICBpbml0X2NvbXBsZXRpb24oJmZ3LT5jKTsKPiArICAgICAgIHJlZmNvdW50X3NldCgmZnct
PmNvbnN1bWVycywgMSk7Cj4gKyAgICAgICBpbml0X3dhaXRxdWV1ZV9oZWFkKCZmdy0+d2FpdCk7
Cj4KPiAgICAgICAgIHBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGZ3KTsKPgo+IEBAIC0yNzUs
MTEgKzI4MiwyMSBAQCBzdGF0aWMgaW50IHJwaV9maXJtd2FyZV9yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIHJwaV9od21vbiA9IE5VTEw7Cj4gICAgICAgICBw
bGF0Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcihycGlfY2xrKTsKPiAgICAgICAgIHJwaV9jbGsgPSBO
VUxMOwo+ICsKPiArICAgICAgIHdhaXRfZXZlbnQoZnctPndhaXQsIHJlZmNvdW50X2RlY19pZl9v
bmUoJmZ3LT5jb25zdW1lcnMpKTsKPiAgICAgICAgIG1ib3hfZnJlZV9jaGFubmVsKGZ3LT5jaGFu
KTsKPgo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+ICtzdGF0aWMgdm9pZCBycGlfZmlybXdh
cmVfcHV0KHZvaWQgKmRhdGEpCj4gK3sKPiArICAgICAgIHN0cnVjdCBycGlfZmlybXdhcmUgKmZ3
ID0gZGF0YTsKPiArCj4gKyAgICAgICByZWZjb3VudF9kZWMoJmZ3LT5jb25zdW1lcnMpOwo+ICsg
ICAgICAgd2FrZV91cCgmZnctPndhaXQpOwo+ICt9Cj4gKwo+ICAvKioKPiAgICogcnBpX2Zpcm13
YXJlX2dldCAtIEdldCBwb2ludGVyIHRvIHJwaV9maXJtd2FyZSBzdHJ1Y3R1cmUuCj4gICAqIEBm
aXJtd2FyZV9ub2RlOiAgICBQb2ludGVyIHRvIHRoZSBmaXJtd2FyZSBEZXZpY2UgVHJlZSBub2Rl
Lgo+IEBAIC0yOTcsNiArMzE0LDM1IEBAIHN0cnVjdCBycGlfZmlybXdhcmUgKnJwaV9maXJtd2Fy
ZV9nZXQoc3RydWN0IGRldmljZV9ub2RlICpmaXJtd2FyZV9ub2RlKQo+ICB9Cj4gIEVYUE9SVF9T
WU1CT0xfR1BMKHJwaV9maXJtd2FyZV9nZXQpOwo+Cj4gKy8qKgo+ICsgKiBkZXZtX3JwaV9maXJt
d2FyZV9nZXQgLSBHZXQgcG9pbnRlciB0byBycGlfZmlybXdhcmUgc3RydWN0dXJlLgo+ICsgKiBA
ZmlybXdhcmVfbm9kZTogICAgUG9pbnRlciB0byB0aGUgZmlybXdhcmUgRGV2aWNlIFRyZWUgbm9k
ZS4KPiArICoKPiArICogUmV0dXJucyBOVUxMIGlzIHRoZSBmaXJtd2FyZSBkZXZpY2UgaXMgbm90
IHJlYWR5Lgo+ICsgKi8KPiArc3RydWN0IHJwaV9maXJtd2FyZSAqZGV2bV9ycGlfZmlybXdhcmVf
Z2V0KHN0cnVjdCBkZXZpY2UgKmRldiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpmaXJtd2FyZV9ub2RlKQo+ICt7Cj4gKyAg
ICAgICBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gb2ZfZmluZF9kZXZpY2VfYnlfbm9k
ZShmaXJtd2FyZV9ub2RlKTsKPiArICAgICAgIHN0cnVjdCBycGlfZmlybXdhcmUgKmZ3Owo+ICsK
PiArICAgICAgIGlmICghcGRldikKPiArICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gKwo+
ICsgICAgICAgZncgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiArICAgICAgIGlmICgh
ZncpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ICsKPiArICAgICAgIGlmICghcmVm
Y291bnRfaW5jX25vdF96ZXJvKCZmdy0+Y29uc3VtZXJzKSkKPiArICAgICAgICAgICAgICAgcmV0
dXJuIE5VTEw7Cj4gKwo+ICsgICAgICAgaWYgKGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChkZXYs
IHJwaV9maXJtd2FyZV9wdXQsIGZ3KSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4g
Kwo+ICsgICAgICAgcmV0dXJuIGZ3Owo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGRldm1fcnBp
X2Zpcm13YXJlX2dldCk7CgpVc3VhbGx5IEknZCBleHBlY3QgdGhlIGRldnJlcyB2YXJpYW50IHRv
IHNpbXBseSBjYWxsCnJwaV9maXJtd2FyZV9nZXQoKSBhbmQgdGhlbiBzY2hlZHVsZSBhIHJlbGVh
c2UgY2FsbGJhY2sgd2hpY2ggd291bGQKY2FsbCB3aGF0ZXZlciBmdW5jdGlvbiBpcyB0aGUgcmVs
ZWFzZSBjb3VudGVycGFydCBmb3IgaXQgY3VycmVudGx5LgpEZXZyZXMgYWN0aW9ucyBhcmUgZm9y
IGRyaXZlcnMgd2hpY2ggd2FudCB0byBzY2hlZHVsZSBzb21lIG1vcmUKdW51c3VhbCB0YXNrcyBh
dCBkcml2ZXIgZGV0YWNoLiBBbnkgcmVhc29uIGZvciBkZXNpZ25pbmcgaXQgdGhpcyB3YXk/CgpC
YXJ0b3N6Cgo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcnBpX2Zpcm13
YXJlX29mX21hdGNoW10gPSB7Cj4gICAgICAgICB7IC5jb21wYXRpYmxlID0gInJhc3BiZXJyeXBp
LGJjbTI4MzUtZmlybXdhcmUiLCB9LAo+ICAgICAgICAge30sCj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvc29jL2JjbTI4MzUvcmFzcGJlcnJ5cGktZmlybXdhcmUuaCBiL2luY2x1ZGUvc29jL2JjbTI4
MzUvcmFzcGJlcnJ5cGktZmlybXdhcmUuaAo+IGluZGV4IGNjOWNkYmM2NjQwMy4uOGZlNjRmNTNh
Mzk0IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvc29jL2JjbTI4MzUvcmFzcGJlcnJ5cGktZmlybXdh
cmUuaAo+ICsrKyBiL2luY2x1ZGUvc29jL2JjbTI4MzUvcmFzcGJlcnJ5cGktZmlybXdhcmUuaAo+
IEBAIC0xNDEsNiArMTQxLDggQEAgaW50IHJwaV9maXJtd2FyZV9wcm9wZXJ0eShzdHJ1Y3QgcnBp
X2Zpcm13YXJlICpmdywKPiAgaW50IHJwaV9maXJtd2FyZV9wcm9wZXJ0eV9saXN0KHN0cnVjdCBy
cGlfZmlybXdhcmUgKmZ3LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpk
YXRhLCBzaXplX3QgdGFnX3NpemUpOwo+ICBzdHJ1Y3QgcnBpX2Zpcm13YXJlICpycGlfZmlybXdh
cmVfZ2V0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqZmlybXdhcmVfbm9kZSk7Cj4gK3N0cnVjdCBycGlf
ZmlybXdhcmUgKmRldm1fcnBpX2Zpcm13YXJlX2dldChzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqZmlybXdhcmVfbm9kZSk7Cj4gICNlbHNlCj4gIHN0YXRpYyBpbmxpbmUgaW50IHJwaV9maXJt
d2FyZV9wcm9wZXJ0eShzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdywgdTMyIHRhZywKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAqZGF0YSwgc2l6ZV90IGxlbikK
PiBAQCAtMTU4LDYgKzE2MCwxMiBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBycGlfZmlybXdhcmUg
KnJwaV9maXJtd2FyZV9nZXQoc3RydWN0IGRldmljZV9ub2RlICpmaXJtd2FyZQo+ICB7Cj4gICAg
ICAgICByZXR1cm4gTlVMTDsKPiAgfQo+ICsKPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgcnBpX2Zp
cm13YXJlICpkZXZtX3JwaV9maXJtd2FyZV9nZXQoc3RydWN0IGRldmljZSAqZGV2LAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKmZp
cm13YXJlX25vZGUpCj4gK3sKPiArICAgICAgIHJldHVybiBOVUxMOwo+ICt9Cj4gICNlbmRpZgo+
Cj4gICNlbmRpZiAvKiBfX1NPQ19SQVNQQkVSUllfRklSTVdBUkVfSF9fICovCj4gLS0KPiAyLjI5
LjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
