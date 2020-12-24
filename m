Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E33A92E24CA
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 07:28:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 81AF12E15C;
	Thu, 24 Dec 2020 06:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VvRhnrVHDc3m; Thu, 24 Dec 2020 06:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC37A2E148;
	Thu, 24 Dec 2020 06:28:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75F1F1BF3AA
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 06:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 66E5186566
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 06:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yXZQd7NrjtVd for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 06:28:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A2A448649A
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 06:28:30 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id m5so670893pjv.5
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 22:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=EjusjKqe1uD5qVIhtNFzzFr/40x6TzvZ/Sd3W/PBS+U=;
 b=fkgyFFom2uaI6UYerCixgJyMGXGGZzyzPl2pC34SDHHWr//SHmo19YSii8QHZaSaa0
 uZC2skGBke5PtP9vslEZombfKjKIAYRw9D3l2M5uGrJ+VkC9bDxNBcQDONWQUC2dmGxG
 6UJpFpuY87irp1H90rXExkNF0g2y+4HLV3Ep3/gdgJBqsszg3FbKmgil0GqbQ6dTgEnh
 DrDRzMipJyOMadGCFG5+H9D0UVs6y0l4FAVZ+I0/J5ZdR5hXHDE2454h+0iAD/EAVgA3
 IDDlN9SUV6QyhslIyk38zgEDS9uC1vEdXUB6uhGhlyh9+PUCifXrT875haF9d9ipr3qB
 NnsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=EjusjKqe1uD5qVIhtNFzzFr/40x6TzvZ/Sd3W/PBS+U=;
 b=e5SP4hM55sGrPjaXgnBU/MmmaQ/2G6m2D8HrETQNyWq+fZVf4OEFS0cycFsTmTuhod
 4ubM+53qAWj75lTyG7Uw5c1F+/Abxrn1dZG4xSge34OmVu41wsXQZpDpRJZLa5oCb291
 diBDc3twZmAQ5d5ETC2mItGCW6y6Fv8CDE78m5EKz6tPeFXmNmjhJDs8vcgXqUc0l+MM
 y4ANTdi5LXpSky8eem90DfdRs1u18MsM0QalUGCqRwYUN8z53VzR+KFAonHfS4URNeit
 m+NalcwNh73vPdrAr70VTJ4xmshm+ffN1wO7zWDdLitEVibHgamwzGjD007bAVtW9502
 +Igg==
X-Gm-Message-State: AOAM533qiTcVFxY3PVoTxfQGp6t24V0NJpGD/2Ti8c8079IEanVdIWQf
 D7oher7ue62VUEXafvNFT9CPNA==
X-Google-Smtp-Source: ABdhPJwZjLbo7aGBJ7sNLaIhWcs4xnkHkI7BDfYQrcbWA55ODln8fkpMZgsIP8pDydfAZ37ygqOZVA==
X-Received: by 2002:a17:90a:380c:: with SMTP id
 w12mr2982286pjb.117.1608791310121; 
 Wed, 23 Dec 2020 22:28:30 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id t18sm25653088pfl.138.2020.12.23.22.28.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Dec 2020 22:28:29 -0800 (PST)
Date: Thu, 24 Dec 2020 11:58:27 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 19/48] opp: Fix adding OPP entries in a wrong order if
 rate is unavailable
Message-ID: <20201224062826.frppxddfinjomfui@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-20-digetx@gmail.com>
 <20201222091255.wentz5hyt726qezg@vireshk-i7>
 <db6273e6-8406-b7ae-b51d-48ceb6d21962@gmail.com>
 <20201223043443.rklw5er6hck3gl4y@vireshk-i7>
 <7688d6b9-52a2-d30f-123f-43c01e03b968@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7688d6b9-52a2-d30f-123f-43c01e03b968@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
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

