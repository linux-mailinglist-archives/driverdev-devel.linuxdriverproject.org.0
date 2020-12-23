Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E952E180C
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 05:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82E64872D3;
	Wed, 23 Dec 2020 04:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6nBjM5DqNQz7; Wed, 23 Dec 2020 04:19:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E46458723B;
	Wed, 23 Dec 2020 04:19:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03E341BF4E5
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 04:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F2AA687244
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 04:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DGtSGAX3+DWI for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 04:19:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D51F8723B
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 04:19:38 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id s21so9627793pfu.13
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 20:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=26Fr+AtJaqoWMCq9NSUD8XDm547WXau8kIa+Po3ijaQ=;
 b=sT3RPi0cmSySv3TpxqXakwSZd4+TeVAbgUtHRhhkr9zD2oKndQhh3nAF2ZWRKFEwst
 fxL85ZuUBFNAQ5onTZ3nMEdhsWGrllkYRYl1tGbri1cjmNeEdBXqoR00oFAdZlinf2sG
 i3trnl1FImHrkHWsQjqfYqktVg5C0p9hGp3zMs/4X0+liPYJ7Fj35h7EVOzzqMQQ4BmP
 NoOLT9BhfddUa5brM8O18Y39e3dDinW3tOqST333s6BHhsMhvIuY7sARBYQPtJaNRvta
 GBJlJv49y/k+55A3aNfm4MsUIuzj/qy5vzUrSvfzWGdcTkTePTwKJsgOch7YgnJiucC7
 W3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=26Fr+AtJaqoWMCq9NSUD8XDm547WXau8kIa+Po3ijaQ=;
 b=knJk5/+WNghyjvv37XM/FOESXi3uynv0JAz1eCbi7UxEKXtak70njZOMU/N6D0Y1EL
 PAyTQDFv8TwjFsxexBOyLXE8D16qJPXsPoF34cjnBVPoq8rw9p5iwIMctXCwcWO4h/GX
 61/welmkCWVB9p1KWr9208vsa1hhHRaZ2mvafVxMdDYKw90w+xR3Q0+OMe7R3CEocjQ4
 KIUCh362Rs0SqC4noR9aoRZPZXv99Fb7MQfvIOuruhlyT6cacjkB4zcLP1mAfHT/QIf2
 aKXCLPNnVEcXOaW9n0fs1vSnXj7reI/dxqDbcybxeY9HS1sD4v8N/Eb7wd134C3HuoCg
 wiGQ==
X-Gm-Message-State: AOAM530Spj8k38ofJymEwY6wCduK/9BjPjTJiiYqUG5G9Pmxeakyo5Wz
 B6U4JSMLoXfdAWGydoLJPgWquQ==
X-Google-Smtp-Source: ABdhPJz3XTw78JGZT3bqt2E1D4SaVZTnIQudWjGvtEJkaUATY8WvaXe+1UR/zVBvhFKdu72MF7n3JA==
X-Received: by 2002:a63:c205:: with SMTP id b5mr310031pgd.281.1608697177622;
 Tue, 22 Dec 2020 20:19:37 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id j23sm2918258pgj.34.2020.12.22.20.19.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 20:19:36 -0800 (PST)
Date: Wed, 23 Dec 2020 09:49:31 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
Message-ID: <20201223041931.klnppy4fu3sdgtsz@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
 <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
 <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
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

T24gMjItMTItMjAsIDIyOjE1LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjIuMTIuMjAyMCAw
OTo0MiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiBPbiAxNy0xMi0yMCwgMjE6MDYsIERt
aXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+PiBBZGQgYSBjZWlsIHZlcnNpb24gb2YgdGhlIGRldl9w
bV9vcHBfZmluZF9sZXZlbCgpLiBJdCdzIGhhbmR5IHRvIGhhdmUgaWYKPiA+PiBsZXZlbHMgZG9u
J3Qgc3RhcnQgZnJvbSAwIGluIE9QUCB0YWJsZSBhbmQgemVybyB1c3VhbGx5IG1lYW5zIGEgbWlu
aW1hbAo+ID4+IGxldmVsLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkaWdldHhAZ21haWwuY29tPgo+ID4gCj4gPiBXaHkgZG9lc24ndCB0aGUgZXhhY3QgdmVyc2lv
biB3b3JrIGZvciB5b3UgaGVyZSA/Cj4gPiAKPiAKPiBUaGUgZXhhY3QgdmVyc2lvbiB3b24ndCBm
aW5kIE9QUCBmb3IgbGV2ZWw9MCBpZiBsZXZlbHMgZG9uJ3Qgc3RhcnQgd2l0aAo+IDAsIHdoZXJl
IDAgbWVhbnMgdGhhdCBtaW5pbWFsIGxldmVsIGlzIGRlc2lyZWQuCgpSaWdodCwgYnV0IHdoeSBk
byB5b3UgbmVlZCB0byBzZW5kIDAgZm9yIHlvdXIgcGxhdGZvcm0gPwoKLS0gCnZpcmVzaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
