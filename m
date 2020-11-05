Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4282A8211
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 16:22:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63429233A6;
	Thu,  5 Nov 2020 15:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4lFSN+25PnoH; Thu,  5 Nov 2020 15:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E0A1220424;
	Thu,  5 Nov 2020 15:22:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C0B41BF3E6
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 15:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7D2A120382
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 15:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5khaK3grxmMu for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 15:22:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 2717520370
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 15:22:13 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id k25so1962461lji.9
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 07:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=L7OVsr5m178XbCaCzAWNkdQoFi3/3zu9mN+yPgl2DUs=;
 b=ZUE+lII34sxgdJMzK2yn/f7sQCJw/4+mRXBdMBq1/bhBQWtfS/PtExzwYtktIoAWgY
 SU7g93lwJ2c7NK0CDwzeo+RytY043NhbabYKjJOBr7tIMP5wlLP/u6h82rzBRDjVxP9j
 EdnAYAZOpmyMs1GUR/kcd37x1kAewnXFex0wqQUKK37hfYXxUIOMvhuhv9Kkm4bWWj03
 NYOfuJLDcjhyyGqGtJNpIUWkJQCG6veMjv1sZZ5dae38lEVIkii3wjlD54ZKITpqpnKX
 8VoeiDhs1BxqGTAhX5SPmAP4HQXgACk2ac5ePAi3NeEKCHu2erytV3AEJlNMrsBJq5S8
 bmSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=L7OVsr5m178XbCaCzAWNkdQoFi3/3zu9mN+yPgl2DUs=;
 b=XBnewtPckts6jJITunXzwRMCY4CSG88ZY5YNXI3RMNZi0gkTMZ8J2kzyBBVwes/72G
 vW9lzj6TCsh9Z6cmkXflr50UFWsXk+rawdA+Or+HNINu341iH9DRJjzWi9pnMqYYDcLE
 z8kA9CVCEDY9XwBdtljmfltX5YS3UfeaozaEbOkRMlrRNhd/5Qvf96s7uUiz3CrKmrY5
 HJRT7pRRQkFlQVOasflm2/LjamCCDnL96SVx1kNi5xrIq9BpMtvYznQFpzskdfUjBd+u
 047oZXp7xXYinDED7OTWb/Nt5/bZkRnjqFEBBEz37+4s5lR2D4HgAbpc5Y6xBnjsdjFH
 7K1w==
X-Gm-Message-State: AOAM532PVsZqFnMK2lN/o7eAX7DiEAKfpyGjyXxwllhCdpT+F7L5SMpN
 E7l5ooHMAhbD6+SfgPir8BY=
X-Google-Smtp-Source: ABdhPJwC5ZQ/5zYH2nUFCy93HeDhVeV9bcOjajKeeVZadnE++shSnXPj1s2oA0r6x39bDtt0cphAoQ==
X-Received: by 2002:a2e:9a0e:: with SMTP id o14mr1127768lji.340.1604589731407; 
 Thu, 05 Nov 2020 07:22:11 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.googlemail.com with ESMTPSA id 144sm176642ljj.48.2020.11.05.07.22.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 07:22:10 -0800 (PST)
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
Date: Thu, 5 Nov 2020 18:22:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, DTML <devicetree@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Thierry Reding <thierry.reding@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDUuMTEuMjAyMCAxMjo0NSwgVWxmIEhhbnNzb24g0L/QuNGI0LXRgjoKLi4uCj4gSSBuZWVkIHNv
bWUgbW9yZSB0aW1lIHRvIHJldmlldyB0aGlzLCBidXQganVzdCBhIHF1aWNrIGNoZWNrIGZvdW5k
IGEKPiBmZXcgcG90ZW50aWFsIGlzc3Vlcy4uLgoKVGhhbmsgeW91IGZvciBzdGFydGluZyB0aGUg
cmV2aWV3ISBJJ20gcHJldHR5IHN1cmUgaXQgd2lsbCB0YWtlIGEgY291cGxlCnJldmlzaW9ucyB1
bnRpbCBhbGwgdGhlIHF1ZXN0aW9ucyB3aWxsIGJlIHJlc29sdmVkIDopCgo+IFRoZSAiY29yZS1z
dXBwbHkiLCB0aGF0IHlvdSBzcGVjaWZ5IGFzIGEgcmVndWxhdG9yIGZvciBlYWNoCj4gY29udHJv
bGxlcidzIGRldmljZSBub2RlLCBpcyBub3QgdGhlIHdheSB3ZSBkZXNjcmliZSBwb3dlciBkb21h
aW5zLgo+IEluc3RlYWQsIGl0IHNlZW1zIGxpa2UgeW91IHNob3VsZCByZWdpc3RlciBhIHBvd2Vy
LWRvbWFpbiBwcm92aWRlcgo+ICh3aXRoIHRoZSBoZWxwIG9mIGdlbnBkKSBhbmQgaW1wbGVtZW50
IHRoZSAtPnNldF9wZXJmb3JtYW5jZV9zdGF0ZSgpCj4gY2FsbGJhY2sgZm9yIGl0LiBFYWNoIGRl
dmljZSBub2RlIHNob3VsZCB0aGVuIGJlIGhvb2tlZCB1cCB0byB0aGlzCj4gcG93ZXItZG9tYWlu
LCByYXRoZXIgdGhhbiB0byBhICJjb3JlLXN1cHBseSIuIEZvciBEVCBiaW5kaW5ncywgcGxlYXNl
Cj4gaGF2ZSBhIGxvb2sgYXQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2Vy
L3Bvd2VyLWRvbWFpbi55YW1sCj4gYW5kIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9wb3dlci9wb3dlcl9kb21haW4udHh0Lgo+IAo+IEluIHJlZ2FyZHMgdG8gdGhlICJzeW5jIHN0
YXRlIiBwcm9ibGVtIChwcmV2ZW50aW5nIHRvIGNoYW5nZQo+IHBlcmZvcm1hbmNlIHN0YXRlcyB1
bnRpbCBhbGwgY29uc3VtZXJzIGhhdmUgYmVlbiBhdHRhY2hlZCksIHRoaXMgY2FuCj4gdGhlbiBi
ZSBtYW5hZ2VkIGJ5IHRoZSBnZW5wZCBwcm92aWRlciBkcml2ZXIgaW5zdGVhZC4KCkknbGwgbmVl
ZCB0byB0YWtlIGEgY2xvc2VyIGxvb2sgYXQgR0VOUEQsIHRoYW5rIHlvdSBmb3IgdGhlIHN1Z2dl
c3Rpb24uCgpTb3VuZHMgbGlrZSBhIHNvZnR3YXJlIEdFTlBEIGRyaXZlciB3aGljaCBtYW5hZ2Vz
IGNsb2NrcyBhbmQgdm9sdGFnZXMKY291bGQgYmUgYSBnb29kIGlkZWEsIGJ1dCBpdCBhbHNvIGNv
dWxkIGJlIGFuIHVubmVjZXNzYXJ5Cm92ZXItZW5naW5lZXJpbmcuIExldCdzIHNlZS4uCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
