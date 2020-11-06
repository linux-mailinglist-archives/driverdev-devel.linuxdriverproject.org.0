Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 615A12A96D7
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 14:17:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8B0D868B0;
	Fri,  6 Nov 2020 13:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BEtHJpgO3EzS; Fri,  6 Nov 2020 13:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72F3486890;
	Fri,  6 Nov 2020 13:17:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA5211BF82F
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 13:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B273C2E11C
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 13:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSFgFkWwwX1S for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 13:17:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 78FEC2E115
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 13:17:17 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id b1so1847334lfp.11
 for <devel@driverdev.osuosl.org>; Fri, 06 Nov 2020 05:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PfeixKrzsL46qhVQbUUdb6DbSd1S0EMYRuybLQNU1/k=;
 b=lg3hkZm7P25mT76/EiBZKMX9rM35SHKXFtDDMNMyuybG7pZ9GLdujDnb/snXEdZuOE
 O1XEA9ClNNtaX5qSYh7ncrwbbztO4OLS1Tz0Whoh0CkglFXZtqLJZrGYf4qMX7xbO4N9
 kP0OrdkSIWnmeqH9Syo0ZE91d0lbC13DJUCcVloa24tNriQ9PbAU1usA16wtQm2RaqeB
 Q2Vze3+ENHkimZDRFaupbyfMF9A5/sjGDv24PaYkJkspH0+kyNRFWbP7C5sXzxYJK38b
 RAOCNA6IR6HuCs4WSAyuab6Hb0IKVlIorOLMIzPq7sTruYyAKH9DW8JL59OaCl/toWXN
 62hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PfeixKrzsL46qhVQbUUdb6DbSd1S0EMYRuybLQNU1/k=;
 b=Fd4Vr5Min4ExvROmmUx5zzY1O+ld1veHCPOTa3XNQQOrLxtHIDX0gYGeInBOwiI0RZ
 gojNOi48e6C2FWc8gDlFyxKu1UwpJKrV8NffiiGpVJ8aO3PqIK8dPs6QKl9EtzQ0ksQJ
 dtQyXsfHyAHuqBz/fKfXGkH8CpyR/fUDycghG3QnEY35VtePkHBx9LnmOna2D1pujPGx
 q7Ai+qECMDlchzhFhx3MjD3mmf91+48UWRbkXEjQ32+segAFdxqufJQfQwLO8hZhT05u
 JMoy7t5rgGVnLo93FtPuCwBykr4BCFGfaAW7F0ztv5uyvPCIzlV1dWc5lFv51NSAoaxs
 x4bw==
X-Gm-Message-State: AOAM533tFwmbaNOkSNa+H2i9oKypK9Za9hFBw3NaJ379jFf9AHV39KCc
 g5Rgc20hRowJP3TTL/YDJSM=
X-Google-Smtp-Source: ABdhPJzECHN6OMSqEGY9TM6AG4zUXHGmlFcCs46h2OzcdpdI3/ezCJG0veXmwpdjSihGTDog0yaTzA==
X-Received: by 2002:a19:f518:: with SMTP id j24mr830455lfb.307.1604668635552; 
 Fri, 06 Nov 2020 05:17:15 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.googlemail.com with ESMTPSA id 9sm159077lfy.251.2020.11.06.05.17.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Nov 2020 05:17:14 -0800 (PST)
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-18-digetx@gmail.com>
 <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
 <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
 <20201106061513.uyys7njcqcdlah67@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
Date: Fri, 6 Nov 2020 16:17:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201106061513.uyys7njcqcdlah67@vireshk-i7>
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
 DTML <devicetree@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "open list:SECURE DIGITAL HO..." <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDYuMTEuMjAyMCAwOToxNSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gU2V0dGluZyByZWd1
bGF0b3JzIGZvciBjb3VudCBhcyAwIGRvZXNuJ3Qgc291bmQgZ29vZCB0byBtZS4KPiAKPiBCdXQs
IEkgdW5kZXJzdGFuZCB0aGF0IHlvdSBkb24ndCB3YW50IHRvIGhhdmUgdGhhdCBpZiAoaGF2ZV9y
ZWd1bGF0b3IpCj4gY2hlY2ssIGFuZCBpdCBpcyBhIGZhaXIgcmVxdWVzdC4gV2hhdCBJIHdpbGwg
aW5zdGVhZCBkbyBpcywgYWxsb3cgYWxsCj4gZGV2X3BtX29wcF9wdXQqKCkgQVBJIHRvIHN0YXJ0
IGFjY2VwdGluZyBhIE5VTEwgcG9pbnRlciBmb3IgdGhlIE9QUAo+IHRhYmxlIGFuZCBmYWlsIHNp
bGVudGx5LiBBbmQgc28geW91IHdvbid0IGJlIHJlcXVpcmVkIHRvIGhhdmUgdGhpcwo+IHVud2Fu
dGVkIGNoZWNrLiBCdXQgeW91IHdpbGwgYmUgcmVxdWlyZWQgdG8gc2F2ZSB0aGUgcG9pbnRlciBy
ZXR1cm5lZAo+IGJhY2sgYnkgZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpLCB3aGljaCBpcyB0
aGUgcmlnaHQgdGhpbmcgdG8gZG8KPiBhbnl3YXlzLgoKUGVyaGFwcyBldmVuIGEgYmV0dGVyIHZh
cmlhbnQgY291bGQgYmUgdG8gYWRkIGEgZGV2bSB2ZXJzaW9ucyBvZiB0aGUgT1BQCkFQSSBmdW5j
dGlvbnMsIHRoZW4gZHJpdmVycyB3b24ndCBuZWVkIHRvIGNhcmUgYWJvdXQgc3RvcmluZyB0aGUK
b3BwX3RhYmxlIHBvaW50ZXIgaWYgaXQncyB1bnVzZWQgYnkgZHJpdmVycy4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
