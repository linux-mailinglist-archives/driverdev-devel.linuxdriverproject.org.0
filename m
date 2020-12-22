Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 508FC2E0622
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 07:43:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D9FFE27261;
	Tue, 22 Dec 2020 06:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZgRi5qzgjLz; Tue, 22 Dec 2020 06:43:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 68D58232D2;
	Tue, 22 Dec 2020 06:43:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85A911BF343
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 06:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 81F3786A00
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 06:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HfVkgtV3qNyE for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 06:42:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4EB95869FE
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 06:42:56 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id c22so7746708pgg.13
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 22:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KcaYAZQ+AoDm9Jn9wokihL78HxRFsW+AhH8/h9c+1wA=;
 b=uR9O2EdLr4l+d+J8DstQgDPJiLPo1oLcBQPLe9jc2o++kue1dXZm05qdnvOIStsjzl
 LxGtFbuTHlEcESPdNBvcsJRRBnhcQ8k3qWJTtqEA9Vsn1CHhzGmqcZCHzFhyuPgQch7w
 ZkBOnZ/IbbjQIn9Vy+DguNDJMixeiercHvgjsHdWn/QJte3DEZIiQdkulmFdS91Y43F1
 vk9hBZZWmvz96CbVxWwTN4UuBDgRDzuMiUl3t0NwETYOL4uelpc2l16EUrg/gYEFZxFx
 bnyZzEsIobaE2fETZkKFj8q6rzCf48SfT+Z3B1NG0u7NFx+M3/vmtvFpKgR2lL4ATFSB
 92qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KcaYAZQ+AoDm9Jn9wokihL78HxRFsW+AhH8/h9c+1wA=;
 b=c0nNFryioTGPt4U4ndCv/pchaSXV8GrsSYPBSaOQbREbN90PTI789tlwVMRA4+AjJ8
 a+YZxPcSjvbKqQa0yZw7CIATRlWx8DD2yEwlT0UBLiEhqZHgGcLjREDdQQvt26QZJjRc
 +1YEGWsbaprU8BVXPuirGXNU+rwmE5VFM1JXnxaX83DD1zbqGtuUTQfKSf1ALy20i7vI
 XkyJP9WyqicjJU6gs3csDo6cO0tRnzrpabdhOVjVaVydJfNq+rMBDWITMRw2lMmIBncJ
 GKdEwxlG1zD0DmzkqMX+NuWKySrvqTEc3a31thixBDGlhQ6X1OGV/PfnnXwPNYSz8UV5
 dsew==
X-Gm-Message-State: AOAM532pCmu1FJEJmUFMzt2aHb+6PK+TnttPV1oB4NAvp3PSA0eMaLsQ
 RexwkdTlI7bk58h7K+XFvM/60w==
X-Google-Smtp-Source: ABdhPJxBR/Z8Ma4PVg9ZbczgXmM2X91HSAXGveL8f8GmkDzgajqaFrdpkcD8mdHIemFfHzAJ0M1KFQ==
X-Received: by 2002:a62:61c5:0:b029:1a9:5a82:4227 with SMTP id
 v188-20020a6261c50000b02901a95a824227mr18914548pfb.61.1608619375827; 
 Mon, 21 Dec 2020 22:42:55 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id 198sm18893827pfw.29.2020.12.21.22.42.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Dec 2020 22:42:55 -0800 (PST)
Date: Tue, 22 Dec 2020 12:12:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
Message-ID: <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-12-digetx@gmail.com>
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
> Add a ceil version of the dev_pm_opp_find_level(). It's handy to have if
> levels don't start from 0 in OPP table and zero usually means a minimal
> level.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>

Why doesn't the exact version work for you here ?

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
