Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B94092AC471
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 20:01:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E4E7862BE;
	Mon,  9 Nov 2020 19:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JFFLKou_us8H; Mon,  9 Nov 2020 19:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F6CA861C7;
	Mon,  9 Nov 2020 19:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4AE31BF380
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 19:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BC897861C8
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 19:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nVqQkyJrj6nA for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 19:01:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B0BE861C7
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 19:01:44 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id m143so11350320oig.7
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 11:01:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eFMBLTL2PEBWwAPN9U+kNbGLp9Yb/Evdl1oIvaz71lM=;
 b=GDPO6kYghRNzOiMlxeSZevpMXFneunt4tVxlTMla0TMLwS/QI6Ctg9UzZ3VPsyinMm
 6Lg01vhChkL0Ve0XCPBlJHLonPOKwm4rZnDw7rp4PkbOSuZ8Mq/0Umh1UZhOqAG5TggX
 WiXeQdOaPO38y5dJGscN2mzjyj1XET19msK0twqBBQL8l8tBJRtca8kpqNQUcmneR6WG
 41x78CffLU9tZemqD+tEv6X2hHw/vM91jVHkO4XHn99GOt5bu1OBOAgGbfo6UlD2aylI
 LjtSWqm7txoFxg2jEJxaCOqp6AEghWChbvGAMw5E5MNl692IwQqtqsnPGMhwxFp3eMQ5
 pFOw==
X-Gm-Message-State: AOAM53073tBGa3483ZDDX/OK/XTeRqldtwWLZqLVXUil11S5hVr7alNP
 0oTVWNOC9BXAgr1qJza3dg==
X-Google-Smtp-Source: ABdhPJyhd8w22tZX0i2ZdxI3coqSF5uqjsf5bOy6yJ+ZdMET91o4ROO4MnjEmThijz4ZdSCDJrN4rg==
X-Received: by 2002:a05:6808:a94:: with SMTP id
 q20mr384924oij.31.1604948503395; 
 Mon, 09 Nov 2020 11:01:43 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u16sm2548511ooj.8.2020.11.09.11.01.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 11:01:42 -0800 (PST)
Received: (nullmailer pid 1592610 invoked by uid 1000);
 Mon, 09 Nov 2020 19:01:41 -0000
Date: Mon, 9 Nov 2020 13:01:41 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 05/30] dt-binding: usb: ci-hdrc-usb2: Document OPP and
 voltage regulator properties
Message-ID: <20201109190141.GA1592558@bogus>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-6-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104234427.26477-6-digetx@gmail.com>
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
 linux-pwm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-samsung-soc@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 05 Nov 2020 02:44:02 +0300, Dmitry Osipenko wrote:
> Document new OPP table and NVIDIA Tegra-specific voltage regulator
> properties.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/ci-hdrc-usb2.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
