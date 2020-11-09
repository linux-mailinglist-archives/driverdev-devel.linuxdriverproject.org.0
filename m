Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE042AC482
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 20:02:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F44B20532;
	Mon,  9 Nov 2020 19:02:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ecRvz-qYPShd; Mon,  9 Nov 2020 19:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B9E0203F5;
	Mon,  9 Nov 2020 19:02:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F2AA1BF380
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 19:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 94A3E203F5
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 19:01:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AgVzAEOL7Wl3 for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 19:01:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id CF07720368
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 19:01:55 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id n15so10002135otl.8
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 11:01:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XU7y3c5jKQwTRFURlMcdIsjUqbBQIJvi2dRnhrHPP2E=;
 b=ancWvFzr8kOCImqvkhR2oJGXE/wE6XrVOXkh704GBFmtwlYzhU+NzVGzXGG0Gr1rs6
 gFljlmXDoLclmztQu5nnc+ImMb8wfIPP2uet+XpuN5RMkQudrVnfxMOqw2tYQrJq//PW
 Z1MNJNvVDCLJTrQF0Y3cVwUbp5m1Uh3tQEAZbCKgitLhdUivnrYjCbMChoDnbY56i/i7
 HExzTreq6GLIUCOOl4u1VJg085BxkHNT5LsUR0tlMKmc/UH78p7fy9Vm2EEuit+Srib3
 QjtcnmmT80WlRLdABIpOktGhZNWobrZj2MAYwYjapgnpNy/Zy5kE5QB17SEdK9vqDAPy
 pyUQ==
X-Gm-Message-State: AOAM530tvUNIy5+0VPkUxvPNWZAfdjJZhkIrChTbvAOKIjmzjX8BxiEY
 QLHXnZYajL6RbY+UCjB68Q==
X-Google-Smtp-Source: ABdhPJw681tHcSTTGqGgpXlkNWmd92BhhZoG61LbluCCQbsQRzYEPiujcl6g2HrH1OOy41T/D++2Fw==
X-Received: by 2002:a9d:6c11:: with SMTP id f17mr11473992otq.208.1604948515112; 
 Mon, 09 Nov 2020 11:01:55 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w18sm2383935oti.61.2020.11.09.11.01.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 11:01:54 -0800 (PST)
Received: (nullmailer pid 1592966 invoked by uid 1000);
 Mon, 09 Nov 2020 19:01:51 -0000
Date: Mon, 9 Nov 2020 13:01:51 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 06/30] dt-bindings: usb: tegra-ehci: Document OPP and
 voltage regulator properties
Message-ID: <20201109190151.GA1592922@bogus>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-7-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104234427.26477-7-digetx@gmail.com>
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
 Liam Girdwood <lgirdwood@gmail.com>, Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 05 Nov 2020 02:44:03 +0300, Dmitry Osipenko wrote:
> Document new DVFS OPP table and voltage regulator properties of the
> Tegra EHCI controller.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/nvidia,tegra20-ehci.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
