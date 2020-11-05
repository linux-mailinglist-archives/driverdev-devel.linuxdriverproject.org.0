Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EA62A8591
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 19:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BB4DA272A1;
	Thu,  5 Nov 2020 18:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TdFOmLPd0pAi; Thu,  5 Nov 2020 18:02:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35323271D5;
	Thu,  5 Nov 2020 18:02:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BE721BF48D
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 18:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4827E85B3D
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 18:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cD0klQt591Xb for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 18:02:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86B8C85B0C
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 18:02:06 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id t13so2506292ljk.12
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 10:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Al4h4rmGhqwiEGe133XHwebc8D8nOD3olrp8Vml5Ma4=;
 b=ns839VcoCfQlmSawliO3BW+/1vwbWsC0SuMDgd2rWP8iV711Mqqtf4m0MCEmnLvl6U
 3vb8CBUhCZHuLBbT/vy/0iMtjPX+V3C6uUIb2OPOXdjLYjIP6UI/e87eGPrrzJ+xbk0U
 lPuFmuT1kZYJ9xA2IDMRS58fh3QHtxbqkhAxXI9q2n4iD1UkN9wCV6XZxUKCW+jG4fl1
 bhur1vx8ueIhfdY8E1LoNLWhfnSqc8Cz4pG2mSMrLt8qiqsSVAo166ZZkzVsvdwhvofK
 JB2HZrGV3JeU2U3FG6Z6xcUm8hK1QDD32JbxQ1HpcmJHxS8qabOilxvrGXG1/u5lCDmu
 kXEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Al4h4rmGhqwiEGe133XHwebc8D8nOD3olrp8Vml5Ma4=;
 b=k4pkWPI4ao+VYggapTFoc9WJjxFHhu/I7dvuNiZJqL8EEK1qnlrCRdDHr4lp70dyWN
 sC3wX4zjXJ01o9mYqt2aCb2IXRjOJMJT51Ye5vdw9upynYfeWGNaxukXXRCYY604rhxD
 qXVQQqsihvUvUKe9OPA3bumpYROzWNa/syL8u9Mjjimn8CSCwHe4Ci7F9CnsaWyWScJe
 c8X5dZL5uY8tPqNsyXu5ie2QYMfLT6On1A89+JKSyuzysigj3qMiH8FdNXCeotSiBZBA
 MTAmBRvXD/eQa4Hj0tR+EaS4BAZCeDjboCmBd/uimBxTuLNOwQYXyEe0npG5ilHbsw32
 uoKg==
X-Gm-Message-State: AOAM5313DYk8qUjyY0m2TaDFz1f7MvttdRhSi8oLw/0ptDWh/8Qy10o/
 mUMtk3oGQe6YDl46WHpTeeI=
X-Google-Smtp-Source: ABdhPJyGo1QPlqd8Bg9dlBjbnD5b7q3iSRiSvONPHwwdeYcMEjv8aISie0TROJMehCbGPKS7ntWyVA==
X-Received: by 2002:a2e:5007:: with SMTP id e7mr1293766ljb.196.1604599324582; 
 Thu, 05 Nov 2020 10:02:04 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.googlemail.com with ESMTPSA id q28sm251319lfn.7.2020.11.05.10.02.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 10:02:03 -0800 (PST)
Subject: Re: [PATCH v1 21/30] usb: host: ehci-tegra: Support OPP and SoC core
 voltage scaling
To: Alan Stern <stern@rowland.harvard.edu>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-22-digetx@gmail.com>
 <20201105160743.GA1613614@rowland.harvard.edu>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a6030abc-3727-01ca-91b6-faf02d8083fd@gmail.com>
Date: Thu, 5 Nov 2020 21:02:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201105160743.GA1613614@rowland.harvard.edu>
Content-Language: en-US
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
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDUuMTEuMjAyMCAxOTowNywgQWxhbiBTdGVybiDQv9C40YjQtdGCOgo+PiArCWVyciA9IGRldm1f
dGVncmFfZWhjaV9pbml0X29wcF90YWJsZSgmcGRldi0+ZGV2KTsKPj4gKwlpZiAoZXJyKQo+PiAr
CQlyZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBlcnIsCj4+ICsJCQkJICAgICAiRmFp
bGVkIHRvIGluaXRpYWxpemUgT1BQXG4iKTsKPiBXaHkgbG9nIGEgc2Vjb25kIGVycm9yIG1lc3Nh
Z2U/ICBKdXN0IHJldHVybiBlcnIuCgpJbmRlZWQsIHRoYW5rcy4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
