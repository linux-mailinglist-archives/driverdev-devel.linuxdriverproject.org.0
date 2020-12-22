Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A72EC2E0783
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 09:56:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 240992729B;
	Tue, 22 Dec 2020 08:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wEB5+3ewthMA; Tue, 22 Dec 2020 08:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 64D08271D5;
	Tue, 22 Dec 2020 08:56:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE2B71BF291
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 08:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D85F21507
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 08:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4fycUAkMToNX for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 08:55:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by silver.osuosl.org (Postfix) with ESMTPS id 6143F203F6
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 08:55:59 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id d2so8076764pfq.5
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 00:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vFzkf9KGKvhutZbig0u7i/t+IYvhk4nnFQKLcFcxsq4=;
 b=vAsAJop5QL87eRDzT5DTHMtwoNPt0CQSIkdTqkJeziTI1AZMtMAcIEm3Kl9fhnTk5V
 vB/lYkBRouI/12yFv6A1dCSOIC7zvTsWExhCNxYa4+Oefx74oga8DDnN983sE8WuR0Lw
 A/n6+TWPt+hiOGv4RVjVlrk029VE+mVsDRs23XZwxscocW8GlofyFgohPX99nF5S7Xwf
 uRZL+JFGs5YKyoIHowFMNinq/TGTNXJtfDFp0L89tHOseHc6j2SMhTv475d9VkLlcOL+
 Iu/sAsOo0E5YMGvGAyoXhWoXv1Ygp7453JTCPAWJO9u4w7D6CKSImKmQS5VN3jjIJN38
 c4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vFzkf9KGKvhutZbig0u7i/t+IYvhk4nnFQKLcFcxsq4=;
 b=rQxzi+8JKrdjUdBoT4sVxw/aL99lpD3X5Aeu2D1p49o5k3dpqlflXK32g8ov6pCPeb
 Lqp4KjhdXpQw9moYRz5ax2HBK6jsf0IquMe9BHo8RUWTMu9bMjWSqUIka6+WC4gzOZ8M
 792qM8PgTAUsikQhLqeRVEDtutz/fO6lnrxiIBTRQ9Jd219PmmUY0nplMTCnV3OVRISg
 EslEfYkL06RZ2kCQqxl1qCeKkgoWQBqN9uoWHvJj1iKA/taju8CPkfbcJYcJSuFNYUIf
 q03dtWj0TBI9UsxXKLMrVFyAYMqJB9/WB9Fr6Tna2eO+djFpyDdZLgQDBLVO/dmtZvFQ
 dR9g==
X-Gm-Message-State: AOAM532XBaV6nyVFJyqhad/cGVFZlLdl+FtRZJB+pmsz+kCB2KLQ1lR2
 wrJCyIJpP2lCVs34jjHoD4z+jQ==
X-Google-Smtp-Source: ABdhPJywc6LY9gPB8aIXdU8FTmnJRcbIf3Irdo/T2lGMg7jN2SK9J2SNLPjpJEYbiKAaBbTsluyTwA==
X-Received: by 2002:a63:6806:: with SMTP id d6mr18604366pgc.205.1608627358914; 
 Tue, 22 Dec 2020 00:55:58 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id t7sm19377680pfe.179.2020.12.22.00.55.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 00:55:58 -0800 (PST)
Date: Tue, 22 Dec 2020 14:25:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 13/48] opp: Add resource-managed versions of OPP API
 functions
Message-ID: <20201222085556.kce4dcwumk4u6ttm@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-14-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-14-digetx@gmail.com>
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
> Add resource-managed versions of OPP API functions. This removes a need
> from drivers to store and manage OPP table pointers.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/opp/core.c     | 173 +++++++++++++++++++++++++++++++++++++++++
>  drivers/opp/of.c       |  25 ++++++
>  include/linux/pm_opp.h |  51 ++++++++++++
>  3 files changed, 249 insertions(+)

Please send a patchset of its own for this patch, along with updates to all the
existing code that can make use of these.

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