T24gMjMtMTItMjAsIDIzOjM2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjMuMTIuMjAyMCAw
NzozNCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiBPbiAyMi0xMi0yMCwgMjI6MTksIERt
aXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+PiAyMi4xMi4yMDIwIDEyOjEyLCBWaXJlc2ggS3VtYXIg
0L/QuNGI0LXRgjoKPiA+Pj4gcmF0ZSB3aWxsIGJlIDAgZm9yIGJvdGggdGhlIE9QUHMgaGVyZSBp
ZiByYXRlX25vdF9hdmFpbGFibGUgaXMgdHJ1ZSBhbmQgc28gdGhpcwo+ID4+PiBjaGFuZ2Ugc2hv
dWxkbid0IGJlIHJlcXVpcmVkLgo+ID4+Cj4gPj4gVGhlIHJhdGVfbm90X2F2YWlsYWJsZSBpcyBu
ZWdhdGVkIGluIHRoZSBjb25kaXRpb24uIFRoaXMgY2hhbmdlIGlzCj4gPj4gcmVxdWlyZWQgYmVj
YXVzZSBib3RoIHJhdGVzIGFyZSAwIGFuZCB0aGVuIHdlIHNob3VsZCBwcm9jZWVkIHRvIHRoZQo+
ID4+IGxldmVscyBjb21wYXJpc29uLgo+ID4gCj4gPiBXb24ndCB0aGF0IGhhcHBlbiB3aXRob3V0
IHRoaXMgcGF0Y2ggPwo+IAo+IE5vCgpUaGlzIGlzIGhvdyB0aGUgY29kZSBsb29rcyBsaWtlIGN1
cnJlbnRseToKCmludCBfb3BwX2NvbXBhcmVfa2V5KHN0cnVjdCBkZXZfcG1fb3BwICpvcHAxLCBz
dHJ1Y3QgZGV2X3BtX29wcCAqb3BwMikKewoJaWYgKG9wcDEtPnJhdGUgIT0gb3BwMi0+cmF0ZSkK
CQlyZXR1cm4gb3BwMS0+cmF0ZSA8IG9wcDItPnJhdGUgPyAtMSA6IDE7CglpZiAob3BwMS0+YmFu
ZHdpZHRoICYmIG9wcDItPmJhbmR3aWR0aCAmJgoJICAgIG9wcDEtPmJhbmR3aWR0aFswXS5wZWFr
ICE9IG9wcDItPmJhbmR3aWR0aFswXS5wZWFrKQoJCXJldHVybiBvcHAxLT5iYW5kd2lkdGhbMF0u
cGVhayA8IG9wcDItPmJhbmR3aWR0aFswXS5wZWFrID8gLTEgOiAxOwoJaWYgKG9wcDEtPmxldmVs
ICE9IG9wcDItPmxldmVsKQoJCXJldHVybiBvcHAxLT5sZXZlbCA8IG9wcDItPmxldmVsID8gLTEg
OiAxOwoJcmV0dXJuIDA7Cn0KCkxldHMgY29uc2lkZXIgdGhlIGNhc2UgeW91IGFyZSBmb2N1c3Np
bmcgb24sIHdoZXJlIHJhdGUgaXMgMCBmb3IgYm90aCB0aGUgT1BQcywKYmFuZHdpZHRoIGlzbid0
IHRoZXJlIGFuZCB3ZSB3YW50IHRvIHJ1biB0aGUgbGV2ZWwgY29tcGFyaXNvbiBoZXJlLgoKU2lu
Y2UgYm90aCB0aGUgcmF0ZXMgYXJlIDAsIChvcHAxLT5yYXRlICE9IG9wcDItPnJhdGUpIHdpbGwg
ZmFpbCBhbmQgc28gd2Ugd2lsbAptb3ZlIHRvIGJhbmR3aWR0aCBjaGVjayB3aGljaCB3aWxsIGZh
aWwgdG9vLiBBbmQgc28gd2Ugd2lsbCBnZXQgdG8gdGhlIGxldmVsCmNvbXBhcmlzb24uCgpXaGF0
IGFtIEkgbWlzc2luZyBoZXJlID8gSSBhbSBzdXJlIHRoZXJlIGlzIHNvbWV0aGluZyBmb3Igc3Vy
ZSBhcyB5b3Ugd29uJ3QgaGF2ZQptaXNzZWQgdGhpcy4uCgotLSAKdmlyZXNoCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
