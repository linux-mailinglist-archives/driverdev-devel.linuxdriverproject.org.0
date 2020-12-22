Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CAF2E079E
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 10:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0B022272DF;
	Tue, 22 Dec 2020 09:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5yzUiMFwfZjh; Tue, 22 Dec 2020 09:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E1B1203F6;
	Tue, 22 Dec 2020 09:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4189E1BF406
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 09:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D390869D5
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 09:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DYFSyFt9mpFy for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 09:01:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0555F869D0
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 09:01:42 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id n7so7983052pgg.2
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 01:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3q7nnCnJmd4O4D32PC0P8xH1+bdbk1CdNF9NmfMW4t0=;
 b=Sw8hWqsmWEV28OZ97FyOgXyFgk5shKHWAxZzHcRzRhaM/6+T4brrF3/aXanmbfPjRw
 /A9CHWFxY/26ovZDBEoLzvrVEQgYuX/8xBOFFAOh2S++/KtpIaGJfhKZuA8vaiEUG6N5
 RDqNcxOViH+za8EEfeOTF4OJ0FgNLYkqGyciyEF6yFonDS/ytj6QebompmK2qd5iwMxT
 f60gJWZOOaEE42z2GFxRM7tJMnnNTqxHJqeFzNzO5GVHLT7/VnICWMEMwFNfUuNd7lT8
 CMqaiMF7EhSgACQ9J+vlj6sz3hYK3bX6+CzSrtrtNmrSTvIrdM+em0PwSBTuQL1T2brh
 GG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3q7nnCnJmd4O4D32PC0P8xH1+bdbk1CdNF9NmfMW4t0=;
 b=fI0j8UPW2YcUb7/NFTCsOanU7MCL0wpWE6msdO9OyECoC7GF/Bg+znTX4ixbT5abf/
 aPwFGwnRr8x1cSxJldbryYQnqWbexL6C5zXxSNh5XX5smCFCdUAinCs3VRPQYQ9JRnXz
 EdyY2S9VuUXkGD9BF7YHbZhkiPhyVtAcnTkUyiu5n+Z6lU+iRiO5HKUwi7uPbxTO5iRB
 G1+LeBIx78l7PkixYkKwFU0N0QrJuUsow40Z6UQUTZpEeKG5q52ylmQSdzbBW0E19Uvt
 fNaIsplJauD17jMzr09MWTmZC/MtMhxCQatmu43ZPc1kXMJ5Nhx0ZsbETh+yeGHYHNaw
 h4QA==
X-Gm-Message-State: AOAM530rjeZZ1C9j76ZoAAeFbAi+or2LApVFHDzS4o4RY115NrEWmSB8
 219vICRtleT3tuDKYM/8wa3nGA==
X-Google-Smtp-Source: ABdhPJzpaUuhCwigtZPkt7tXXBF91xrRM3nJ/y/UBldoNdmIzxgqD3l3BVqGdS+DNg3W0X8ggHASsA==
X-Received: by 2002:a62:864e:0:b029:1ab:e82c:d724 with SMTP id
 x75-20020a62864e0000b02901abe82cd724mr15830943pfd.9.1608627701598; 
 Tue, 22 Dec 2020 01:01:41 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id o14sm14548124pgr.44.2020.12.22.01.01.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 01:01:40 -0800 (PST)
Date: Tue, 22 Dec 2020 14:31:39 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 15/48] opp: Support set_opp() customization without
 requiring to use regulators
Message-ID: <20201222090139.vopgc2ju72kr4ujy@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-16-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-16-digetx@gmail.com>
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
> Support set_opp() customization without requiring to use regulators. This
> is needed by drivers which want to use dev_pm_opp_set_rate() for changing
> rates of a multiple clocks and don't need to touch regulator.
> 
> One example is NVIDIA Tegra30/114 SoCs which have two sibling 3D hardware
> units which should be use to the same clock rate, meanwhile voltage
> scaling is done using a power domain. In this case OPP table doesn't have
> a regulator, causing a NULL dereference in _set_opp_custom().
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/opp/core.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 3d02fe33630b..625dae7a5ecb 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -828,17 +828,25 @@ static int _set_opp_custom(const struct opp_table *opp_table,
>  			   struct dev_pm_opp_supply *old_supply,
>  			   struct dev_pm_opp_supply *new_supply)
>  {
> -	struct dev_pm_set_opp_data *data;
> +	struct dev_pm_set_opp_data *data, tmp_data;
> +	unsigned int regulator_count;
>  	int size;
>  
> -	data = opp_table->set_opp_data;
> +	if (opp_table->set_opp_data) {
> +		data = opp_table->set_opp_data;
> +		regulator_count = opp_table->regulator_count;
> +	} else {
> +		data = &tmp_data;
> +		regulator_count = 0;
> +	}
> +
>  	data->regulators = opp_table->regulators;
> -	data->regulator_count = opp_table->regulator_count;
> +	data->regulator_count = regulator_count;
>  	data->clk = opp_table->clk;
>  	data->dev = dev;
>  
>  	data->old_opp.rate = old_freq;
> -	size = sizeof(*old_supply) * opp_table->regulator_count;
> +	size = sizeof(*old_supply) * regulator_count;
>  	if (!old_supply)
>  		memset(data->old_opp.supplies, 0, size);
>  	else

I don't see you making use of this in this patchset. How did you get this to
crash ?

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
