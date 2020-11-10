Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C8F2AE17F
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 22:17:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C420862F4;
	Tue, 10 Nov 2020 21:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iT-wANbaYESG; Tue, 10 Nov 2020 21:17:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 64C778613C;
	Tue, 10 Nov 2020 21:17:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F5081BF3C2
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F9D623018
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4VLG15PBPT2 for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 21:17:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C8F2222902
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 21:17:33 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id y16so16413033ljk.1
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 13:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vf5kUjShC7D4zxjBHAlcMmZpxwxqDm+lWkcny/PyTLU=;
 b=Bb6TkkCgyvh2gtRxC0/lZw/l5uChihV6xuDSvj+rng+LYcNWyxYb8WUqo9KsrKm3BS
 S8dKRCnLXwn/IGgp2WbbQ3DIv29EHR5Va7mjo4s2WaO63VgRRZfaasHdsQle99i7igTs
 +gGifF40vB3CE1jzC81DdjJtvR7W9V0IGwrUkQahhQhQhJMCAKLeoq5VMYX9c698zGhw
 tXh33thzdMaCXs1uut8wQPkGtgubi+1DOWac+ED56DYMUJzkOnN5q2pe0rlX4mcji/jG
 vpFko7ZNU5mM3vDGH+Db9LGIad7B2kJg7mDut+7PhHZNxAzGHTJDtIL8rYMi5kZkhVIk
 STKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vf5kUjShC7D4zxjBHAlcMmZpxwxqDm+lWkcny/PyTLU=;
 b=sOScuy7sEc0wdqjJa5OUvOaGVGfmJxG5OnnfrPJOhPj8L3orCnN0Wi186CIB81V2qu
 8TCdEdtW4DBV9pyz5PJSbERYEnR6rvdBBVFbpPFXamXJRrNUXFZK7Zkf/OZ/lSVTbgOc
 zwSYOVoJT86xhT3OL5eaLcPmdhSkUr2caeptcWtXcU8P7q5UIHVEyUOsrn6TJHHVGSO2
 jX1rWIFuZY0UwuzrxEckfImWXaeOqj1LvxsCfeHLR3T4pD22/4I0us2MR3E8zy1slnMf
 na35qPRDdRnI2QrsBHQNkS79E0rLfeaq79TV4UE6ng1N06h/xBODPao7uiRFNIJLt+JH
 Rlhg==
X-Gm-Message-State: AOAM533HYv38RP7z6YAzgtqtfumvoXMQwX+omuMZgSIJtBnrUJeEyEsj
 hUDluqNFNTmafJ0XbuVShZM=
X-Google-Smtp-Source: ABdhPJwNwDYOAu/bhUmj7d89Tpyf84CZcga2xU2aTsm1UWGg6/U705pR3xmW2fAZuG66Gw6OXy/oSw==
X-Received: by 2002:a05:651c:1199:: with SMTP id
 w25mr4001382ljo.165.1605043051937; 
 Tue, 10 Nov 2020 13:17:31 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id 201sm3281lfk.152.2020.11.10.13.17.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 13:17:31 -0800 (PST)
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
To: Thierry Reding <thierry.reding@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-12-digetx@gmail.com> <20201110202945.GF2375022@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <6bbec0aa-732a-2feb-684a-b1d8cc6a0471@gmail.com>
Date: Wed, 11 Nov 2020 00:17:30 +0300
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

MTAuMTEuMjAyMCAyMzoyOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPj4gKwo+PiArCWRj
LT5vcHBfdGFibGUgPSBkZXZfcG1fb3BwX2dldF9vcHBfdGFibGUoZGMtPmRldik7Cj4+ICsJaWYg
KElTX0VSUihkYy0+b3BwX3RhYmxlKSkKPj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGMtPmRl
diwgUFRSX0VSUihkYy0+b3BwX3RhYmxlKSwKPj4gKwkJCQkgICAgICJmYWlsZWQgdG8gcHJlcGFy
ZSBPUFAgdGFibGVcbiIpOwo+PiArCj4+ICsJaWYgKG9mX21hY2hpbmVfaXNfY29tcGF0aWJsZSgi
bnZpZGlhLHRlZ3JhMjAiKSkKPj4gKwkJaHdfdmVyc2lvbiA9IEJJVCh0ZWdyYV9za3VfaW5mby5z
b2NfcHJvY2Vzc19pZCk7Cj4+ICsJZWxzZQo+PiArCQlod192ZXJzaW9uID0gQklUKHRlZ3JhX3Nr
dV9pbmZvLnNvY19zcGVlZG9faWQpOwo+PiArCj4+ICsJaHdfb3BwX3RhYmxlID0gZGV2X3BtX29w
cF9zZXRfc3VwcG9ydGVkX2h3KGRjLT5kZXYsICZod192ZXJzaW9uLCAxKTsKPj4gKwllcnIgPSBQ
VFJfRVJSX09SX1pFUk8oaHdfb3BwX3RhYmxlKTsKPiBXaGF0J3MgdGhlIHBvaW50IG9mIHRoaXM/
IEEgbW9yZSBjYW5vbmljYWwgdmVyc2lvbiB3b3VsZCBiZToKPiAKPiAJaWYgKElTX0VSUihod19v
cHBfdGFibGUpKSB7Cj4gCQllcnIgPSBQVFJfRVJSKGh3X29wcF90YWJsZSk7Cj4gCQlkZXZfZXJy
KGRjLT5kZXYsIC4uLik7Cj4gCQlnb3RvIHB1dF90YWJsZTsKPiAJfQo+IAo+IFRoYXQgdXNlcyB0
aGUgc2FtZSBudW1iZXIgb2YgbGluZXMgYnV0IGlzIG11Y2ggZWFzaWVyIHRvIHJlYWQsIGluIG15
Cj4gb3BpbmlvbiwgYmVjYXVzZSBpdCBpcyB0aGUgY2Fub25pY2FsIGZvcm0uCj4gCgpZb3VyIHZh
cmlhbnQgaXMgbXVjaCBtb3JlIGRpZmZpY3VsdCB0byByZWFkIGZvciBtZSA6LwoKSSBndWVzcyB0
aGUgb25seSByZWFzb24gaXQgY291bGQgYmUgImNhbm9uaWNhbCIgaXMgYmVjYXVzZQpQVFJfRVJS
X09SX1pFUk8gd2FzIGFkZGVkIG5vdCBzbyBsb25nIHRpbWUgYWdvLgoKQnV0IGRvbid0IHdvcnJ5
LCB0aGlzIGNvZGUgd2lsbCBiZSBtb3ZlZCBvdXQgaW4gYSB2MiBhbmQgaXQgd29uJ3QgdXNlClBU
Ul9FUlJfT1JfWkVSTy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
