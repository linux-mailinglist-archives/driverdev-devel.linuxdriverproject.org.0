Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 229502DEE55
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Dec 2020 12:02:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C7AEF2044B;
	Sat, 19 Dec 2020 11:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PdRiy59HIxn1; Sat, 19 Dec 2020 11:02:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1C20820448;
	Sat, 19 Dec 2020 11:02:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 891261BF5A6
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 11:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76CE020434
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 11:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hX9l2fyjJEgW for <devel@linuxdriverproject.org>;
 Sat, 19 Dec 2020 11:02:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by silver.osuosl.org (Postfix) with ESMTPS id EB70D20432
 for <devel@driverdev.osuosl.org>; Sat, 19 Dec 2020 11:02:20 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id x16so6891711ejj.7
 for <devel@driverdev.osuosl.org>; Sat, 19 Dec 2020 03:02:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uV8NM4ewui2V4x6VSIOE6oo6nIoQPudLTeEHvVfs8JQ=;
 b=gIEsUEcIFOslY2cYPgXAVupE0kl1rmVQa9Op0QN9ACDnKoyh0O3jikhx2Vzg3Hycnf
 U8zAFodktSNkpLeMzkpITpt3E4DMSbn5emyeYlWftkYzKmJdp9aSePaNh0hePoEu78zX
 v9+x+J/TsXPobBi+tOGPZmyuoP238VjtVG+DffsWA+pdsCw6sv0YeL8A/s6oC/jWKlgo
 pbNLh2B23i6/C30Qb4CFrC4MyQOlIvni9EdnMail1eQhJYOHNRMjT63s90obot9DMkb5
 bS6vIO+K6DPRWVeg7ml3OHsPEarQyungzA/wREn7J7yBv9hYsROv5ftzbqW0g/gHruRb
 KbnA==
X-Gm-Message-State: AOAM532Xh0XnnBNobn/pq0NL7dens2T6K06QcmuEPRylXtvH2gk6NBCB
 lgsSClb/O1ZglkWj8CWlip0=
X-Google-Smtp-Source: ABdhPJzxz67/afVC/FecrdBWnQo3YhrStnV8UwyX/FnI8M7nQ7PMaAAZLXFCUP8jKCtTVxGcSTk9gg==
X-Received: by 2002:a17:907:1004:: with SMTP id
 ox4mr7872260ejb.240.1608375739292; 
 Sat, 19 Dec 2020 03:02:19 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
 by smtp.googlemail.com with ESMTPSA id i26sm6569740eja.23.2020.12.19.03.02.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Dec 2020 03:02:18 -0800 (PST)
Date: Sat, 19 Dec 2020 12:02:16 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 41/48] memory: tegra20-emc: Use
 devm_tegra_core_dev_init_opp_table()
Message-ID: <20201219110216.GB5323@kozik-lap>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-42-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-42-digetx@gmail.com>
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
 Viresh Kumar <vireshk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 17, 2020 at 09:06:31PM +0300, Dmitry Osipenko wrote:
> Use common devm_tegra_core_dev_init_opp_table() helper for the OPP table
> initialization.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/memory/tegra/tegra20-emc.c | 57 +++---------------------------
>  1 file changed, 4 insertions(+), 53 deletions(-)

If there was no more Tegra MC work planned, this could easily go via
Tegra SoC tree. However I expect still work of your interconnect
patches, so maybe it's better to stick these in same tree.

In such case I would need a stable tag with the
devm_tegra_core_dev_init_opp_table() helper for memory controller tree.

Best regards,
Krzysztof

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
