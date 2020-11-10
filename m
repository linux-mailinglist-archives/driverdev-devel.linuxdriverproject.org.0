Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 869202AE1D3
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 22:32:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC586230F3;
	Tue, 10 Nov 2020 21:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fNoJau-syyop; Tue, 10 Nov 2020 21:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF5512309D;
	Tue, 10 Nov 2020 21:32:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4539A1BF3C2
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3BD1386079
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iY8RdrbdzYqa for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 21:32:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4FE2B86073
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 21:32:31 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id u18so170075lfd.9
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 13:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Udf8izR79EOqP1ijS53zeM3N/JUnCwVrU1fnKC8yXBM=;
 b=TJmDKYdfhNndOw9Fc/1HEuqiqmcIfs67XGIMRW/n659q4NI/oyLnPwqYqDHpqqSze4
 yxRdw/JI8MhkLlhqv01SA66a1lehinyiB40p03H4fmPC4kXqdPdOR9DXXI+CA8FSqBk7
 w6wChwFGwttwXQX2Xdjz29Y+Hwu/v0WRMXMyYljuqE429oOhuZ7qiOzZFPxi1Rkyq/NW
 nVGYWY6zZm9eoNwo6SyRQJSccBYBxUNPG9MlrFkc8UTPfeDIiXk0WNTxV7mdyps+2+6X
 OXy/7b5VqZJ3lgMWmZYzyttqwfgys1sL/l1uEmuidS91VXkM+dhRqONrgFsT4PF6pA+C
 zF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Udf8izR79EOqP1ijS53zeM3N/JUnCwVrU1fnKC8yXBM=;
 b=UKHrcUrF6+sYtswJjrLNJZPu41ZnZi0oSUiwqQ0jtSPx9uj0CkKKAuYoXYoHnsDiNN
 nOZvMI0mkBviNo5Le79HAJisaVhSZgfqgQr2yu3EkzmTYfWkYzoMfGA3SjwO41Y9HBxY
 5FG5GqWPf+1UPXD3L7YdPj7cDgOiRjrFWH8HZXyED2amWCD00lXqch4HLJpP6HcWGUEF
 fZem86ncluBqktjBqdxoQWdcMRkXIzUNENQ5zjUjrOZ2LXgYXKSLyFOcC3LzhbMMOXjD
 b3cC14Vvmjd5vuDkdjtXlEf78Zyy3TAJp06rkM75wUHKLQuYyCG16vHWumU0MtOHI5HA
 NY9A==
X-Gm-Message-State: AOAM532ZthgyInGx2O4E5XlIDdqfjR8DaPrJSLkj3kV6Z7W+cp5vmZxU
 Vp6rX0VUBSOc5oCFTvy+RrU=
X-Google-Smtp-Source: ABdhPJzgddle15uZzQkarcn6HNRYEMFyRgf1xVU2K+91PWIHM5P29WaFydPEJ+nc/MxNTQcdKv1N/w==
X-Received: by 2002:ac2:5e6e:: with SMTP id a14mr6600177lfr.595.1605043949411; 
 Tue, 10 Nov 2020 13:32:29 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id o12sm2721051ljc.59.2020.11.10.13.32.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 13:32:28 -0800 (PST)
Subject: Re: [PATCH v1 07/30] soc/tegra: Add sync state API
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-8-digetx@gmail.com> <20201110204727.GG2375022@ulmo>
 <71934373-8425-345b-7719-0903f846119f@gmail.com>
Message-ID: <7b6c7c62-495c-eeb8-9cdb-0c33be653e3d@gmail.com>
Date: Wed, 11 Nov 2020 00:32:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <71934373-8425-345b-7719-0903f846119f@gmail.com>
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
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
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

MTEuMTEuMjAyMCAwMDoyMiwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gSSBhZGRlZCBh
IHNwZWNpYWwgc3BlbGwgY2hlY2tpbmcgcnVsZSBmb3IgdGhpcyB0eXBvLCBidXQgaXQgZG9lcyBo
ZWxwCj4gcmVsaWFibHkuCgpkb2VzICpub3QqCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
