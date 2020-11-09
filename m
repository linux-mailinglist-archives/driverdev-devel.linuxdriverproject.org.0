Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1CC2AB079
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 06:10:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A34A786995;
	Mon,  9 Nov 2020 05:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cNu2VJk-fD99; Mon,  9 Nov 2020 05:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95CB58695C;
	Mon,  9 Nov 2020 05:10:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACDF81BF417
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5489868FF
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fqaunvaLzzzW for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 05:10:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BD6FF84BE7
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 05:10:19 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id 11so8751889ljf.2
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 21:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=F8bnoTfMLfQuAGNjcxWowIscN/dz6R46GaHzllMg8J0=;
 b=QYMCKqr7RGvgYQCWbQWS7P62qghK9GYhJHOPC6o3qWYxnmx01eOxLC3P9oE915gwvt
 Fh3WypXWmqFr5JDzFvcPizJHaUlaojEYEUSbCYiCwkjs4V93aOmdN+Fgb69PJ6NqE2Gw
 PU1tJC6S9ZO6C2E/cEJiZ7Ugx4M8B/quGev7CODiOs60KgtrPSL8dsbQi1bSJBrgItSj
 sS++FruzLvRC0nDuMK2bw7Tv77TCae5RwbeUbWYjmokvQPKApEWrKpR+CACc3lpJArf0
 NYbmiYM7C+3HAkDJKFrl7LPc7SxMra13YtbJE8XKMrd/eT1ThSFtS/0QhWfQ+88xkHzq
 O9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F8bnoTfMLfQuAGNjcxWowIscN/dz6R46GaHzllMg8J0=;
 b=bZFI6J6Se5LwvBk+FAoSkiwnEZBQabxLIQqbg4IPEC1KHYbpNd2wLchW6oPKSD2b3Q
 IByO/7g+Apc1G9NJzHxcgN3Q1KmycveDHAQBeVadm4D+eiRwhM3dbnB76wH3C8VmrHn8
 hucfZM0iDXjhR74yBeMvUsJ2cVNUUgPouizbVR3h7TIybd/MB04GjQu7jd5k0YrKY4sm
 94Rrky63ZX1WwriCrhoBnHFXSVNbWXa8wpVxZbGZWG4sYtqxBV+fqHXeEmccNXhx347I
 3jDLO8R7lhxJxJSivBELwycqgnyrtPst1ApM6cyzO1McyGVE9Dv0GPa0eMfbaPHvKgIi
 rhMw==
X-Gm-Message-State: AOAM533XEg3PrvT12NsKPRUM+7szehceTKbQ964+CQVMnthRUMg++nP7
 pMYDqHi/zqvm5fuEz0ZtafSOZCOXYVs=
X-Google-Smtp-Source: ABdhPJzn+t/fz27158UyX7xdQtkSIJERw+NXYwjCpA/tjOndB+43X/qkcsxZZqHz/vcErD/wbcazTQ==
X-Received: by 2002:a2e:6a0f:: with SMTP id f15mr272519ljc.375.1604898617889; 
 Sun, 08 Nov 2020 21:10:17 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id r9sm1547587ljd.23.2020.11.08.21.10.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Nov 2020 21:10:17 -0800 (PST)
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
From: Dmitry Osipenko <digetx@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
 <2716c195-083a-112f-f1e5-2f6b7152a4b5@gmail.com>
 <20201109044354.ljd5pomhob6b7u5v@vireshk-i7>
 <713b319e-bb7b-4743-59f0-b9892c3da92d@gmail.com>
Message-ID: <aba1fcac-74b8-f370-ab45-312975da66e6@gmail.com>
Date: Mon, 9 Nov 2020 08:10:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <713b319e-bb7b-4743-59f0-b9892c3da92d@gmail.com>
Content-Language: en-US
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
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDkuMTEuMjAyMCAwNzo0NywgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMDkuMTEuMjAy
MCAwNzo0MywgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4+IE9uIDA4LTExLTIwLCAxNToxOSwg
RG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+Pj4gSSB0b29rIGEgZGV0YWlsZWQgbG9vayBhdCB0aGUg
R0VOUEQgYW5kIHRyaWVkIHRvIGltcGxlbWVudCBpdC4gSGVyZSBpcwo+Pj4gd2hhdCB3YXMgZm91
bmQ6Cj4+Pgo+Pj4gMS4gR0VOUEQgZnJhbWV3b3JrIGRvZXNuJ3QgYWdncmVnYXRlIHBlcmZvcm1h
bmNlIHJlcXVlc3RzIGZyb20gdGhlCj4+PiBhdHRhY2hlZCBkZXZpY2VzLiBUaGlzIG1lYW5zIHRo
YXQgaWYgZGV2aWNlQSByZXF1ZXN0cyBwZXJmb3JtYW5jZSBzdGF0ZQo+Pj4gMTAgYW5kIHRoZW4g
ZGV2aWNlQiByZXF1ZXN0cyBzdGF0ZSAzLCB0aGVuIGZyYW1ld29yayB3aWxsIHNldCBkb21haW4n
cwo+Pj4gc3RhdGUgdG8gMyBpbnN0ZWFkIG9mIDEwLgo+Pgo+PiBJdCBkb2VzLiBMb29rIGF0IF9n
ZW5wZF9yZWV2YWxfcGVyZm9ybWFuY2Vfc3RhdGUoKS4KPj4KPiAKPiBUaGFua3MsIEkgcHJvYmFi
bHkgaGFkIGEgYnVnIGluIHRoZSBxdWljayBwcm90b3R5cGUgYW5kIHRoZW4gb3Zlcmxvb2tlZAo+
IHRoYXQgZnVuY3Rpb24uCj4gCgpJZiBhIG5vbi1oYXJkd2FyZSBkZXZpY2UtdHJlZSBub2RlIGlz
IG9rYXkgdG8gaGF2ZSBmb3IgdGhlIGRvbWFpbiwgdGhlbgpJIGNhbiB0cnkgYWdhaW4uCgpXaGF0
IEkgYWxzbyBoYXZlbid0IG1lbnRpb25lZCBpcyB0aGF0IEdFTlBEIGFkZHMgc29tZSBleHRyYSBj
b21wbGV4aXR5CnRvIHNvbWUgZHJpdmVycyAoM2QsIHZpZGVvIGRlY29kZXIpIGJlY2F1c2Ugd2Ug
d2lsbCBuZWVkIHRvIGhhbmRsZSBib3RoCm5ldyBHRU5QRCBhbmQgbGVnYWN5IFRlZ3JhIHNwZWNp
ZmljIHByZS1nZW5wZCBlcmEgZG9tYWlucy4KCkknbSBhbHNvIG5vdCBleGFjdGx5IHN1cmUgaG93
IHRoZSB0b3BvbG9neSBvZiBkb21haW5zIHNob3VsZCBsb29rIGxpa2UKYmVjYXVzZSBUZWdyYSBo
YXMgYSBwb3dlci1jb250cm9sbGVyIChQTUMpIHdoaWNoIG1hbmFnZXMgcG93ZXIgcmFpbCBvZiBh
CmZldyBoYXJkd2FyZSB1bml0cy4gUGVyaGFwcyBpdCBzaG91bGQgYmUKCiAgZGV2aWNlIC0+IFBN
QyBkb21haW4gLT4gQ09SRSBkb21haW4KCmJ1dCBub3QgZXhhY3RseSBzdXJlIGZvciBub3cuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
