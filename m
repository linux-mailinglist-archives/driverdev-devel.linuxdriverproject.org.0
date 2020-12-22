Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4492E032E
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 01:10:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE40123120;
	Tue, 22 Dec 2020 00:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acop7NMd-es1; Tue, 22 Dec 2020 00:09:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4ABE023077;
	Tue, 22 Dec 2020 00:09:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2AFD21BF97C
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 00:09:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D8E922F26
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 00:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqoyJ66yj4H6 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 00:09:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E7702152C
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 00:09:40 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id x13so10433841oto.8
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 16:09:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zG6sef2nkyQSD9FdWc29n10NLZhBWeYXF5IDEZb5IhM=;
 b=a2dNIV+7bczdpGFcbcVeYPOLYXVIH9JHVNzDR9hkCuno22qL6YC4H1RBfg6NmXR2kw
 rF7jDmtTlejMoidwERP/DVbsryQVJMBBfeTzVCltMBd8P1fRrG0CRc++TS5FXSSUrVUM
 YGNeQlP4T8EKJ2R+n/Rx5aYNtg9/Or3EllMSjnXoolMAQLaHWWhryxaYZCFuGqlkeVwA
 tbOR40ThXlg4cQVrO6SykCa1dMDqZCjqlKh2xMWX8WOfLPcT2W5MeU5wkbI6BD+3Dbu5
 HImgc7kuo1fxIaQ16YRV+atqdGsz7EI1+B3CVyG44GMiRKVDO8jdJ8t4CW7iXF7Fdd8T
 4P1w==
X-Gm-Message-State: AOAM531/bjpAhApZOYxdTpW2smoEnFNHWwSpugzgwf26lvnnP+kCXHds
 jAQeUlQRg471R3l1kOltSQ==
X-Google-Smtp-Source: ABdhPJwa/MJznhmRcGcjWOgAZbEZa6yOwQv7k06wvfAOPLk4hqYxA5oYyJHesaXDPyJ+9+6d0SNL5Q==
X-Received: by 2002:a05:6830:214c:: with SMTP id
 r12mr13953591otd.208.1608595778499; 
 Mon, 21 Dec 2020 16:09:38 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id r15sm3884964oie.33.2020.12.21.16.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Dec 2020 16:09:37 -0800 (PST)
Received: (nullmailer pid 891719 invoked by uid 1000);
 Tue, 22 Dec 2020 00:09:34 -0000
Date: Mon, 21 Dec 2020 17:09:34 -0700
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 05/48] media: dt: bindings: tegra-vde: Document OPP
 and power domain properties
Message-ID: <20201222000934.GA891659@robh.at.kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-6-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-6-digetx@gmail.com>
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
 Liam Girdwood <lgirdwood@gmail.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 17 Dec 2020 21:05:55 +0300, Dmitry Osipenko wrote:
> Document new DVFS OPP table and power domain properties of the video
> decoder engine.
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
