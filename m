Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A56BA2AB0F2
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 06:44:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 313C585FDB;
	Mon,  9 Nov 2020 05:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVQ8HA4ikxAK; Mon,  9 Nov 2020 05:44:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E743885F97;
	Mon,  9 Nov 2020 05:44:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC86A1BF417
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E65EC85F97
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J_8sg5Cbkvsv for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 05:44:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B7C3485D50
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 05:44:26 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id v20so282993ljk.8
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 21:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tP/FC+dGBVrN2Wu8oXQnKtpDTfMWbwFyza2NqExwg6k=;
 b=MF8cnp2AWnOeOFRVEsfISikechA/Ixz1dFtKA8EgNEABu0PMsQFBkxVZC9/X6pUcCe
 YCstLNYyQSqmrwsXdkEUDWuPG5PCoO2SSVswz61RwaNiabmwuGC3EC9eP4JjZ3wJeSko
 ZGU99oWOCzpS9yRI4Ql1qoXvkCMEw6ATGuaOQwRDMWXlQinOXCPAbWDVg+WLs/w3Lpg/
 bsINkLXHuxqm/a+sc+xKKFHnEbRzewuPpyGaSTK/KxjfNRNH1n4VXkLAss2GE2604eXS
 LT8gPvlTcD+f93W5lhLaMN86VYx2ryKNggibpsCNQqOr8rlh3BYSz6umwZJS4F7Oyd+G
 m1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tP/FC+dGBVrN2Wu8oXQnKtpDTfMWbwFyza2NqExwg6k=;
 b=FYxAiCKh3aPxVbFIYls4C0uFobNiJaIG4FEJEOofBejTjCx/NVs80wR8fXfN2CKS5p
 jx9bikLTIuwomHPKQbQxVgRy5asN5Mq8WHTYEbO4ewJajmphfMLxnmdXpMFLyEGUzJDB
 o+Leza3NMgTJkfFgAqxOTsx86sTXe7AAYXTikd9GA0ldj+LnEiyuj+LYLhitfCtxs5nB
 oZ97Osm/do2KG7zruBlZukfv3jnikJh/TT/vgkZMZ782a0K1zmqcs64Ntbs4/GZmnBSV
 FH/CzKZAV3XGkk3abGaHLBlNYvE2O/RTGZajgayyvvcbOa8FUsYahFSOAa5ZOD+4+QDX
 Iebw==
X-Gm-Message-State: AOAM531tIgNz59Z8iJh3SdIMWWJMiK32Tr4iqKmK2lytShp5FTKGjv8c
 FvPrmtqj3ZrMXJx2nnT11SM=
X-Google-Smtp-Source: ABdhPJxu6oKJy+ZV+CaEDK/OMuxRF+UUWvmu4xrMjC+USQe4mAvLAS4RZx8UuslTomnJ7nU1Nr4O3g==
X-Received: by 2002:a2e:9e4b:: with SMTP id g11mr5749822ljk.337.1604900664608; 
 Sun, 08 Nov 2020 21:44:24 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id 4sm1672440lfi.150.2020.11.08.21.44.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Nov 2020 21:44:23 -0800 (PST)
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201104234427.26477-18-digetx@gmail.com>
 <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
 <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
 <20201106061513.uyys7njcqcdlah67@vireshk-i7>
 <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
 <CAEExFWsp0DWw1yO84e3vzr_YZkqkd+pyPfQQR3J2W6n3wTX4Jw@mail.gmail.com>
 <20201109050010.g47zojh6wafvwqva@vireshk-i7>
 <c584b301-e052-7f01-335d-8f9160865198@gmail.com>
 <20201109051014.oa6bt4g3ctm2hnuy@vireshk-i7>
 <4476fed9-a356-b7f1-32ee-935343e23038@gmail.com>
 <20201109053546.xupmmsx5qccn46tr@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <33a7ad95-a8cf-7b88-0f78-09086c1a4adf@gmail.com>
Date: Mon, 9 Nov 2020 08:44:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201109053546.xupmmsx5qccn46tr@vireshk-i7>
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
 linux-pwm@vger.kernel.org, Frank Lee <tiny.windzz@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, DTML <devicetree@vger.kernel.org>,
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

MDkuMTEuMjAyMCAwODozNSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMDktMTEtMjAs
IDA4OjE5LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IFRoYW5rcywgSSBtYWRlIGl0IGluIGEg
ZGlmZmVyZW50IHdheSBieSBzaW1wbHkgYWRkaW5nIGhlbHBlcnMgdG8gdGhlCj4+IHBtX29wcC5o
IHdoaWNoIHVzZSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoKS4gVGhpcyBkb2Vzbid0IHJlcXVp
cmUgdG8KPj4gYWRkIG5ldyBrZXJuZWwgc3ltYm9scy4KPiAKPiBJIHdpbGwgcHJlZmVyIHRvIGFk
ZCBpdCBpbiBjb3JlLmMgaXRzZWxmLCBhbmQgeWVzCj4gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0
KCkgbG9va3MgYmV0dGVyLiBCdXQgSSBhbSBzdGlsbCBub3Qgc3VyZSBmb3IKPiB3aGljaCBoZWxw
ZXJzIGRvIHdlIG5lZWQgdGhlIGRldm1fKigpIHZhcmlhbnRzLCBhcyB0aGlzIGlzIG9ubHkgdXNl
ZnVsCj4gZm9yIG5vbi1DUFUgZGV2aWNlcy4gQnV0IGlmIHdlIGhhdmUgdXNlcnMgdGhhdCB3ZSBj
YW4gYWRkIHJpZ2h0IG5vdywKPiB3aHkgbm90LgoKQWxsIGN1cnJlbnQgbm9uLUNQVSBkcml2ZXJz
IChkZXZmcmVxLCBtbWMsIG1lbW9yeSwgZXRjKSBjYW4gYmVuZWZpdCBmcm9tIGl0LgoKRm9yIFRl
Z3JhIGRyaXZlcnMgd2UgbmVlZCB0aGVzZSB2YXJpYW50czoKCmRldm1fcG1fb3BwX3NldF9zdXBw
b3J0ZWRfaHcoKQpkZXZtX3BtX29wcF9zZXRfcmVndWxhdG9ycygpIFtpZiB3ZSB3b24ndCB1c2Ug
R0VOUERdCmRldm1fcG1fb3BwX3NldF9jbGtuYW1lKCkKZGV2bV9wbV9vcHBfb2ZfYWRkX3RhYmxl
KCkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
