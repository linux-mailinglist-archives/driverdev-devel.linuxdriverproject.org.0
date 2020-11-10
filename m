Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C131F2AE228
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 22:50:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CB4386117;
	Tue, 10 Nov 2020 21:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gtw9PMPfccOL; Tue, 10 Nov 2020 21:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14F2085FC0;
	Tue, 10 Nov 2020 21:50:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E06711BF3C2
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D5AA52277A
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w-wkDcp4aHso for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 21:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 818B820104
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 21:50:42 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id r17so10866728ljg.5
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 13:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QumWPjldyhkIYYrKZybLDjf0NEcp9tE/cFj+ALYFR9A=;
 b=JajzXzj+taW37LHKKk1rBUu2Z4ElUMNSSHS0K95OnI5UImwAIF74Qu+QTmiVzypvAS
 gAQiDrdU4a2B6Z9A/XX/OOpJu3zamPLYGVpiOdVUDJw7ZsRpBauLkm/3QQp5PvJ2UM4A
 LlfneuREhApeooZpB9lnnAX6U7j1XdRX88sCUzdxugTvIG1jP5PTHJPC3/8IUgW/bc/i
 LWgLoXa7caMAbqITehUnmz/UH2tBulw/gQUU8Cd3shJtQ+zvYfoUG1N8jDZq2ZIllOe/
 aCD81lT6Dj2NRU8sGRrZHHc26lsCxBQnWNgpAjWLB1z+6WE0AmdSq+A5dXHYbs0KDWUd
 P/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QumWPjldyhkIYYrKZybLDjf0NEcp9tE/cFj+ALYFR9A=;
 b=tMuxmQAdWY2LROP+Pr2Z3F15nF/7J5bZgkLtle9MDccp1fUxN3mU1JXjJwIqvDL/64
 XOuhvITn9BhK4ATou89Qy55AG9hkvXKPGZYBb9L4c6Ky2Si9NsYLMyOv0hnRtvEEcHD5
 fNGXo9vYwpDUndX8qTqFecRLsLUGN5P+m12P3hkZr1M+wu400N8jNXb3w2dx7NHTI0ry
 AFlxV3zbZlZuQgaKGMLrNqS+3rBNs92Tj26rNpQnQ0tcoXt2xSqdFVSsnsDpdlFtxkmx
 PNhsRqjS2Sc0wa3E02KnAQ9BHgVlJ9zZ9eF7kSRbof3E+O2vXPbIePQq6wzfG5FFRIiJ
 mxFQ==
X-Gm-Message-State: AOAM532XCZP3sto4xrg7DL+za/vj0xm3MxE3dQXTor8KZBamr2QlnFdj
 IrOqArLSQfBRVFD9OF4RaDI=
X-Google-Smtp-Source: ABdhPJxca3fiSpZnzLwSSmf1STAmFU4WFUoLoBVs2ZCeEEkdDu9neVJtNB2ucZnGCMuP/Af+mNHRXw==
X-Received: by 2002:a2e:9583:: with SMTP id w3mr9542353ljh.25.1605045040627;
 Tue, 10 Nov 2020 13:50:40 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id x9sm12074lfg.93.2020.11.10.13.50.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 13:50:39 -0800 (PST)
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
To: Thierry Reding <thierry.reding@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-12-digetx@gmail.com> <20201110202945.GF2375022@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <7b0052e1-0ea7-b28f-ae46-52e669a980ac@gmail.com>
Date: Wed, 11 Nov 2020 00:50:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201110202945.GF2375022@ulmo>
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

MTAuMTEuMjAyMCAyMzoyOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPj4gKwkvKiBsZWdh
Y3kgZGV2aWNlLXRyZWVzIGRvbid0IGhhdmUgT1BQIHRhYmxlICovCj4+ICsJaWYgKCFkZXZpY2Vf
cHJvcGVydHlfcHJlc2VudChkYy0+ZGV2LCAib3BlcmF0aW5nLXBvaW50cy12MiIpKQo+PiArCQly
ZXR1cm4gMDsKPiAiTGVnYWN5IiBpcyBhIGJpdCBjb25mdXNpbmcgaGVyZS4gRm9yIG9uZSwgbm8g
ZGV2aWNlIHRyZWVzIGN1cnJlbnRseQo+IGhhdmUgdGhlc2UgdGFibGVzIGFuZCBzZWNvbmRseSwg
Zm9yIG5ld2VyIFNvQ3Mgd2UgbWF5IG5ldmVyIG5lZWQgdGhlbS4KPiAKCkkgaGFkIHRoZSBzYW1l
IHRob3VnaHQgYW5kIGFscmVhZHkgaW1wcm92ZWQgc3VjaCBjb21tZW50cyBhIGRheSBhZ28uCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
