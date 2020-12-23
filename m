Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CBE2E18B5
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 07:01:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C95185D7E;
	Wed, 23 Dec 2020 06:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 06tOno_2G63A; Wed, 23 Dec 2020 06:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C79AB85D4B;
	Wed, 23 Dec 2020 06:01:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 337F61BF41B
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 06:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FEED86FF8
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 06:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x3I4E4gyNdx1 for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 06:01:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8318386FC8
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 06:01:04 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id g3so8609169plp.2
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 22:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4NTrNWSzSRmqwCvEQTSp0+nnEx8m/nIQOMiO0uIjc1c=;
 b=WvDRkmfxJVkbMxrPHfQO3jIIP0y/4x9UMXb4LToUg0c0YVvY1v4RZrwNlueMl3TxUA
 LhGgJdJ92dhnRdqfHs6g8anfNRbf1l3Kmc9/pX6fAPYlRtoT262w08UsgSlWlqjwupim
 2rTRdJaJfAcBRk7WFZGXpnHhMzcnnfOVRchCFyriNz+u0XQ8rIHPtECtKub6jjl2X1+5
 u0ItXOKm5ZnduCP8Cm7CrIEnXL9xd920+5LPpI6GbeLhPSxVFzdGqmDFUxmXoFqjPlZL
 qvMtwOzbFqkFpFexgWWO5Tdjz5PhXaRJUfKZ1KFBLp0LcE39lWeRM19YL0vgg7wtne1B
 Yrtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4NTrNWSzSRmqwCvEQTSp0+nnEx8m/nIQOMiO0uIjc1c=;
 b=Y5RZzMlC7gtY/3MJL117S9/HM0Ony0N0ZHz59lUhlUlVvyN8VGEmUOaSpsSUzwzLYy
 JdjgQGxRBzrZ91incDpBXeSzUx/KjQcJdhIFrE872WthINbsfICqoo/TH4kdLF69xtSE
 H2WAgR1Zxp2ZJF+osMotigKse6JTkZ0psSPa3kfIS79fQ0fG10BNPiRSZ25MuSalaVrp
 GZCP4sMHetQI6gCkZiT5/oZJoiXP/Sy2qw/8qf1mAL1rav3Hr0G73p+w+Uagm00b1qZj
 /E+ZSl3Uku2i/3Y8alNUPbwv6kPvt0gEHXbeVRtAGLSlTSPmq7HeswHCfc8jSMUds1z8
 bZjQ==
X-Gm-Message-State: AOAM532G6d+GHI7GaV8z8N9UNIF6x9CTfeFtjGEawKICG8axW5hRLFdN
 Bj2hzOPblRR2hL+5xrttPKE4zQ==
X-Google-Smtp-Source: ABdhPJyh2KPTGU4ayTa1XNiz400Y+zyRHMud7qFaV0QD/t+nRNJvznyZNbPeqd5VSc3ukQwC7r4DkA==
X-Received: by 2002:a17:90b:16cd:: with SMTP id
 iy13mr24835386pjb.182.1608703264363; 
 Tue, 22 Dec 2020 22:01:04 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id y27sm22645455pfr.78.2020.12.22.22.01.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 22:01:03 -0800 (PST)
Date: Wed, 23 Dec 2020 11:31:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 15/48] opp: Support set_opp() customization without
 requiring to use regulators
Message-ID: <20201223060101.v2qihvvgsmpahg24@vireshk-i7>
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

We should use the same structure, you can add some checks but not replace the
structure altogether.

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

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
