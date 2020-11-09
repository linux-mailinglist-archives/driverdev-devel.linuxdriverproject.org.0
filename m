Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2A12AC441
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 19:57:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F058486AB2;
	Mon,  9 Nov 2020 18:57:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9aRJBcMebZ28; Mon,  9 Nov 2020 18:57:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E66BC86918;
	Mon,  9 Nov 2020 18:57:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F37791BF380
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 18:57:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E7811203F5
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 18:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Us0iEMfIV+s2 for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 18:57:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 273AE20368
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 18:57:29 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id i18so10015760ots.0
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 10:57:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Yp+Myu+RbCp/hhggXGpFgymnJTdUJhcL8XQ+E+Agqsg=;
 b=EMNKw6ebpukWdi4bR4JuC4EUIWhyqclk6x0zZ1OSJDTKGIGUGVzMdKUp4tP2kl9LjR
 gx5gS76xY01UfiZN9BdPqYjvZRzOvw9w8Hmi6QNI8F41N7aKsAziM0rv/+JgB31SeTep
 saZ85pP+6IFNeQKXzD0Ru+GnM6Zg2Z41yuJ+9QDKkJDTM1wvMgwXQsDV+TXD2TFjNYet
 3XWDp/1MU002Zs/OOz1MS1uqYpW+75xBsceMjfPxteQkJFF8b3TVI9q4szPKljr5Q8Ov
 dwpfoZLZIfxsniZax33nt5Y0lvYgRTjSRWFhSP8x48dPj+I2vr2NjQ/nQ1xkTOEAxdwN
 Y+iA==
X-Gm-Message-State: AOAM530XSr1ViJEQQQuKf233n0J0zjp08R7HThth/Rl3LnKkAUBJ13MB
 m12vgeQJj7SVy05MZorGhg==
X-Google-Smtp-Source: ABdhPJwTrJM8+DV6yoj0yZkvksdAC3aJsLLLrx1WHxgB39fkbPYVnHOpW6Iq5AkW4A4fHBNfxiLHQg==
X-Received: by 2002:a05:6830:2093:: with SMTP id
 y19mr10923388otq.219.1604948248350; 
 Mon, 09 Nov 2020 10:57:28 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o29sm2726530ote.7.2020.11.09.10.57.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:57:27 -0800 (PST)
Received: (nullmailer pid 1586563 invoked by uid 1000);
 Mon, 09 Nov 2020 18:57:25 -0000
Date: Mon, 9 Nov 2020 12:57:25 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 01/30] dt-bindings: host1x: Document OPP and voltage
 regulator properties
Message-ID: <20201109185725.GA1586511@bogus>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-2-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104234427.26477-2-digetx@gmail.com>
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
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 05 Nov 2020 02:43:58 +0300, Dmitry Osipenko wrote:
> Document new DVFS OPP table and voltage regulator properties of the
> Host1x bus and devices sitting on the bus.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../display/tegra/nvidia,tegra20-host1x.txt   | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
