Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAAC2E0EA1
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:16:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8CD627428;
	Tue, 22 Dec 2020 19:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vp3kTzBdihZ5; Tue, 22 Dec 2020 19:16:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 235E0233A6;
	Tue, 22 Dec 2020 19:15:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9BA231BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97ED885E51
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWYy0rc9qfY0 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:15:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D952685E08
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:15:54 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id l11so34582570lfg.0
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bPx7EE6PSbCPkDarnx0nbSqX4DyTXsuDpEiN7AF5ASk=;
 b=by5CwRSkj7I1IIVMvp0X5QOxMswVE4c93suYm7juykVfkZccthrQYR/1LHg5tNX9Fs
 G5RwLCFfqZuGdA/NMT84/GKhThuNV13dgCCXDs/xbrTgpQc5HAhUTsSNzuw3OAt9hmPF
 rCBS/+GhCjpuMIBVDAodHt0e2K5MCFdMyRJCUenuFRI69khvLmnFtCssyFBTVA8mgAI3
 +P71mriOwhz3yEpqEecEZB4c63IhIbysXU/t4EmQ7A6e7VqHYmWGP4lyIkwrmWQ8nyWi
 oYy5aN+2WIyhWj0VJdqnrFFB/kKhcNWdk3BD+639Sf/Qe3l2191KixQ85whWtQvBNbO5
 Japg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bPx7EE6PSbCPkDarnx0nbSqX4DyTXsuDpEiN7AF5ASk=;
 b=DQbJ5fYAOfrw4VmaqU7lk3ghwM5tJVtc2UGyUGrrrU1m6fDumcuMyDMuTUhKSOQIlq
 uooorMPYCmVhhjOtKL/ilbC2HUT+J9CVtCN68bou73yre7KNWhovq2tgNWdOQ/axM9d/
 3T6Y3sa5hUZ0Ref2rMtuCIGVdSzDBgY55bwByzFBaG+xNtIv6euNk7WUW+iyFXLdNPTT
 gZcuk3sgCuQ/qPDelMJdrRtt9yPnq04ijIwY550ZpKv/Go2qI3EDIF8l2b24lTHasw77
 VkKOc9XPjLZrmepfBYCEnDoKaZS/WTT1uTqI4Tp3VyMBcLMbg4Dthu0FlPqLALlU10Jc
 hbaQ==
X-Gm-Message-State: AOAM533xEEY7+ubh6EUkCXwdC84b9xSS0OZiiN0jfFkMmcxHQ1neRKT5
 wEf5vB5CiSgxV8xaO/3q4y17SE8TOdQ=
X-Google-Smtp-Source: ABdhPJzHaWjDXUMak9w+Uk5NxxvdBfxwblLdXjwl2xjCH+RslfqzQ0040C+FqW1K8XqCgG6Upk0xGA==
X-Received: by 2002:a2e:9847:: with SMTP id e7mr10954928ljj.388.1608664553007; 
 Tue, 22 Dec 2020 11:15:53 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id f23sm2788410lfh.196.2020.12.22.11.15.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:15:52 -0800 (PST)
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
 <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
Date: Tue, 22 Dec 2020 22:15:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
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

MjIuMTIuMjAyMCAwOTo0MiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEFkZCBhIGNlaWwgdmVyc2lvbiBvZiB0
aGUgZGV2X3BtX29wcF9maW5kX2xldmVsKCkuIEl0J3MgaGFuZHkgdG8gaGF2ZSBpZgo+PiBsZXZl
bHMgZG9uJ3Qgc3RhcnQgZnJvbSAwIGluIE9QUCB0YWJsZSBhbmQgemVybyB1c3VhbGx5IG1lYW5z
IGEgbWluaW1hbAo+PiBsZXZlbC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkaWdldHhAZ21haWwuY29tPgo+IAo+IFdoeSBkb2Vzbid0IHRoZSBleGFjdCB2ZXJzaW9uIHdv
cmsgZm9yIHlvdSBoZXJlID8KPiAKClRoZSBleGFjdCB2ZXJzaW9uIHdvbid0IGZpbmQgT1BQIGZv
ciBsZXZlbD0wIGlmIGxldmVscyBkb24ndCBzdGFydCB3aXRoCjAsIHdoZXJlIDAgbWVhbnMgdGhh
dCBtaW5pbWFsIGxldmVsIGlzIGRlc2lyZWQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
