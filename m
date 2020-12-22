Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC132E061B
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 07:41:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 73F6E22708;
	Tue, 22 Dec 2020 06:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id skcNoX+Dfb-h; Tue, 22 Dec 2020 06:41:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37255232D2;
	Tue, 22 Dec 2020 06:41:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A5CC1BF343
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 06:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66B6087256
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 06:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HlONNbimcG7e for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 06:41:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EFE7087252
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 06:41:29 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id r4so6908620pls.11
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 22:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qCUDEuOxwnC1AGuwl6fnluLE3mg41lKSQCQsRBnikAE=;
 b=SLqK80aWe80/oOFjlKAkk5jqsLmB6RoEBWiQMpcRzPAse5ZgDQA6H/f2QcYQaYX+Sk
 j72VoUeumbbh4H7SoJchN3WQ4I8yPJLZcR2WOnDQDMCzorCW4hJclXsTQgFoRz22RdKG
 b36kXTEMnqcyvZ4P8k2BHIQ3OnbkH5vPepxZyzfdedwjW/vFkSQupF0OBKJtYCIUOXd+
 tnsNf4Jyrnc5hEpCgs3Ty8sMXZ+Y1xPDWrfNT0FgbK/gljhOZLN19WV5tE5Pm7gIZMx/
 BqJRbe7G+WxvEmQbKhOkP8Fkwv3F+QpBIqDZjzxrC/La6nliwsr0G5LVDTCHzO75q9IH
 T1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qCUDEuOxwnC1AGuwl6fnluLE3mg41lKSQCQsRBnikAE=;
 b=qq7eqmjzDPV6MSWrfDv1P8Rtj4AXseMe5Wes/DoZjAPU8/1EEbJRuc4rlmXHusDfMo
 BTjh7wctw9OUIXjQjjiGxZ570MD5Dnt+ApdXRSGUxfoED5WcZGjimOQHEZ8bxiFUlr1O
 cwm/Wditj37VaNfN8skObug4+4efBP5XT8wZA9OgSVf2hVN3X6/+fvN9gpSpc3YcO4YT
 Dw+YNR7WrkL6HKM7t102HEdmn13C40TICFl32l/jypc1AzrDc32nKUKx6U4ZR2Bp0mNo
 fjVHrjIewOWQr4auKjecvEwmdMsr3zx14V4h4LoZBGajQMPHKExVMwh0tvK7DfQU/zHe
 cjAg==
X-Gm-Message-State: AOAM53385gpjWnyJnkzdzw3+8UhKiC7cIopA4z9YqDgNnOcz0aQH9dXM
 t10Teh05H1tBq2lySklUV6qIAQ==
X-Google-Smtp-Source: ABdhPJxN42pTclkBGDeXVc+JmlXJ2Zqv4ydgjwhoQWE66qXHkx0fFIYjfke1IlzZt4m8tXjIu/60fA==
X-Received: by 2002:a17:902:b94a:b029:dc:18f2:8063 with SMTP id
 h10-20020a170902b94ab02900dc18f28063mr20113799pls.8.1608619289583; 
 Mon, 21 Dec 2020 22:41:29 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id z2sm7851394pgl.49.2020.12.21.22.41.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Dec 2020 22:41:28 -0800 (PST)
Date: Tue, 22 Dec 2020 12:11:27 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 09/48] opp: Add dev_pm_opp_sync_regulators()
Message-ID: <20201222064127.cn7tagfwpi5tu4zk@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-10-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-10-digetx@gmail.com>
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

On 17-12-20, 21:05, Dmitry Osipenko wrote:
> Extend OPP API with dev_pm_opp_sync_regulators() function, which syncs
> voltage state of regulators.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>

We shouldn't be doing this, details in patch 28.

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
