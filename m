Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0442A9722
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 14:41:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 332E72E122;
	Fri,  6 Nov 2020 13:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xBpgQDyXdy+H; Fri,  6 Nov 2020 13:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94625203E7;
	Fri,  6 Nov 2020 13:41:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83DA01BF82F
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 13:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7BC8A86890
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 13:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MMxfFfgzMcJt for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 13:41:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DD2086569
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 13:41:18 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id w13so1940426eju.13
 for <devel@driverdev.osuosl.org>; Fri, 06 Nov 2020 05:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YxlySBEtfM8plnPwR3qjjCyIfVvwbfiGqCyLIXMcAVY=;
 b=bNf+JFTJi7loW9QoZYLAj1mxw3CAaxrBETbasN+Ksr6IIFCVZiJMenzWRn6BdIG2XL
 LE/DALyZRKTHE60zpb6rAGkpZS6ag4kod9Asip/bpyt1ceCPadTaepJK+Gfa90DfJA+K
 4kyTY7NRg33tum1uhTSN3RxZYArP87cMPJc/Ey8qgbT4UjgPCbUkb2txF28Io8BM66m0
 QJg9/oupqK9QNybaSr+lQoGE6U7DltDxFzsFb2C5GdrkTTaolp386Psm1DmeKWJOkDYo
 T+6SOSVHbmE67mhYkgbO2p1yXjMNl7d7gmvfb/yWOBvoTyT0IQeOw7ugR5S1p/uEdY3h
 0fJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YxlySBEtfM8plnPwR3qjjCyIfVvwbfiGqCyLIXMcAVY=;
 b=sfy7/ynUJC6FzEll4LegNCh6GXY7Q2VnAsGM3O9oRfJ4lvg60HhvTwDMWWaeiSfLr3
 DXXExxVL6UDhs8CN876tG474IDYpkdc8ot5j1XAu5lGkLuDI52n05TuIqrw0EUnxWBLB
 RDnvtfoK/hS5qGT4EciTyGThTR4eYxc5KQEHayVMcg8htna6Nuq8BX3HVTI9mozHZwkD
 tdiglIjxAnypJ/n9SlNKSflK8GizDBxlPPRevKkpsuhkJVRxN3EY3UQ0n0+XktSa9rDk
 Pb8Q4NRtf0Xpk0hruubnE+A5LAPTXJ2gjAjbf7qJpjf0CD6hCqH0DBcOfR54OYhZvwJO
 SDYA==
X-Gm-Message-State: AOAM5334IIpGp7VVMQRO/q6v2zovPJ/QcGX5Mq7i560YcFRrIBTUdpbZ
 KVzlNpcQBKxZgkJ+fn2K1IXW1bEgBX/uR0N7yhw=
X-Google-Smtp-Source: ABdhPJwedRmD3YJS+mk5L/dYqDNvjdIvAR1tRZGg45jYDZepuD2Hi9ud9Rcyv7zuPeXIuZjSxTVK7dd4xN347lIHCio=
X-Received: by 2002:a17:906:6d83:: with SMTP id
 h3mr2014952ejt.481.1604670076814; 
 Fri, 06 Nov 2020 05:41:16 -0800 (PST)
MIME-Version: 1.0
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-18-digetx@gmail.com>
 <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
 <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
 <20201106061513.uyys7njcqcdlah67@vireshk-i7>
 <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
In-Reply-To: <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Fri, 6 Nov 2020 21:41:05 +0800
Message-ID: <CAEExFWsp0DWw1yO84e3vzr_YZkqkd+pyPfQQR3J2W6n3wTX4Jw@mail.gmail.com>
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Dmitry Osipenko <digetx@gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 DTML <devicetree@vger.kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "open list:SECURE DIGITAL HO..." <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBOb3YgNiwgMjAyMCBhdCA5OjE4IFBNIERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiAwNi4xMS4yMDIwIDA5OjE1LCBWaXJlc2ggS3VtYXIg0L/QuNGI
0LXRgjoKPiA+IFNldHRpbmcgcmVndWxhdG9ycyBmb3IgY291bnQgYXMgMCBkb2Vzbid0IHNvdW5k
IGdvb2QgdG8gbWUuCj4gPgo+ID4gQnV0LCBJIHVuZGVyc3RhbmQgdGhhdCB5b3UgZG9uJ3Qgd2Fu
dCB0byBoYXZlIHRoYXQgaWYgKGhhdmVfcmVndWxhdG9yKQo+ID4gY2hlY2ssIGFuZCBpdCBpcyBh
IGZhaXIgcmVxdWVzdC4gV2hhdCBJIHdpbGwgaW5zdGVhZCBkbyBpcywgYWxsb3cgYWxsCj4gPiBk
ZXZfcG1fb3BwX3B1dCooKSBBUEkgdG8gc3RhcnQgYWNjZXB0aW5nIGEgTlVMTCBwb2ludGVyIGZv
ciB0aGUgT1BQCj4gPiB0YWJsZSBhbmQgZmFpbCBzaWxlbnRseS4gQW5kIHNvIHlvdSB3b24ndCBi
ZSByZXF1aXJlZCB0byBoYXZlIHRoaXMKPiA+IHVud2FudGVkIGNoZWNrLiBCdXQgeW91IHdpbGwg
YmUgcmVxdWlyZWQgdG8gc2F2ZSB0aGUgcG9pbnRlciByZXR1cm5lZAo+ID4gYmFjayBieSBkZXZf
cG1fb3BwX3NldF9yZWd1bGF0b3JzKCksIHdoaWNoIGlzIHRoZSByaWdodCB0aGluZyB0byBkbwo+
ID4gYW55d2F5cy4KPgo+IFBlcmhhcHMgZXZlbiBhIGJldHRlciB2YXJpYW50IGNvdWxkIGJlIHRv
IGFkZCBhIGRldm0gdmVyc2lvbnMgb2YgdGhlIE9QUAo+IEFQSSBmdW5jdGlvbnMsIHRoZW4gZHJp
dmVycyB3b24ndCBuZWVkIHRvIGNhcmUgYWJvdXQgc3RvcmluZyB0aGUKPiBvcHBfdGFibGUgcG9p
bnRlciBpZiBpdCdzIHVudXNlZCBieSBkcml2ZXJzLgoKSSB0aGluayBzby4gVGhlIGNvbnN1bWVy
IG1heSBub3QgYmUgc28gY29uY2VybmVkIGFib3V0IHRoZSBzdGF0dXMgb2YKdGhlc2UgT1BQIHRh
Ymxlcy4KSWYgdGhlIGRyaXZlciBuZWVkcyB0byBtYW5hZ2UgdGhlIHJlbGVhc2UsIGl0IG5lZWRz
IHRvIGFkZCBhIHBvaW50ZXIKdG8gdGhlaXIgZHJpdmVyIGdsb2JhbCBzdHJ1Y3R1cmUuCgpNYXli
ZSBpdCdzIHdvcnRoIGhhdmluZyB0aGVzZSBkZXZtIGludGVyZmFjZXMgZm9yIG9wcC4KCllhbmd0
YW8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
