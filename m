Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 037502E0E9B
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9034185EC6;
	Tue, 22 Dec 2020 19:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GKA1kToAB_Ag; Tue, 22 Dec 2020 19:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A230185E08;
	Tue, 22 Dec 2020 19:14:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B38291BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9896823265
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id naeHPl+YgvEt for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:14:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by silver.osuosl.org (Postfix) with ESMTPS id 6734E22FB9
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:14:46 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id m12so34507999lfo.7
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JeqU2hjek5wLw0+7xrlLc11caNI578OgYNY2jwkqzNY=;
 b=bHwBuHMIyebkzyuUuOWBtzvheNh3xobf36Fa7wYQWSsb5947FwMxh5EXX1ORm+eEbW
 9s5TZRAW81SHivJZRvgjBliVL48suJOSz1Q3fByGDaGgZSnCbxhaiAyXQaEZBI91Yzfk
 Da8F8JtXO/zjgcfIz/rgqYIhHzUMN4koFL/LTO+qm6b0E4aQxq5kQ5cCtBnX91oQRcbd
 G9iKKoovYg35LssxUr4eWNW7/z6lzqiVA17GKXw1DgN7UnKw56gr4BczhuG99aRzMmZF
 7jXf+V/o4Q+Dp0H9EG+kujNeGdrVmzHpfpd/8stsHWBUWPBM1U+22zpgewqWife2rV0Z
 M8vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JeqU2hjek5wLw0+7xrlLc11caNI578OgYNY2jwkqzNY=;
 b=MFtJhtho0zkrPTuK9cQUsOFfyQBJ/eWSoqbsPHf5itcE9lg0P4XNaHl0dVT9vjtLRv
 Ae5MJLr/N8ba8obgLybBCOnsUmjv9HMrL+CfDwr0mXfkvcBDVTdfSwkA6J3BSBCSLNG1
 e/O9vVYNcxAainmlLBpU2p/li2FG8xbXGVtgGZVLMK750a4kkvNMjlOA3ORp62FWedXa
 /LG2DQGKudgmLcTNdSBWMmssBaJuwEKlzLPm7bAqAroQsEfSZVOn16af6yBCquPVRXaN
 BTUohzdom1MtgicyhqPQ/FAOgTckNUQePVhOCzTYFai8KymmHKVhR6UpSLITA65cm1Vq
 ecQw==
X-Gm-Message-State: AOAM533uaDkl2a2mq3++gGIdrt1qtOFMaI6qGnQ8Y/EwAU8ZSSgsRLua
 mmMhO7eQylgKRd68Q8By0DI=
X-Google-Smtp-Source: ABdhPJxaybHg4decfemE6k9xrHb2rcpd4r/utxUsMuqV39rH7BRNKVoTVuvzmCmXKUkMGne9zGMDhg==
X-Received: by 2002:a19:6447:: with SMTP id b7mr9495186lfj.206.1608664484582; 
 Tue, 22 Dec 2020 11:14:44 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id x8sm2779029lfn.226.2020.12.22.11.14.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:14:44 -0800 (PST)
Subject: Re: [PATCH v2 13/48] opp: Add resource-managed versions of OPP API
 functions
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-14-digetx@gmail.com>
 <20201222085556.kce4dcwumk4u6ttm@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <0ffd2ada-b279-a319-5d5c-b2bf1a49ca35@gmail.com>
Date: Tue, 22 Dec 2020 22:14:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222085556.kce4dcwumk4u6ttm@vireshk-i7>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjIuMTIuMjAyMCAxMTo1NSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEFkZCByZXNvdXJjZS1tYW5hZ2VkIHZl
cnNpb25zIG9mIE9QUCBBUEkgZnVuY3Rpb25zLiBUaGlzIHJlbW92ZXMgYSBuZWVkCj4+IGZyb20g
ZHJpdmVycyB0byBzdG9yZSBhbmQgbWFuYWdlIE9QUCB0YWJsZSBwb2ludGVycy4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+PiAtLS0KPj4g
IGRyaXZlcnMvb3BwL2NvcmUuYyAgICAgfCAxNzMgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPj4gIGRyaXZlcnMvb3BwL29mLmMgICAgICAgfCAgMjUgKysrKysrCj4+
ICBpbmNsdWRlL2xpbnV4L3BtX29wcC5oIHwgIDUxICsrKysrKysrKysrKwo+PiAgMyBmaWxlcyBj
aGFuZ2VkLCAyNDkgaW5zZXJ0aW9ucygrKQo+IAo+IFBsZWFzZSBzZW5kIGEgcGF0Y2hzZXQgb2Yg
aXRzIG93biBmb3IgdGhpcyBwYXRjaCwgYWxvbmcgd2l0aCB1cGRhdGVzIHRvIGFsbCB0aGUKPiBl
eGlzdGluZyBjb2RlIHRoYXQgY2FuIG1ha2UgdXNlIG9mIHRoZXNlLgo+IAoKb2sKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
