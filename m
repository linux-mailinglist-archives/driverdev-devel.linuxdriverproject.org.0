Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B65C92E0EE7
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0BC985F75;
	Tue, 22 Dec 2020 19:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tw_ilL9dPru8; Tue, 22 Dec 2020 19:25:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D408185F55;
	Tue, 22 Dec 2020 19:25:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1841BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 399DC8727E
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PKT+0JqHLHu7 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:25:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F265A8725C
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:25:48 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id s26so34511320lfc.8
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9+keXiLEk5gQGJPiWQkNdVYaSlolI1HV8zcJ2QbRMaQ=;
 b=cwmcOiIr56V+aHnviMOFhw4VD72whd2PBync3o2+Hbov28yOUg+OUoW9TCbUrF9P1z
 iCRrQp9DPbIlRmFAPpxKl10fINbO2txdguE4fAtCEdBTFYfMxy4ma+XExex7QQ3gFSeJ
 nC5LDYQ+63FHdkW7zMlIxWgJ0wJ+v7KvHPjTJB+RafkLgtHDhMnywSssMjo/Gfn6wYeU
 fDyHODxQh4aeFeVk6uVvyTBf9nNKrE+DRPAEGtvHoNOFhgLj6Swvyjx1qn8C2H09a4Ev
 ICJ8rRt14rTpnFJqgWe75rftGv5vf1RMl4t91L00Om2U2JCDPdmm82uzrx5BnSy8/cQ3
 JgNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9+keXiLEk5gQGJPiWQkNdVYaSlolI1HV8zcJ2QbRMaQ=;
 b=lzEqFaOdJcTzeuXUZz6uGYziSjIJmKT9Y2SllczlI4fTMD6+aru1MjDkBroZeal5Hu
 e25jt9VaOqjeXXYP/UgUGpaapgp9FkWXWas42EuZCzbzzBrQ42aYB/JATP0QlsPv3bN0
 R/+b1JDPlC4qJKEV3GkG+Vg9oPp3/JFro+X/r08qsWwyug44wAjZFRQJlu4TPUS24LV2
 qKhUCflI1QV8+8JA66/S2P0dTUrDmfRPZYuYnceebokghz+PcEB85aEbp8j5MP4iofoN
 B+V7AvypAiKG+RnIkVAHnaQn2v3n66uCR+a5ljqwGMyfSjVoidBdni0UGHv3rvXudRAl
 AE8A==
X-Gm-Message-State: AOAM532sdd7ArXbB3AoB1Ziz2QZcaXSWA3OQVDf0/J8Ty79CaP+VyvwD
 eTpm3evuRIUCeALSDAlFsFA=
X-Google-Smtp-Source: ABdhPJyXtIjDqUhu/7BRrpZ/tJi+1x7pRk7GyjlCea8ARaozHJ2tNG8EUYgfA3mlRH1V24zHnzlI9w==
X-Received: by 2002:a2e:b8d3:: with SMTP id s19mr10050098ljp.35.1608665147257; 
 Tue, 22 Dec 2020 11:25:47 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id d23sm3012942ljj.24.2020.12.22.11.25.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:25:46 -0800 (PST)
Subject: Re: [PATCH v2 44/48] ARM: tegra: Add OPP tables and power domains to
 Tegra30 device-tree
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-45-digetx@gmail.com>
 <20201222091408.vvputqs27olywdxq@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c00dbbb3-88fc-6606-e5b1-dcd6a3e60383@gmail.com>
Date: Tue, 22 Dec 2020 22:25:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222091408.vvputqs27olywdxq@vireshk-i7>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjIuMTIuMjAyMCAxMjoxNCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy90ZWdyYTMwLXBlcmlwaGVyYWxzLW9wcC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
dGVncmEzMC1wZXJpcGhlcmFscy1vcHAuZHRzaQo+PiBpbmRleCBjYmU4NGQyNWU3MjYuLjk4M2Ri
MWEwNjY4MiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvdGVncmEzMC1wZXJpcGhl
cmFscy1vcHAuZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy90ZWdyYTMwLXBlcmlwaGVy
YWxzLW9wcC5kdHNpCj4+IEBAIC0xLDYgKzEsNTYgQEAKPj4gIC8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wCj4+ICAKPj4gIC8gewo+PiArCWNvcmVfb3BwX3RhYmxlOiBjb3JlLXBv
d2VyLWRvbWFpbi1vcHAtdGFibGUgewo+PiArCQljb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2lu
dHMtdjIiOwo+PiArCQlvcHAtc2hhcmVkOwo+PiArCj4+ICsJCWNvcmVfb3BwXzk1MDogb3BwQDk1
MDAwMCB7Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDk1MDAwMCA5NTAwMDAgMTM1MDAwMD47Cj4+
ICsJCQlvcHAtbGV2ZWwgPSA8OTUwMDAwPjsKPiAKPiBQZXJoYXBzIHlvdSBkb24ndCBuZWVkIHRv
IGV4YWN0bHkgY29weSB0aGUgdm9sdGFnZSB2YWx1ZSBpbnRvIHRoZSBsZXZlbCBmaWVsZC4KPiBU
aGUgbGV2ZWwgZmllbGQgY2FuIGp1c3QgYmUga2VwdCB0byAwLCAxLDIsIDMsIGV0Yy4uCgpJdCdz
IG11Y2ggbW9yZSBjb252ZW5pZW50IHRvIHNldCBib3RoIGZpZWxkcyB0byB0aGUgc2FtZSB2YWx1
ZSBiZWNhdXNlCnRoZSBsZXZlbCB2YWx1ZXMgYXJlIHNob3duIGluIEdFTlBEIGRlYnVnZnMgYW5k
IHRoZSAwLDEsMiB2YWx1ZXMgYXJlCm1lYW5pbmdsZXNzIGZyb20gdGhlIGRlYnVnZ2luZyBwZXJz
cGVjdGl2ZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
