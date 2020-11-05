Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3FA2A8028
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 14:57:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9FF61236B5;
	Thu,  5 Nov 2020 13:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pD2t+F3bfzjh; Thu,  5 Nov 2020 13:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 70D572305A;
	Thu,  5 Nov 2020 13:57:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 843BC1BF83C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 13:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6FDAB22EE6
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 13:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ggj0NuMoWier for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 13:57:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3EA112037A
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 13:57:30 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id h6so2433040lfj.3
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 05:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+oB95VM8Zw9gIAt2FC+TShAF+0gIWo5rt3Q41RXJdtg=;
 b=k7qYU/S7xIQk2jr0RN0b4YX8DQl0u0bLGIF7BIO03i9ysBwBpKDn2MliLppMdD912h
 r6BgWfzuRYtSE1eLkUMnbUB/BLsLo+YvOQfwlkgKibkMcVVi1isY/5BggTofJ/y1r0Hm
 YXTNppZyodPQYF16UO3KTj5p7F89cfzPcpONsMTDz0kZoeDG8Fx0XGembDMrW3FuOzXM
 jio/WB6mh7LmvjaKoQD27SeVDVB1tKJaInHuJOCXUkAdoOyzgiBYOsX/YjAtCKwJlQaR
 K889lN9RvZfHHalw/0sSwWgdKgiFdf9q8dpTy6GIkWbl3kBPpBC5N6gEirv5uxbLGA/i
 qy4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+oB95VM8Zw9gIAt2FC+TShAF+0gIWo5rt3Q41RXJdtg=;
 b=tAsc1p8gX5/bi7SfUqDnnPk1Vmlw1O+y2VgHGHI1Ppj0X1bKnadYaYUX5VbLaN+f4i
 xHUig2WcjtWOhHZ1rMeNUGjnlQ/LRslxtDy4EeGhkul5nZ95L6GtSPJNEyjgwMJit8Bj
 VfiMb88ZzVfOptbA6WFroFpk6mr+TpYZAVwWo4vwtOUhEc071os9knl6l8zS5I7hnYBs
 yE0Aj5DH/aZj67ABslCTDrajnnDRAxKYJhoEXuEzch/H+UuVD1LFwR8MzMTTQ55XO/gY
 RbjFE7HQiFJW3ZdsBNSuPJkgIqDv1AnWCQOVmiZakzCWBNZoJz+XcqohWdstOGloNw/O
 aZDg==
X-Gm-Message-State: AOAM530JaL3rx+UyVutvHo5jQDdtsRhExnjt31YUygkX2CD++lXFA5qs
 WKxp/ymjeqBvNhgEp1q3L8s=
X-Google-Smtp-Source: ABdhPJy8aDH+pQWACig1gxUeRAo9xbkzKXDLndcNZHc3MgeMS7MQorfWYcYeqkisehyHHQbAhHZsRw==
X-Received: by 2002:ac2:522a:: with SMTP id i10mr1023516lfl.128.1604584648429; 
 Thu, 05 Nov 2020 05:57:28 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.googlemail.com with ESMTPSA id h10sm158920ljj.116.2020.11.05.05.57.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 05:57:27 -0800 (PST)
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201105014502.GB17266@qmqm.qmqm.pl>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <60e6ea6b-3a02-30a1-f0c9-d33ef7906ed6@gmail.com>
Date: Thu, 5 Nov 2020 16:57:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201105014502.GB17266@qmqm.qmqm.pl>
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
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDUuMTEuMjAyMCAwNDo0NSwgTWljaGHFgiBNaXJvc8WCYXcg0L/QuNGI0LXRgjoKPiBPbiBUaHUs
IE5vdiAwNSwgMjAyMCBhdCAwMjo0Mzo1N0FNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6
Cj4+IEludHJvZHVjZSBjb3JlIHZvbHRhZ2Ugc2NhbGluZyBmb3IgTlZJRElBIFRlZ3JhMjAvMzAg
U29Dcywgd2hpY2ggcmVkdWNlcwo+PiBwb3dlciBjb25zdW1wdGlvbiBhbmQgaGVhdGluZyBvZiB0
aGUgVGVncmEgY2hpcHMuIFRlZ3JhIFNvQyBoYXMgbXVsdGlwbGUKPj4gaGFyZHdhcmUgdW5pdHMg
d2hpY2ggYmVsb25nIHRvIGEgY29yZSBwb3dlciBkb21haW4gb2YgdGhlIFNvQyBhbmQgc2hhcmUK
Pj4gdGhlIGNvcmUgdm9sdGFnZS4gVGhlIHZvbHRhZ2UgbXVzdCBiZSBzZWxlY3RlZCBpbiBhY2Nv
cmRhbmNlIHRvIGEgbWluaW11bQo+PiByZXF1aXJlbWVudCBvZiBldmVyeSBjb3JlIGhhcmR3YXJl
IHVuaXQuCj4gWy4uLl0KPiAKPiBKdXN0IGxvb2tlZCBicmllZmx5IHRocm91Z2ggdGhlIHNlcmll
cyAtIGl0IGxvb2tzIGxpa2UgdGhlcmUgaXMgYSBsb3Qgb2YKPiBjb2RlIGR1cGxpY2F0aW9uIGlu
ICpfaW5pdF9vcHBfdGFibGUoKSBmdW5jdGlvbnMuIENvdWxkIHRoaXMgYmUgbWFkZQo+IG1vcmUg
Z2VuZXJpYyAvIGRhdGEtZHJpdmVuPwoKSW5kZWVkLCBpdCBzaG91bGQgYmUgcG9zc2libGUgdG8g
YWRkIGEgY29tbW9uIGhlbHBlci4gSSBoYWQgYSBxdWljawp0aG91Z2h0IGFib3V0IGRvaW5nIGl0
IHRvbywgYnV0IHRoZW4gZGVjaWRlZCB0byBkZWZlciBmb3IgdGhlIHN0YXJ0ZXIKc2luY2UgdGhl
cmUgd2VyZSBzb21lIGRpZmZlcmVuY2VzIGFtb25nIHRoZSBuZWVkcyBvZiB0aGUgZHJpdmVycy4g
SSdsbAp0YWtlIGEgY2xvc2VyIGxvb2sgZm9yIHRoZSB2MiwgdGhhbmtzIQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
