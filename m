Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C61052AC454
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 19:58:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7125186A01;
	Mon,  9 Nov 2020 18:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VtxzR2YMkwH; Mon,  9 Nov 2020 18:58:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D95CE869D7;
	Mon,  9 Nov 2020 18:58:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40CEA1BF380
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 18:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36FDD8621D
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 18:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ozvJEcxlgAlm for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 18:58:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0BD286204
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 18:58:40 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id z16so9990822otq.6
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 10:58:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pgrZHaOCOPdU/jfeIgQpo9Dm6WsghEsHSG6Bkgxz0XA=;
 b=TiPArXDsrPniiobMgvOkHQ2cv1eEa/YzccgfeRsx0hsp1rw2HgBXz17G5dx8W34dFc
 1BaKE7Zn0JLNYW48sfQpzMFmitkSlVPuT4KUb2MDoyJA+CA+wFYVSG1zUcTCBsfDSb8Y
 utg8jJxTLAntMGCaERpa815TMSWCjc3uV5XFHpVU79l/KXLQJpydY4NLO662GvOCzNMp
 aCJeVY8fGxfb8Jk4naZ1RHjO3y2x0PxHj/LwWOi+B0aGk4/Ovvee+GuPHRIKKzx9QO4G
 PJhQpGmWd7RBrb780F2+gMQew4we6fw4TV2NhGviHhArGue5Vr0mBd1Z8GbZpAaYPXJc
 NyuA==
X-Gm-Message-State: AOAM531tXXZR/hg/8l914NzGeyFN66uOFpG0080pgnoNhT+SaQemAXyf
 hr9KHC0+ro2dV++6YdalBA==
X-Google-Smtp-Source: ABdhPJyNs3hy9NApzcsU0lR0JiGA6Xoyl6EnnMUG3Iz58jvEQet+apYRfnkdcvKCihcLKFHZgOJJjA==
X-Received: by 2002:a9d:22e4:: with SMTP id y91mr11382390ota.72.1604948320001; 
 Mon, 09 Nov 2020 10:58:40 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r24sm2683114otq.77.2020.11.09.10.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:58:39 -0800 (PST)
Received: (nullmailer pid 1588239 invoked by uid 1000);
 Mon, 09 Nov 2020 18:58:37 -0000
Date: Mon, 9 Nov 2020 12:58:37 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 02/30] dt-bindings: mmc: tegra: Document OPP and
 voltage regulator properties
Message-ID: <20201109185837.GA1588183@bogus>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-3-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104234427.26477-3-digetx@gmail.com>
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
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-tegra@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 05 Nov 2020 02:43:59 +0300, Dmitry Osipenko wrote:
> Document new DVFS OPP table and voltage regulator properties of the
> SDHCI controller.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../devicetree/bindings/mmc/nvidia,tegra20-sdhci.txt | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
