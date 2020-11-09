Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 371F02AC46C
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 20:01:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5110520764;
	Mon,  9 Nov 2020 19:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vNfbLV3RPC8; Mon,  9 Nov 2020 19:01:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0FE28203F5;
	Mon,  9 Nov 2020 19:01:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B24F81BF380
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 19:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A86A58737B
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 19:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J+L+xtZK6f3x for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 19:01:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A591287361
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 19:01:31 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id 30so4249498otx.9
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 11:01:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sxvGIdy8L6aF+X1tfnngpFsA6hnyaeT/BHnffJ6GLdk=;
 b=le0wx06jFgfdxeZW2tSdq3aIJUBqIs3D8vldiPe8k2M0v/mxlj1SqnckwwrySLDYDm
 qZn3bf2QO+J0MGB44s1cxKIadxcny+AUvyxusaVBaC7clxDqEtpWT6AZL3YaFvWyaZqr
 c6C0/5ZvJf5iWTbSMBJ/g4ElHCh1te9K4ih5ieO/4b+LtCsMyxtkV/wUvcaDVBMzTvwP
 r3dOb3PFqrR2Jv7EnuacrSr/hqgiNNPSlo9h4doLy0eH3l5xO0n5T3tDAax1Bw3mV7TG
 Ngb2s60x6MxAcFRJvmF6N8DeDk2E3dVQ+Ajd2lq3vmiYHe6I9Iyzxg2QHJ+YlauyEDF3
 Grlw==
X-Gm-Message-State: AOAM530wTq8AMGuU7Scbyt62Sr9FRLoq08dmBRB3IfPMhAuoVfdTPzya
 5W7juzV7LyoKq+mCtmqmWg==
X-Google-Smtp-Source: ABdhPJzOhkMgIOJrja36004ip5oRoceuSmOgBqEWKhX4GWjGFsinIHUsPIQPsWh2l7hn0/HugmXZQw==
X-Received: by 2002:a9d:3d06:: with SMTP id a6mr10887306otc.368.1604948490950; 
 Mon, 09 Nov 2020 11:01:30 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h6sm2563055oia.51.2020.11.09.11.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 11:01:30 -0800 (PST)
Received: (nullmailer pid 1592258 invoked by uid 1000);
 Mon, 09 Nov 2020 19:01:29 -0000
Date: Mon, 9 Nov 2020 13:01:29 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 04/30] media: dt: bindings: tegra-vde: Document OPP
 and voltage regulator properties
Message-ID: <20201109190129.GA1592208@bogus>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-5-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104234427.26477-5-digetx@gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 05 Nov 2020 02:44:01 +0300, Dmitry Osipenko wrote:
> Document new DVFS OPP table and voltage regulator properties of the
> video decoder engine.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../devicetree/bindings/media/nvidia,tegra-vde.txt   | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
