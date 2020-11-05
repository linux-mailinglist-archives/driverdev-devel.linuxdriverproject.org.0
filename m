Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 274D62A855B
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 18:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4CB1D272A1;
	Thu,  5 Nov 2020 17:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdkckq9IzRpw; Thu,  5 Nov 2020 17:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED758236B5;
	Thu,  5 Nov 2020 17:54:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 025381BF48D
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 17:54:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0CDA8553C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 17:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ajHLLv7cI-2 for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 17:54:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1854B83C6B
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 17:54:52 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id i6so3596332lfd.1
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 09:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gA6OLdD6ilrl1MlK7OiJsrdds83PpowmxPmjVFzKPLU=;
 b=XXHF9HTK2ugJChM+FIFMCW2E53QGEH1yguNWVVsZT4/1tb/wA72NsMDzQdgSY44iRC
 mV3oLf1MLXH5haz2YuP1CDRT8aUuzPTl7F2/RMHftpwIeYEBCAs3NG+BR4dNeGs187mI
 XbuGXQroBJTTOWAvgupbT5YRyuuxAIsIhg4fLFlZAAdVH++d1JBlqRiVgDhJ8kvrw9/J
 CoeoXoFGkh8y4iwGjCRTehbz/gI/F1PorRz0eVlctXoG9S08Uk7T6RBaUSdPCHSWuFmU
 /CTWZV/yrLcMfC8ZqzKcUNZKBSSDhWAWRgAsWN1XiInqnWC0QIShxySn34YF6hnFOplx
 3LEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gA6OLdD6ilrl1MlK7OiJsrdds83PpowmxPmjVFzKPLU=;
 b=RhYY3y/i4g5Uf5X9il/TwST9VUMNM9yu7BmndpLuxJXYRvnvceiGgOW/kcHGdIlwgt
 /LPjWfeVJGZKpJ2gvrt8TE/yDMPI7sBARFHekndFkOvThoSeWa8fWZy8kPesOs1J26K1
 ZVv9ayPJhVJH6vCyhWkbzx0bN/6Oy3tinuRgAmQ6tbtibPtkvqKlfQMJHFSPHczdDwiI
 87et9QwIc7C4Dtl0VwOh/L994rzgE80I6X5ctXObUixfU7X5baLCACiKw33DdLaN802m
 219xEGlmxkww2xPhvboIEzbAf2ImwOrpWZCNg3rjr2/G3Fv4iEPm9SabynStrX5wJzIy
 3noQ==
X-Gm-Message-State: AOAM532kaIGYSLAQj2n2VEFAaOGIdDZMsTTWIXs5FnRKm1kFmE1kMs+p
 oMD0RATAHePHYwsnIjMoAT0=
X-Google-Smtp-Source: ABdhPJyehz6KeITPmKFKw6lYd3zXe4BcIJiDjnQqHKJZPRp9Z41GNG8/Y3X7JzcgSQn251Z5j8SlyQ==
X-Received: by 2002:a19:4206:: with SMTP id p6mr1372241lfa.151.1604598890223; 
 Thu, 05 Nov 2020 09:54:50 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.googlemail.com with ESMTPSA id v20sm248899lfd.178.2020.11.05.09.54.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 09:54:49 -0800 (PST)
Subject: Re: [PATCH v1 21/30] usb: host: ehci-tegra: Support OPP and SoC core
 voltage scaling
To: Alan Stern <stern@rowland.harvard.edu>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-22-digetx@gmail.com>
 <20201105160743.GA1613614@rowland.harvard.edu>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <cbc6bf1f-eccb-dee5-d2aa-2c60f1d365e2@gmail.com>
Date: Thu, 5 Nov 2020 20:54:48 +0300
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

MDUuMTEuMjAyMCAxOTowNywgQWxhbiBTdGVybiDQv9C40YjQtdGCOgo+IERvIHlvdSByZWFsbHkg
d2FudCB0byB1c2UgdGhlIHNhbWUgZXJyb3IgdW53aW5kaW5nIGZvciBvcHBfdGFibGUgdmFsdWVz
IAo+IG9idGFpbmVkIGZyb20gZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpIGFzIGZyb20gCj4g
ZGV2X3BtX29wcF9nZXRfb3BwX3RhYmxlKCk/CgpUaGV5IGJvdGggYXJlIHBvaW50aW5nIGF0IHRo
ZSBzYW1lIG9wcF90YWJsZSwgd2hpY2ggaXMgcmVmY291bnRlZC4KClRoZSBkZXZfcG1fb3BwX3Nl
dF9yZWd1bGF0b3JzKCkgaXMgZGV2X3BtX29wcF9nZXRfb3BwX3RhYmxlKCkgKyBpdCBzZXRzCnJl
Z3VsYXRvciBmb3IgdGhlIHRhYmxlLgoKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
djUuMTAtcmMyL3NvdXJjZS9kcml2ZXJzL29wcC9jb3JlLmMjTDE3NTYKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
