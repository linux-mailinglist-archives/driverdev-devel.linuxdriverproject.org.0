Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B82DD2E0797
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 09:59:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E35D866ED;
	Tue, 22 Dec 2020 08:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUind8b6FdPL; Tue, 22 Dec 2020 08:59:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A8E6869CD;
	Tue, 22 Dec 2020 08:59:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54CF01BF280
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 08:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50E9685EFB
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 08:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kcCCQ4wBKlsK for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 08:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C83DE85DFD
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 08:59:43 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id s15so2677810plr.9
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 00:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RHvyko5iU5xg8Cz45AVBchwM4SDGk3Y/8Etp7zQo/0E=;
 b=LfPP06TVJTEK4xWL0o4Uusz6IXwXzk8z3S6CPrE/vyZ9qoOMFRUyzQJWUKQxWhuG/E
 wY5edJUerDgkww2zd4lzbce6lRCficFwzejWrQiDZi/xwHlgy96zpj6C8ioFq0ZrQXBk
 mSOkM2U+2pDJWLqA+j7R2srsKaCnOdyMwev89OKW8IKEfkAPs6AL+3xqznBpqvwnQ0NT
 fjm9Rb+Xfn10diw8TlqXQy8/GkenTeXEg9jbL1dOeVHP/+gjymWREs9O4mMhUSRkCgx+
 FWO4nhtVc54saAG5QAt6VsqTuAXLPGXWUixoDkMsUGzE1xB0aRN/Z6i4X+no1fBNw+u5
 gkcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RHvyko5iU5xg8Cz45AVBchwM4SDGk3Y/8Etp7zQo/0E=;
 b=RGNPF1aBKH+KcLo7V86QvjfKHjor1VbvqmdDbHttv1Iv7ZL77c6te/G+nuqzkxuBbE
 uuP2X+t4HtAAbMqMBg6S8LnZWq+KCVOyiw3t4VvXybCB839FK+VhZjAlEI8iejjF4z5H
 btYp/XGQCJQlOK87mz1hvFJY39hs+Gi2/lgxayQYU5/hPEdgUPA1BAc7VW13gvAwf0vM
 XDUXk5aEKRDb3yGLGrAoPwoTeri5VTdEMOlBC2127ihI5D9CcTNnHQHgDLc2cXbY6H4z
 uUTgAFcYZInyJo8QMU0Ufr6gmu+1IORUnszeetm45BKkox9XG0XsiZycY2Ej6nH+PWC9
 cRuw==
X-Gm-Message-State: AOAM530a4Y4fo2lQ6tfoHZRQ+3CMt6UNG4c6/RLElF6LzFhtb3XYi8s1
 N4UR6fJuE5WDMrRIVScCRTQpUw==
X-Google-Smtp-Source: ABdhPJykL54UnjW4ciN4fGRWEBJgf6zWsJDjMds2/uHeESPpVfQNNcqkwOSZPGazCeKG973ySyugcg==
X-Received: by 2002:a17:902:c584:b029:da:cc62:22f1 with SMTP id
 p4-20020a170902c584b02900dacc6222f1mr20408042plx.54.1608627583415; 
 Tue, 22 Dec 2020 00:59:43 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id x4sm19796659pgg.94.2020.12.22.00.59.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 00:59:42 -0800 (PST)
Date: Tue, 22 Dec 2020 14:29:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 14/48] opp: Filter out OPPs based on availability of a
 required-OPP
Message-ID: <20201222085940.y625zxee4tevbqm5@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-15-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-15-digetx@gmail.com>
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

On 17-12-20, 21:06, Dmitry Osipenko wrote:
> A required OPP may not be available, and thus, all OPPs which are using
> this required OPP should be unavailable too.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/opp/core.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)

Please send a separate patchset for fixes, as these can also go to 5.11 itself.

> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index d9feb7639598..3d02fe33630b 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -1588,7 +1588,7 @@ int _opp_add(struct device *dev, struct dev_pm_opp *new_opp,
>  	     struct opp_table *opp_table, bool rate_not_available)
>  {
>  	struct list_head *head;
> -	int ret;
> +	int i, ret;
>  
>  	mutex_lock(&opp_table->lock);
>  	head = &opp_table->opp_list;
> @@ -1615,6 +1615,15 @@ int _opp_add(struct device *dev, struct dev_pm_opp *new_opp,
>  			 __func__, new_opp->rate);
>  	}
>  
> +	for (i = 0; i < opp_table->required_opp_count && new_opp->available; i++) {
> +		if (new_opp->required_opps[i]->available)
> +			continue;
> +
> +		new_opp->available = false;
> +		dev_warn(dev, "%s: OPP not supported by required OPP %pOF (%lu)\n",
> +			 __func__, new_opp->required_opps[i]->np, new_opp->rate);

Why not just break from here ?

> +	}
> +
>  	return 0;
>  }
>  
> -- 
> 2.29.2

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
