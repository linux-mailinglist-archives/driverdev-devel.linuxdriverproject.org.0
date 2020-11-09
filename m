Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 309A82AB04A
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 05:47:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 304E6204F8;
	Mon,  9 Nov 2020 04:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0o+pauwk+TO3; Mon,  9 Nov 2020 04:47:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D105220104;
	Mon,  9 Nov 2020 04:47:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C1D21BF29E
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 04:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 181E085F8D
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 04:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YDMVvDE0dPhW for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 04:47:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3817285F8B
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 04:47:52 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id v18so8709249ljc.3
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 20:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cLiYnZqbbTYE+Gmw/2Cct5bDgH44FThPRJ7yw1uOIgg=;
 b=q2vWN2tcxbRALqh8OhrgcjDqiOjQbYaIcNRVNh3xuY/yQantgDrl9u9nLrJnRUv9hA
 ozelSxwbh5ozbLSshRt26t0nn4JgOue72bFZttfyw0OBrgyxy/0q3YUfYR1pgzipa1SN
 6rHhFDgY16ZfVDrPNbw8QVvyGqs9wQGx8X/2T03ASxqQRgNE0dCDud32D9uGfGNfmZew
 AenTGWzR9MZaHnzxGDIGm5LIPE7Dlu6AUnIf3Gl4/2Uz0XXecX93kgVw1IzKv+dHuxNp
 SVxUDP0R0o66WKgdGwDfxEasf8e1tTJw/gWlwvjZlL0cz4D/qEX0YXjFyR4Mid3JYB8g
 gN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cLiYnZqbbTYE+Gmw/2Cct5bDgH44FThPRJ7yw1uOIgg=;
 b=nRpv5tRNi29a3JEvI077cpshKQJXOjs38UUCoaicWVCSCYSBUR5IcLQdW99FMA6FJq
 P72gWMO9mkrK6y1sLG6GXBktHi86p5egtvg3AV9HyYqC9EkzyjU2PssrLOtowy2V4jlQ
 lmElCxBTLsU7pg6SL0OWREwEEefEhD/6zs/ZDH2u35iRRMLNb++OmkQBj1xD3Km5bpJR
 j8U+ou1CsPXlZEYThEFnjMZKX/4K5OymZcH2A5M/My6K8NGMz7YDaO68qAwhm1wUhj4E
 +6l3D4I/7ZGNlCVIe5aZ7MaR7+/bVqX94D1S0vXbLntAVtnqjitkVOWSm8g5uocxVblp
 VniA==
X-Gm-Message-State: AOAM53282S9hX2jCLH7klXERG9OjuwHJHJOFXpRZQ1QplC0BI8sqSTOd
 Rs/jTT6Swyii98hX0UdGy9Y=
X-Google-Smtp-Source: ABdhPJyDE2aG8TshKuizrAN7qDH3x0b/P0IYn1ToY1b01Ld0Wj957fykeNLLAtH1r4vAPpkK8xTQfg==
X-Received: by 2002:a05:651c:2cb:: with SMTP id
 f11mr218668ljo.371.1604897270127; 
 Sun, 08 Nov 2020 20:47:50 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id w13sm795441lfq.72.2020.11.08.20.47.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Nov 2020 20:47:49 -0800 (PST)
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
 <2716c195-083a-112f-f1e5-2f6b7152a4b5@gmail.com>
 <20201109044354.ljd5pomhob6b7u5v@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <713b319e-bb7b-4743-59f0-b9892c3da92d@gmail.com>
Date: Mon, 9 Nov 2020 07:47:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201109044354.ljd5pomhob6b7u5v@vireshk-i7>
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

MDkuMTEuMjAyMCAwNzo0MywgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMDgtMTEtMjAs
IDE1OjE5LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEkgdG9vayBhIGRldGFpbGVkIGxvb2sg
YXQgdGhlIEdFTlBEIGFuZCB0cmllZCB0byBpbXBsZW1lbnQgaXQuIEhlcmUgaXMKPj4gd2hhdCB3
YXMgZm91bmQ6Cj4+Cj4+IDEuIEdFTlBEIGZyYW1ld29yayBkb2Vzbid0IGFnZ3JlZ2F0ZSBwZXJm
b3JtYW5jZSByZXF1ZXN0cyBmcm9tIHRoZQo+PiBhdHRhY2hlZCBkZXZpY2VzLiBUaGlzIG1lYW5z
IHRoYXQgaWYgZGV2aWNlQSByZXF1ZXN0cyBwZXJmb3JtYW5jZSBzdGF0ZQo+PiAxMCBhbmQgdGhl
biBkZXZpY2VCIHJlcXVlc3RzIHN0YXRlIDMsIHRoZW4gZnJhbWV3b3JrIHdpbGwgc2V0IGRvbWFp
bidzCj4+IHN0YXRlIHRvIDMgaW5zdGVhZCBvZiAxMC4KPiAKPiBJdCBkb2VzLiBMb29rIGF0IF9n
ZW5wZF9yZWV2YWxfcGVyZm9ybWFuY2Vfc3RhdGUoKS4KPiAKClRoYW5rcywgSSBwcm9iYWJseSBo
YWQgYSBidWcgaW4gdGhlIHF1aWNrIHByb3RvdHlwZSBhbmQgdGhlbiBvdmVybG9va2VkCnRoYXQg
ZnVuY3Rpb24uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
