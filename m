Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C233D2E032D
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 01:09:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 782E086362;
	Tue, 22 Dec 2020 00:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6vwf6X6q3Qx; Tue, 22 Dec 2020 00:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07A298629C;
	Tue, 22 Dec 2020 00:09:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43C6F1BF97C
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 00:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3A88A22F26
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 00:09:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ei-TKoXMoXxU for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 00:09:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D7DF2152C
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 00:09:11 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id q25so10434715otn.10
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 16:09:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ItdUMRfTDsdb0hqe14rohMJr65K3UQ/22dOQXCjLzFE=;
 b=XeVa1z20szRq8Ixn2b++ptZ7EoSFsUAwbToqdjXVoMU0ZSLa5cQ4MQSRt5c+nFUyt7
 N40vACTYU6V2LitNHShnzh15dt0Gop0D05n4ElSGxN9e3Y3qKDs5c0Qxyw/lPdcRRNUq
 vSVkUmkbq5XvZG/SuULVhg/Z1XVwalvKaDLF1EfIfOfoINnmz/mBDzS1xoPxi5mahdcN
 YYlO7opaBnpRQgVHRu/seXBIFAudRAQEhQ2WKA+hke4mDe2/qv+8J4dFRhBbGqDAWXCL
 WcUnO6LSHTZYbctDSzSMH4iPb4Y0i1LtHcqVhwBqOyIcakbnjJwofmp2S9J+XwZdrD7X
 pIPw==
X-Gm-Message-State: AOAM530Vz1XdZc51Zo+QzSpwHHcnMEXFKsU9Qk7LTdeizVBjeYeI0+iC
 p7gf/JnhsKPcy+lOJR/6Mg==
X-Google-Smtp-Source: ABdhPJy4jl6IQt5jJ5yPRdxdZBTTS1Nugckix9YOiNWPt3ntEL9GZvmZ7XQ1+laNFn9KbtQIJ5+hQA==
X-Received: by 2002:a9d:470f:: with SMTP id a15mr14177036otf.62.1608595750781; 
 Mon, 21 Dec 2020 16:09:10 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id s77sm4075422oos.27.2020.12.21.16.09.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Dec 2020 16:09:09 -0800 (PST)
Received: (nullmailer pid 890725 invoked by uid 1000);
 Tue, 22 Dec 2020 00:09:04 -0000
Date: Mon, 21 Dec 2020 17:09:04 -0700
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 04/48] dt-bindings: host1x: Document OPP and power
 domain properties
Message-ID: <20201222000904.GA890651@robh.at.kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-5-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-5-digetx@gmail.com>
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
 devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 17 Dec 2020 21:05:54 +0300, Dmitry Osipenko wrote:
> Document new DVFS OPP table and power domain properties of the Host1x bus
> and devices sitting on the bus.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../display/tegra/nvidia,tegra20-host1x.txt   | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
