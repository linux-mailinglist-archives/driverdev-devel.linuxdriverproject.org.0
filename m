Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 920BD2AC45D
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 20:00:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1004C86241;
	Mon,  9 Nov 2020 19:00:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oocgq4dw86rv; Mon,  9 Nov 2020 19:00:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13868861C7;
	Mon,  9 Nov 2020 19:00:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 394CB1BF380
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 19:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 350E48734B
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 19:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cdyFcG3RNqQI for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 19:00:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B4B5C86E88
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 19:00:33 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id y22so9992844oti.10
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 11:00:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5YUEvnB3to37KnbuxcK5tx/hJGsx2a/LFMlp0aY5TLQ=;
 b=GFgwnglPWLVTWel9PSd5cSkkn43HsxXXEwHQmqhHfVkuklhDLqMzvHuY3HdDbmJndx
 I3lR3qXGdqF4nKXEwOj4CCE94miRmuH38jv2rc8ANeDPgyeWCbvho7L+ERf9hlij2b74
 WGc1S8t+PMjKrpzaicYocSkQ+tZjul1lyZStvTBquEepJsaKOC5RhokpvCIyH33EatDz
 TlctGXhXRNE3qYzHCop5TzOcD60NwC7yoQnlCmvowpGdwcTRbDCmjBpKHBoEy/Ao1+jD
 laaZWk4yg1HI1RztwA6eUS+hTnsDqaPktKMdb4Sj7f2tFdugjSjlI/rA5yuziJLL1xRW
 RHdw==
X-Gm-Message-State: AOAM533edRCYVX2Zyy9q5wsB99MeS164q/vl5GfOpOAcK4vhxe16pTt/
 tQM30pIhu3CWBzKYlLejvQ==
X-Google-Smtp-Source: ABdhPJyMX9zDE7/Gr58n7kd8OGZN4yCUG4rGtgbFXHnSLCafRqgq9w/7W4V89fBfDlqFoI1WEyH4Pw==
X-Received: by 2002:a9d:6c94:: with SMTP id c20mr12134497otr.151.1604948433035; 
 Mon, 09 Nov 2020 11:00:33 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o9sm2602082oos.29.2020.11.09.11.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 11:00:32 -0800 (PST)
Received: (nullmailer pid 1590838 invoked by uid 1000);
 Mon, 09 Nov 2020 19:00:30 -0000
Date: Mon, 9 Nov 2020 13:00:30 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 03/30] dt-bindings: pwm: tegra: Document OPP and
 voltage regulator properties
Message-ID: <20201109190030.GA1590784@bogus>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-4-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104234427.26477-4-digetx@gmail.com>
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
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 05 Nov 2020 02:44:00 +0300, Dmitry Osipenko wrote:
> Document new DVFS OPP table and voltage regulator properties of the
> PWM controller.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../devicetree/bindings/pwm/nvidia,tegra20-pwm.txt  | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
