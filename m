Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D54AA2AB694
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 12:21:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7DED42052A;
	Mon,  9 Nov 2020 11:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qANkOjeofBDY; Mon,  9 Nov 2020 11:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 243B72002B;
	Mon,  9 Nov 2020 11:21:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE57F1BF3FE
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 11:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E7F6D20396
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 11:21:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6dWMxLoDMxa for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 11:21:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 457882002B
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 11:21:03 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id t11so8283783edj.13
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 03:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hU4WYD1KmzG04cSTRa81VB9nMC6JMAr9+qywRmieORQ=;
 b=ivffncbNBnvqFvOVxqcWbV0hPq/Ltibmf3GHl94bopcm/216grQ+BQGVZlOIbgv5Pf
 xRNJDqDwIXSwamLbX/p1iygsqawMVvm49RJRIt4tNEMYHQhPpV2SHeOUzuPYfilWXW2T
 pXypFoju2q10dY4x8VsUNVYWKxHAG9MXjfu3yRhrULwAAouCksLlQxBPC7WijFUkOd8M
 9rKkcE0TzPGW+Qms+6P/Fg+rjYuLtH/qjYB9Y1dHamslXZILFUGfnOVA2vHYW7hhV+gv
 tCS0061lKBfO0r7PmZ7sDLio7MMRqxS8zSw/E9vOQXqVzyolJ3sIV+5Qu+KLzXO5iK0O
 FyvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hU4WYD1KmzG04cSTRa81VB9nMC6JMAr9+qywRmieORQ=;
 b=RrROn72o9iZuYOosyYGiL2XFU3IUMskoDwy3wzGWyYG+2uoky6Frxjw4ccn66Gz0+4
 1meSF6LuFO5AZQAaLjJzDhJhoiQylDwbUADZJXWn5o73KgVHAUA278MrHyJ3nW44ZLEH
 djG7aDSyRY0zoMT3t9uLsbvVEtAjm783PdR+hnEtRXoMNRh5bHNPdvz850JB3RkygXS1
 0FJfjnlEACAqtxbnEmaYLAnkxqb/4/HaD7AXMkhktvurv+sLDok3VpWT1qVUGfEWXEZi
 H5xlD7671GgRFNj2bzidqxlPgtN56Hvu784uldF1JMzif6qmeYot8lYHcSl51QeZJrfg
 28Gw==
X-Gm-Message-State: AOAM530rlJAiYyHzn4qd7K3ImcDQhJF+dRfW9bYjRVXtSpeAWXFPfiw7
 1kpvIXSn/m3DKe/7HaqKFMwf9wAetAxQ72hl6nk=
X-Google-Smtp-Source: ABdhPJxAkJymNqSjR/UljeVLidNDy9Sfi8sdqcClNPJ1jY4tyCrPXVk2ZYZfzUyF8oKh+J89CmDSjJgzBHin8AZGsnU=
X-Received: by 2002:a50:ef1a:: with SMTP id m26mr5734314eds.144.1604920861806; 
 Mon, 09 Nov 2020 03:21:01 -0800 (PST)
MIME-Version: 1.0
References: <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
 <20201106061513.uyys7njcqcdlah67@vireshk-i7>
 <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
 <CAEExFWsp0DWw1yO84e3vzr_YZkqkd+pyPfQQR3J2W6n3wTX4Jw@mail.gmail.com>
 <20201109050010.g47zojh6wafvwqva@vireshk-i7>
 <c584b301-e052-7f01-335d-8f9160865198@gmail.com>
 <20201109051014.oa6bt4g3ctm2hnuy@vireshk-i7>
 <4476fed9-a356-b7f1-32ee-935343e23038@gmail.com>
 <20201109053546.xupmmsx5qccn46tr@vireshk-i7>
 <33a7ad95-a8cf-7b88-0f78-09086c1a4adf@gmail.com>
 <20201109055320.5y5gf2whwast2mi4@vireshk-i7>
In-Reply-To: <20201109055320.5y5gf2whwast2mi4@vireshk-i7>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Mon, 9 Nov 2020 19:20:50 +0800
Message-ID: <CAEExFWuF82B3bPn8T8_vkHODNwP89MDrNOqu-MhObzqTfiYODw@mail.gmail.com>
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Viresh Kumar <viresh.kumar@linaro.org>
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
 DTML <devicetree@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Dmitry Osipenko <digetx@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "open list:SECURE DIGITAL HO..." <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCAxOjUzIFBNIFZpcmVzaCBLdW1hciA8dmlyZXNoLmt1bWFy
QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMDktMTEtMjAsIDA4OjQ0LCBEbWl0cnkgT3NpcGVu
a28gd3JvdGU6Cj4gPiAwOS4xMS4yMDIwIDA4OjM1LCBWaXJlc2ggS3VtYXIg0L/QuNGI0LXRgjoK
PiA+ID4gT24gMDktMTEtMjAsIDA4OjE5LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gPiA+PiBU
aGFua3MsIEkgbWFkZSBpdCBpbiBhIGRpZmZlcmVudCB3YXkgYnkgc2ltcGx5IGFkZGluZyBoZWxw
ZXJzIHRvIHRoZQo+ID4gPj4gcG1fb3BwLmggd2hpY2ggdXNlIGRldm1fYWRkX2FjdGlvbl9vcl9y
ZXNldCgpLiBUaGlzIGRvZXNuJ3QgcmVxdWlyZSB0bwo+ID4gPj4gYWRkIG5ldyBrZXJuZWwgc3lt
Ym9scy4KPiA+ID4KPiA+ID4gSSB3aWxsIHByZWZlciB0byBhZGQgaXQgaW4gY29yZS5jIGl0c2Vs
ZiwgYW5kIHllcwo+ID4gPiBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoKSBsb29rcyBiZXR0ZXIu
IEJ1dCBJIGFtIHN0aWxsIG5vdCBzdXJlIGZvcgo+ID4gPiB3aGljaCBoZWxwZXJzIGRvIHdlIG5l
ZWQgdGhlIGRldm1fKigpIHZhcmlhbnRzLCBhcyB0aGlzIGlzIG9ubHkgdXNlZnVsCj4gPiA+IGZv
ciBub24tQ1BVIGRldmljZXMuIEJ1dCBpZiB3ZSBoYXZlIHVzZXJzIHRoYXQgd2UgY2FuIGFkZCBy
aWdodCBub3csCj4gPiA+IHdoeSBub3QuCj4gPgo+ID4gQWxsIGN1cnJlbnQgbm9uLUNQVSBkcml2
ZXJzIChkZXZmcmVxLCBtbWMsIG1lbW9yeSwgZXRjKSBjYW4gYmVuZWZpdCBmcm9tIGl0Lgo+ID4K
PiA+IEZvciBUZWdyYSBkcml2ZXJzIHdlIG5lZWQgdGhlc2UgdmFyaWFudHM6Cj4gPgo+ID4gZGV2
bV9wbV9vcHBfc2V0X3N1cHBvcnRlZF9odygpCj4gPiBkZXZtX3BtX29wcF9zZXRfcmVndWxhdG9y
cygpIFtpZiB3ZSB3b24ndCB1c2UgR0VOUERdCj4gPiBkZXZtX3BtX29wcF9zZXRfY2xrbmFtZSgp
Cj4gPiBkZXZtX3BtX29wcF9vZl9hZGRfdGFibGUoKQo+Cj4gSSB0cmllZCB0byBsb29rIGVhcmxp
ZXIgZm9yIHRoZSBzdHVmZiBhbHJlYWR5IG1lcmdlZCBpbiBhbmQgZGlkbid0Cj4gZmluZCBhIGxv
dCBvZiBzdHVmZiB3aGVyZSB0aGUgZGV2bV8qIGNvdWxkIGJlIHVzZWQsIG1heWJlIEkgbWlzc2Vk
Cj4gc29tZSBvZiBpdC4KPgo+IEZyYW5rLCB3b3VsZCB5b3UgbGlrZSB0byByZWZyZXNoIHlvdXIg
c2VyaWVzIGJhc2VkIG9uIHN1Z2dlc3Rpb25zIGZyb20KPiBEbWl0cnkgYW5kIG1ha2Ugb3RoZXIg
ZHJpdmVycyBhZGFwdCB0byB0aGUgbmV3IEFQSXMgPwoKSSBhbSBnbGFkIHRvIGRvIHRoaXMu77ya
77yJCgpZYW5ndGFvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
