Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9056F48C2AA
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 11:59:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 309BB83FB2;
	Wed, 12 Jan 2022 10:59:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uvgFw36L31_b; Wed, 12 Jan 2022 10:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3066A83F87;
	Wed, 12 Jan 2022 10:59:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62DD71BF20B
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 10:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F04B6FB8F
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 10:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LVhAht4SjPin for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 10:59:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B0866FB90
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 10:59:05 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id j11so6751030lfg.3
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 02:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ta6ODObyOiMhXWrgcht8G/JgiWdlBGIHtYr4lKWAQ9M=;
 b=BLbAZQtKGtqF+zy96gp5LzRCqsWIItalMJ4kGRbehJDSbZ/Eul10rVy6sdNIbszotc
 6rznJ2SnDpQNHquNAxSaKzZqZcQiOIVhwQ8N7jTltty2b/er1+MYVBff0z7fCls6xwoA
 5QzwnycdmWr+7RSxV8w+uGRyXLcjMjozd0x28dBmu2VSrgKcJ8hCZNn1rMZFXYdHA0XC
 A5VxQpibApIhGypxA+lNF8QmOsIcNLbB9GdMvvXtiI7txzldUM8qHkium288a+6h/4l2
 XvNZq3N1dX0sgdt+YO5pOXvBKn950aiATul2/kKt7N+unYai8B4J+U27tLDUtt9kGDrs
 5wDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ta6ODObyOiMhXWrgcht8G/JgiWdlBGIHtYr4lKWAQ9M=;
 b=D5HX6hcswR7ZBB2G5DaLk2D6l/ywuvhRZVWr+DO2KBzfxnaeBm+yrhacUUcbu/X58d
 Y1XSiZHXBTbN/BmTCAYncVe0He7Y9t0XGTLYPyIfjvaVL8bXNXFjwsxE0TEM7iqe1wNl
 AoG/eelZjD0BY/hxWOiSqAOpRQe6bKTml70fGWylTVoHxa6Hh7uHdMloI4//BhZMQs32
 58Jy63P+agzDjsMfDszjLfk49pREGy0plcWD3i11Hn5lmqQQSrBL0HAMCeDjIOo/NcSy
 KjLqdK/csomzzy85ujpo7akuaWu269kJs2AUsV+4i+nNknRl0FdRvi26tJsJr7yxelfE
 K6nA==
X-Gm-Message-State: AOAM530SKhHAdtKyguR38iOThAdwQNQeG8L7iBePOoILp6ZomUZ2oW6g
 LOCEKpjR3bakCuYBaX1yo12qW8Uv6x8POy/VoAqQ+g==
X-Google-Smtp-Source: ABdhPJzJQLmVykeupfj37OdIu6CZc7g37pbh2/7aAyQvEwm26I/yvAuuq8tLAsPvTPdp41l0BuOYixdrz6aPkyrD8i4=
X-Received: by 2002:a05:6512:3da7:: with SMTP id
 k39mr3455971lfv.184.1641985143527; 
 Wed, 12 Jan 2022 02:59:03 -0800 (PST)
MIME-Version: 1.0
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-2-Jerome.Pouiller@silabs.com>
In-Reply-To: <20220111171424.862764-2-Jerome.Pouiller@silabs.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Jan 2022 11:58:27 +0100
Message-ID: <CAPDyKFreu2S3Okc9pXckDjUQ2ieb-urSM0riysFnEHRhEqXBKg@mail.gmail.com>
Subject: Re: [PATCH v9 01/24] mmc: sdio: add SDIO IDs for Silabs WF200 chip
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>,
 Kalle Valo <kvalo@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCAxMSBKYW4gMjAyMiBhdCAxODoxNCwgSmVyb21lIFBvdWlsbGVyCjxKZXJvbWUuUG91
aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVy
b21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBOb3RlIHRoYXQgdGhlIHZhbHVlcyB1c2VkIGJ5
IFNpbGFicyBhcmUgdW5jb21tb24uIEEgZHJpdmVyIGNhbm5vdCBmdWxseQo+IHJlbHkgb24gdGhl
IFNESU8gUG5QLiBJdCBzaG91bGQgYWxzbyBjaGVjayBpZiB0aGUgZGV2aWNlIGlzIGRlY2xhcmVk
IGluCj4gdGhlIERULgo+Cj4gU28sIHRvIGFwcGx5IHRoZSBxdWlya3MgbmVjZXNzYXJ5IGZvciB0
aGUgU2lsYWJzIFdGMjAwLCB3ZSByZWx5IG9uIHRoZQo+IERUIHJhdGhlciB0aGFuIG9uIHRoZSBT
RElPIFZJRC9QSUQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21l
LnBvdWlsbGVyQHNpbGFicy5jb20+CgpJIGd1ZXNzIHRoZSBzZXJpZXMgaXMgZ2V0dGluZyBjbG9z
ZSB0byBnZXR0aW5nIHF1ZXVlZCB1cD8KCkFzIGFuIG9wdGlvbiB0byBtYWtlIHN1cmUgJHN1Ympl
Y3QgcGF0Y2ggZG9lc24ndCBjYXVzZSBhIHByb2JsZW0gZm9yCnRoYXQsIEkgY2FuIHF1ZXVlIGl0
IHVwIGFuZCBzZW5kIGl0IGZvciB0aGUgNS4xNy1yY3Mgb3IgaWYgS2FsbGUKcHJlZmVyIHRvIGNh
cnJ5IHRoaXMgaW4gdGhpcyB0cmVlIHdpdGggbXkgYWNrPwoKS2FsbGU/CgpLaW5kIHJlZ2FyZHMK
VWZmZQoKPiAtLS0KPiAgZHJpdmVycy9tbWMvY29yZS9xdWlya3MuaCAgICB8IDUgKysrKysKPiAg
aW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaCB8IDcgKysrKysrKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9jb3JlL3F1
aXJrcy5oIGIvZHJpdmVycy9tbWMvY29yZS9xdWlya3MuaAo+IGluZGV4IDIwZjU2ODcyNzI3Ny4u
Zjg3OWRjNjNkOTM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmgKPiAr
KysgYi9kcml2ZXJzL21tYy9jb3JlL3F1aXJrcy5oCj4gQEAgLTE0OSw2ICsxNDksMTEgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBtbWNfZml4dXAgX19tYXliZV91bnVzZWQgc2Rpb19maXh1cF9tZXRo
b2RzW10gPSB7Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbW1jX2ZpeHVwIF9fbWF5YmVfdW51c2Vk
IHNkaW9fY2FyZF9pbml0X21ldGhvZHNbXSA9IHsKPiAgICAgICAgIFNESU9fRklYVVBfQ09NUEFU
SUJMRSgidGksd2wxMjUxIiwgd2wxMjUxX3F1aXJrLCAwKSwKPgo+ICsgICAgICAgU0RJT19GSVhV
UF9DT01QQVRJQkxFKCJzaWxhYnMsd2YyMDAiLCBhZGRfcXVpcmssCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgTU1DX1FVSVJLX0JST0tFTl9CWVRFX01PREVfNTEyIHwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBNTUNfUVVJUktfTEVOSUVOVF9GTjAgfAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIE1NQ19RVUlSS19CTEtTWl9GT1JfQllURV9NT0RFKSwKPiAr
Cj4gICAgICAgICBFTkRfRklYVVAKPiAgfTsKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L21tYy9zZGlvX2lkcy5oIGIvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaAo+IGluZGV4IGE4
NWM5ZjBiZDQ3MC4uNDgzNjkyZjMwMDJhIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvbW1j
L3NkaW9faWRzLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCj4gQEAgLTI1
LDYgKzI1LDEzIEBACj4gICAqIFZlbmRvcnMgYW5kIGRldmljZXMuICBTb3J0IGtleTogdmVuZG9y
IGZpcnN0LCBkZXZpY2UgbmV4dC4KPiAgICovCj4KPiArLyoKPiArICogU2lsYWJzIGRvZXMgbm90
IHVzZSBhIHJlbGlhYmxlIHZlbmRvciBJRC4gVG8gYXZvaWQgY29uZmxpY3RzLCB0aGUgZHJpdmVy
Cj4gKyAqIHdvbid0IHByb2JlIHRoZSBkZXZpY2UgaWYgaXQgaXMgbm90IGFsc28gZGVjbGFyZWQg
aW4gdGhlIERULgo+ICsgKi8KPiArI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9TSUxBQlMgICAgICAg
ICAgICAgICAgICAweDAwMDAKPiArI2RlZmluZSBTRElPX0RFVklDRV9JRF9TSUxBQlNfV0YyMDAg
ICAgICAgICAgICAweDEwMDAKPiArCj4gICNkZWZpbmUgU0RJT19WRU5ET1JfSURfU1RFICAgICAg
ICAgICAgICAgICAgICAgMHgwMDIwCj4gICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfU1RFX0NXMTIw
MCAgICAgICAgICAgICAgMHgyMjgwCj4KPiAtLQo+IDIuMzQuMQo+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
