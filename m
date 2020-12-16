Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F18EB2DBEBC
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Dec 2020 11:37:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92CD385F6F;
	Wed, 16 Dec 2020 10:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hgmiVnBuhvze; Wed, 16 Dec 2020 10:37:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8386885BC4;
	Wed, 16 Dec 2020 10:37:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 186841BF2FA
 for <devel@linuxdriverproject.org>; Wed, 16 Dec 2020 10:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 02D4621505
 for <devel@linuxdriverproject.org>; Wed, 16 Dec 2020 10:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oTKWSZh9lyOc for <devel@linuxdriverproject.org>;
 Wed, 16 Dec 2020 10:37:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by silver.osuosl.org (Postfix) with ESMTPS id A427B21543
 for <devel@driverdev.osuosl.org>; Wed, 16 Dec 2020 10:37:14 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id q16so24246959edv.10
 for <devel@driverdev.osuosl.org>; Wed, 16 Dec 2020 02:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bsYmkfEVvQqgzD1O+aSIpPO4CsKO+u0Ea3O6N1E481c=;
 b=E1gRWKOIK1EEv0yOYoQV3P1kGDMjSZejlfc9pBHAb3Ok+GL+cHeIuNDOxsqtxGH7Ef
 TItAt0jy8MO6I7jrtnl/EtsFj0NIH1iYsicmOwSPqBC1WpEozE46gxcOkApFuK3yM67H
 3kAry0qXXNXvRk60jFkvTEZAae8Qsj65vAyBAUKRnpHNAwnLStkzn9Vg5UxXlJKu3xpl
 subhgINJugcYcDXVXRZF/R2lvLpHgjtSBDprPGBKaHegBUYMCngYjKnV0iQpkn1k/D1c
 YT3MZIqrg5HTPLQjTDj2jiSiTcHfX6l7pl6tyiuZGhOajtlGx2wi/GcI+CwN3awjt/km
 I9BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bsYmkfEVvQqgzD1O+aSIpPO4CsKO+u0Ea3O6N1E481c=;
 b=ubvIYaRdFqLxnLln7W3CCw9Gzkri00XVjnXTiPU4vaL9cqj95kOHj0spyhvrzUMlw6
 Dt/MT2BHl3CmNU4ZwNk9YBM7aP0n4WZWn2NkPLGL9ycs48V72XHiAV4EHQ0iqVEM6Ich
 ybFucWsmA1q1VJT31VuY1gwoqTztp5mtzkHknWaMKP+EW5P39YAQQK0dOg2AksrfDTBP
 fzGYY/eDP44wT/FaPx5rVb18rLC5DLZUBx05bf68dqXAGa5xQanFlAhAm81vxVFBIeRa
 Vu8SE8j4dV/xymozp8ZTZJP6MtgL2kj5afSX0KTGBd7aaXgyplTVkSJSMR/fb1ASTUNf
 6Sfg==
X-Gm-Message-State: AOAM530+KnAHIxmwx0g88jDNh8e4xCJAQtry3YLUGzZ4VY3ilZecPruG
 6nzrJNm8b0JKQTZes2oiPvUkQZZMxiwOCreGtXdXyg==
X-Google-Smtp-Source: ABdhPJwS+suNBsnmqdweQsc8crfYev1Kw3Evg9H2jPGzz2d+ZRjYUcCPzp4JsF4gaLfvS+QySSxQ51abC3XScJaIYz4=
X-Received: by 2002:a50:b742:: with SMTP id g60mr32617780ede.113.1608115033228; 
 Wed, 16 Dec 2020 02:37:13 -0800 (PST)
MIME-Version: 1.0
References: <20201211164801.7838-1-nsaenzjulienne@suse.de>
 <20201211164801.7838-2-nsaenzjulienne@suse.de>
In-Reply-To: <20201211164801.7838-2-nsaenzjulienne@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 16 Dec 2020 11:37:02 +0100
Message-ID: <CAMpxmJUoTHq+ZMm6UOH3tmhGMuDEG5sPn4hiXiZdwSP3FV-hjg@mail.gmail.com>
Subject: Re: [PATCH v6 01/11] firmware: raspberrypi: Keep count of all
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

T24gRnJpLCBEZWMgMTEsIDIwMjAgYXQgNTo0OCBQTSBOaWNvbGFzIFNhZW56IEp1bGllbm5lCjxu
c2FlbnpqdWxpZW5uZUBzdXNlLmRlPiB3cm90ZToKPgo+IFdoZW4gdW5iaW5kaW5nIHRoZSBmaXJt
d2FyZSBkZXZpY2Ugd2UgbmVlZCB0byBtYWtlIHN1cmUgaXQgaGFzIG5vCj4gY29uc3VtZXJzIGxl
ZnQuIE90aGVyd2lzZSB3ZSdkIGxlYXZlIHRoZW0gd2l0aCBhIGZpcm13YXJlIGhhbmRsZQo+IHBv
aW50aW5nIGF0IGZyZWVkIG1lbW9yeS4KPgo+IEtlZXAgYSByZWZlcmVuY2UgY291bnQgb2YgYWxs
IGNvbnN1bWVycyBhbmQgaW50cm9kdWNlIHJwaV9maXJtd2FyZV9wdXQoKQo+IHdoaWNoIHdpbGwg
cGVybWl0IGF1dG9tYXRpY2FsbHkgZGVjcmVhc2UgdGhlIHJlZmVyZW5jZSBjb3VudCB1cG9uCj4g
dW5iaW5kaW5nIGNvbnN1bWVyIGRyaXZlcnMuCj4KPiBTdWdnZXN0ZWQtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gU2lnbmVkLW9mZi1ieTog
Tmljb2xhcyBTYWVueiBKdWxpZW5uZSA8bnNhZW56anVsaWVubmVAc3VzZS5kZT4KPiBSZXZpZXdl
ZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Cj4KPiAtLS0KClJl
dmlld2VkLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29t
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
