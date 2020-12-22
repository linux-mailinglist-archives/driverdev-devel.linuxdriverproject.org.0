Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E2A2E0781
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 09:55:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B14B8728E;
	Tue, 22 Dec 2020 08:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m3qsnqfk-69J; Tue, 22 Dec 2020 08:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D61E387244;
	Tue, 22 Dec 2020 08:55:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7CC8C1BF291
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 08:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 78AFC85F92
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 08:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hnreoSWCB7m0 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 08:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AD85985F90
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 08:55:10 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id z136so11357869iof.3
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 00:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cL6fs/TC+AbTrexoVx8lc3glF76LL/64P3jqDOubqOU=;
 b=p3FaLdyA6wmA6mGKW1iwHZA4ndWfgjKfkiFbsqbgmkPhf9kbrHDYXaUXj/UHpqPOXz
 xKvfDKYwnoHivFcCrjy/OsKQhIrWrVnfMZVD6aSEQc0iJYvWZlMaPbWXZPBVRUo1DguN
 tc8H5RUL8YwPJScAZ40XpjLRF5kZpCZq+0CojwWmHcmYzopiuoqFZCJSM7Q7U1mwXHd0
 LbS0KzUzfZei7GmSL5fm7eUWiQXN6yn7oR1igzb7mwSXXLeEcbJlyR2iRSEPCVdsZ0+N
 en5MqOLGoU2PuBx0e0BxXUFOLDWc6ahV/suAGeElCchCVDSApjHIw8VunNtIQVlphsGI
 5XEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cL6fs/TC+AbTrexoVx8lc3glF76LL/64P3jqDOubqOU=;
 b=WFJcCE1uTfwWPQroczB1+RmoEMmVaerxMr1HvVJW8A/nHaP7ZtQg2pCVVVh7U1dkDU
 L8b7gbEXm3J0Iv+5a9qIbgR/Hthr2klxbZXYq6hUg9w0DXWmH1OVm3YIu2RkoldfGWBq
 UXhhO+lL0uIkbv3q+RTI4XIA0kkxzen2KQqLI02lxSOC7yDjZev898q7J5SzXDNnCbFe
 K8hYkPCF6iywHxB75XZ5Gx/wKlaX5oM4KYU08MVAKA6RYDwQJoDMSJsJnBmY1w4zwOkW
 TUHot+cj4MEA72dIuGtJ8mHlLbxBiTdFMcSK26sfmkGSmwFuSiIJa0dlzxp/A79g7i2u
 DFjQ==
X-Gm-Message-State: AOAM532GMk13FvNc+A3X4dkMMl2RYGU9jaZDT8vzpSjBxQKvzIw/09DT
 l4DGqjXOGlt4b5hyLloTKFQnU7VzO4+9ZqZzQHsVzg==
X-Google-Smtp-Source: ABdhPJwuNazpKAOATKE0nNMW3rBUfq40/YWGzdym8cpzWqRYRMeOtvTbqo19OaXgrOTKauto0Mlknyht6Q0bCPx/Xog=
X-Received: by 2002:a6b:1454:: with SMTP id 81mr17362520iou.96.1608627309948; 
 Tue, 22 Dec 2020 00:55:09 -0800 (PST)
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
 <CAEExFWuF82B3bPn8T8_vkHODNwP89MDrNOqu-MhObzqTfiYODw@mail.gmail.com>
In-Reply-To: <CAEExFWuF82B3bPn8T8_vkHODNwP89MDrNOqu-MhObzqTfiYODw@mail.gmail.com>
From: Viresh Kumar <viresh.kumar@linaro.org>
Date: Tue, 22 Dec 2020 14:24:59 +0530
Message-ID: <CAKohpokBHcv34Qh1csHOF5w7utSNy8F_umMzv--pFuPTP9D4wg@mail.gmail.com>
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Frank Lee <tiny.windzz@gmail.com>
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
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:ULTRA-WIDEBAND \(UWB\) SUBSYSTEM:" <linux-usb@vger.kernel.org>,
 "open list:SECURE DIGITAL HO..." <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCA5IE5vdiAyMDIwIGF0IDE2OjUxLCBGcmFuayBMZWUgPHRpbnkud2luZHp6QGdtYWls
LmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBOb3YgOSwgMjAyMCBhdCAxOjUzIFBNIFZpcmVzaCBLdW1h
ciA8dmlyZXNoLmt1bWFyQGxpbmFyby5vcmc+IHdyb3RlOgoKPiA+ID4gZGV2bV9wbV9vcHBfc2V0
X3N1cHBvcnRlZF9odygpCj4gPiA+IGRldm1fcG1fb3BwX3NldF9yZWd1bGF0b3JzKCkgW2lmIHdl
IHdvbid0IHVzZSBHRU5QRF0KPiA+ID4gZGV2bV9wbV9vcHBfc2V0X2Nsa25hbWUoKQo+ID4gPiBk
ZXZtX3BtX29wcF9vZl9hZGRfdGFibGUoKQo+ID4KPiA+IEkgdHJpZWQgdG8gbG9vayBlYXJsaWVy
IGZvciB0aGUgc3R1ZmYgYWxyZWFkeSBtZXJnZWQgaW4gYW5kIGRpZG4ndAo+ID4gZmluZCBhIGxv
dCBvZiBzdHVmZiB3aGVyZSB0aGUgZGV2bV8qIGNvdWxkIGJlIHVzZWQsIG1heWJlIEkgbWlzc2Vk
Cj4gPiBzb21lIG9mIGl0Lgo+ID4KPiA+IEZyYW5rLCB3b3VsZCB5b3UgbGlrZSB0byByZWZyZXNo
IHlvdXIgc2VyaWVzIGJhc2VkIG9uIHN1Z2dlc3Rpb25zIGZyb20KPiA+IERtaXRyeSBhbmQgbWFr
ZSBvdGhlciBkcml2ZXJzIGFkYXB0IHRvIHRoZSBuZXcgQVBJcyA/Cj4KPiBJIGFtIGdsYWQgdG8g
ZG8gdGhpcy7vvJrvvIkKCkZyYW5rLAoKRG1pdHJ5IGhhcyBzdWJtaXR0ZWQgYSBzZXJpZXMgd2l0
aCBhIHBhdGNoIHRoYXQgZG9lcyBzdHVmZiBsaWtlIHRoaXMgc2luY2UgeW91Cm5ldmVyIHJlc2Vu
dCB5b3VyIHBhdGNoZXMuCgpodHRwOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDEyMTcxODA2
MzguMjI3NDgtMTQtZGlnZXR4QGdtYWlsLmNvbQoKU2luY2UgeW91IHdlcmUgdGhlIGZpcnN0IG9u
ZSB0byBnZXQgdG8gdGhpcywgSSB3b3VsZCBzdGlsbCBsaWtlIHRvCmdpdmUgeW91IGEgY2hhbmNl
CnRvIGdldCB0aGVzZSBwYXRjaGVzIG1lcmdlZCB1bmRlciB5b3VyIGF1dGhvcnNoaXAsIG90aGVy
d2lzZSBJIHdvdWxkIGJlIGdvaW5nCnRvIHBpY2sgcGF0Y2hlcyBmcm9tIERtaXRyeS4KCi0tCnZp
cmVzaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
