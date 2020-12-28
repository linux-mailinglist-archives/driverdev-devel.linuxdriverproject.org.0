Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D6B2E3476
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Dec 2020 07:23:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A53A622925;
	Mon, 28 Dec 2020 06:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 56OPletC9QAd; Mon, 28 Dec 2020 06:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5758221537;
	Mon, 28 Dec 2020 06:23:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC9391BF3C1
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 06:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B191386C8C
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 06:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Pz2yFVS62EX for <devel@linuxdriverproject.org>;
 Mon, 28 Dec 2020 06:22:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D51FF86B06
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 06:22:57 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id b5so5979521pjk.2
 for <devel@driverdev.osuosl.org>; Sun, 27 Dec 2020 22:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bBQaI4eroTRmm0x4+2Q+qEFawwLNxWB2aEwv9ebwMhs=;
 b=cPdP7kkh/2GQAzg0cOAkSgg+4Z/Q6YFPDrT8cPEIWgPQcde3qUGxURpjfO6E1bHDX5
 X3avIcaIwpZe0l5RjuLs76tegwm2PWF2nIR/3NFqEyoyL7mMQKM38y/oXu8UPBoXDCBe
 owAlPnx2QEhE97fGYccJS79yI+KQx2U4UXdsmGweTOUwrLsDu9pmHU4Huwoutx9pTsoP
 8diXqSx2xAX1gQQbPKkftl20krrAxVSUChxQV7zKgsn7WSoMJGr4Sq7KmuEZCIbsqfdm
 KKxISWBxSfoIxY6pIT71NfdMH7ym7iMSKRQNzxwpLFNAeRNw43wKsq5DXii3GeV4pWs7
 Va4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bBQaI4eroTRmm0x4+2Q+qEFawwLNxWB2aEwv9ebwMhs=;
 b=mQojjMfGwUOZmH1o5EiewIjNQDrhJfabXChgW4CWU4I7GfMyJXUPmPwVJ3WAVM8CsR
 bfPaCGWtDBTCWDO+iaaaVFs2T16roCV6hnsatabGdHWdQS28wEI2D81FeNVeNeNpLUra
 2zksO/kPJFooL9G32dYReY7akTmLsmLtGtsdNc2wWxvDNVSOe3QtTBV2hzG7Q4n+oNdb
 hoB1KF7auRzjCbyUT/FT3kqWpxOn4JSJMZLnzWFSRREqArULQscyBIIQs1VNvBSCy1Wo
 bu4axLTm3juYmJiktCjDmFKoWGC5AJbKRhMRkXWdiGyogwiNX3YJnoJZSGFXP6BYVq3p
 MiSA==
X-Gm-Message-State: AOAM5335fL5HGrgQz2+Ig8zRha4a8kxTWkWcoXsJ7nV3m+tiipfdFK6F
 slI6MymRfQn8ZZmW96Hx7o70lg==
X-Google-Smtp-Source: ABdhPJz34QQgPHpCVQubAmFzTB4NyEMYwCvkashDNlLU+9Me4PGHkK6SRqtiBSWyGNrVtvJ0I4RJeA==
X-Received: by 2002:a17:902:7291:b029:dc:c69:e985 with SMTP id
 d17-20020a1709027291b02900dc0c69e985mr20695263pll.33.1609136577345; 
 Sun, 27 Dec 2020 22:22:57 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id q70sm13313850pja.39.2020.12.27.22.22.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 27 Dec 2020 22:22:56 -0800 (PST)
Date: Mon, 28 Dec 2020 11:52:54 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
Message-ID: <20201228062254.ui727ka2ftijov4m@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
 <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
 <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
 <20201223041931.klnppy4fu3sdgtsz@vireshk-i7>
 <f00e0c74-8d9a-d3d3-81bb-3ac25a74175d@gmail.com>
 <20201224064339.zngidobhstnlu2a3@vireshk-i7>
 <780db190-d93d-3bca-4819-790010f82c62@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <780db190-d93d-3bca-4819-790010f82c62@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 24-12-20, 16:00, Dmitry Osipenko wrote:
> In a device driver I want to set PD to the lowest performance state by
> removing the performance vote when dev_pm_opp_set_rate(dev, 0) is
> invoked by the driver.
> 
> The OPP core already does this, but if OPP levels don't start from 0 in
> a device-tree for PD, then it currently doesn't work since there is a
> need to get a rounded-up performance state because
> dev_pm_opp_set_voltage() takes OPP entry for the argument (patches 9 and
> 28).
> 
> The PD powering off and performance-changes are separate from each other
> in the GENPD core. The GENPD core automatically turns off domain when
> all devices within the domain are suspended by system-suspend or RPM.
> 
> The performance state of a power domain is controlled solely by a device
> driver. GENPD core only aggregates the performance requests, it doesn't
> change the performance state of a domain by itself when device is
> suspended or resumed, IIUC this is intentional. And I want to put domain
> into lowest performance state when device is suspended.

Right, so if you really want to just drop the performance vote, then with a
value of 0 for the performance state the call will reach to your genpd's
callback ->set_performance_state(). Just as dev_pm_opp_set_rate() accepts the
frequency to be 0, I would expect dev_pm_opp_set_rate() to accept opp argument
as NULL and in that case set voltage to 0 and do regulator_disable() as well.
Won't that work better than going for the lowest voltage ?

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
