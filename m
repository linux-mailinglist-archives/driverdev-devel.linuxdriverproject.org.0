Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C392A7B42
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 11:06:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C66E086C66;
	Thu,  5 Nov 2020 10:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4K+mY+cF7fwl; Thu,  5 Nov 2020 10:06:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7D5D86C0A;
	Thu,  5 Nov 2020 10:06:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C21331BF59A
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 10:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BDC2C860F9
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 10:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6w2BZHpeTbm for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 10:06:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E669860F1
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 10:06:07 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id e7so1069559pfn.12
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 02:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eGW1ILzr61LRI7Nn5j3Px4Z853itoyrKaaACPPuanD8=;
 b=AwkPgeKN8JxD5DofrhKKvVmK4cvSq6debaCUoSYPEqvE49cn04nt/Ohj9eefgHf9TL
 aIx6rKXj0///p0JGjzTLdfu2hmMAvQApkss/uH/gSZkh61VO6pZ2ylsM9Il/53KW7LGl
 IUDWHNviUCd6hnxXLRNUeX3Y6HNhSHtWwbsLSi36WRlNoTuyeXeVCGre4buS3NdKlXZ1
 C93L+wYAB2E1lwHrDLcQqvzcXv151CIyLt/YY5KfH9h0bSL8R2KSSrdlcms3OAEXEAQn
 s+1SmPefG0RRF/HzCmYyPjNZRXZ/yeV4tDx9EOD1LS9Yd2qnGpLlBgdhBvWMqnBFNCh+
 Memw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eGW1ILzr61LRI7Nn5j3Px4Z853itoyrKaaACPPuanD8=;
 b=m52CmpeociE74SKbDAgDNqroaZ4EiG3BRbzPHo4gaaYolIHAXStzMOIDCA68iW7Yfe
 BnehCuA0PRd42ahNkguWAzukjye1lmqWfSGhWv5Q8UL6bBncOHEv3TeSTvs0UYYOwmuf
 1vvh3P8yGm3NRiHtAAPsspR09icid5K73/Qt7/hOP2c4OtvMJuUBn37Amix/9l0QCex/
 NpaC1NVQTBilpllo6Rm7EByWxyHXFq09XZTStiZV1pK7jUFQTAT/H/UJLtDmicgOBLOF
 EJ7stVQgdTWP1dgDCzyeI+MhddIk7pTMPt/tcRygSxLpHDn9I1TMFYdhEEZv2Nod2tFd
 RzjA==
X-Gm-Message-State: AOAM532A5C/0KXCMFUsjXy34KfY7DBT4qqzuO1T+9/enX6VyZoSAZio6
 +jc24fvDtRudV1T8EzRlt8Bb2w==
X-Google-Smtp-Source: ABdhPJx+19aSHb7auOFJLKtzrXZ1adaxUM3Bi1xOIxWA6Q/xzn6rrIYE3T8B5dM0UQjbWyOAIsn6/Q==
X-Received: by 2002:a17:90b:ec9:: with SMTP id
 gz9mr1700784pjb.105.1604570766580; 
 Thu, 05 Nov 2020 02:06:06 -0800 (PST)
Received: from localhost ([122.172.12.172])
 by smtp.gmail.com with ESMTPSA id s22sm1813783pfu.119.2020.11.05.02.06.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Nov 2020 02:06:05 -0800 (PST)
Date: Thu, 5 Nov 2020 15:36:03 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
Message-ID: <20201105100603.skrirm7uke4s2xyl@vireshk-i7>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, DTML <devicetree@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Dmitry Osipenko <digetx@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05-11-20, 10:45, Ulf Hansson wrote:
> + Viresh

Thanks Ulf. I found a bug in OPP core because you cc'd me here :)

> On Thu, 5 Nov 2020 at 00:44, Dmitry Osipenko <digetx@gmail.com> wrote:
> I need some more time to review this, but just a quick check found a
> few potential issues...
> 
> The "core-supply", that you specify as a regulator for each
> controller's device node, is not the way we describe power domains.

Maybe I misunderstood your comment here, but there are two ways of
scaling the voltage of a device depending on if it is a regulator (and
can be modeled as one in the kernel) or a power domain.

In case of Qcom earlier (when we added the performance-state stuff),
the eventual hardware was out of kernel's control and we didn't wanted
(allowed) to model it as a virtual regulator just to pass the votes to
the RPM. And so we did what we did.

But if the hardware (where the voltage is required to be changed) is
indeed a regulator and is modeled as one, then what Dmitry has done
looks okay. i.e. add a supply in the device's node and microvolt
property in the DT entries.

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
