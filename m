Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 589BB126733
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 17:34:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDD3E87F8A;
	Thu, 19 Dec 2019 16:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yPLys-VfawXp; Thu, 19 Dec 2019 16:34:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16A8A87F67;
	Thu, 19 Dec 2019 16:34:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8AE451BF404
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 16:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 867178867F
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 16:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjB-zPCqbLMG for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 16:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AB4E6886E4
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 16:34:05 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id h23so6908741ljc.8
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 08:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NbGUxJZschh5pU5eBUWoyfxmgLY0Jtie4Fq87j9uajM=;
 b=fYwP12aOi9NdXLIYBDuMsIPSrXPApDqz1POx12Skp5WX/xXXSTSsF/HVtd7Wf+G4AW
 A/0iKnvcDCBdN1udrsefmIgBSgvsHGMPH+bPozR/f2ZCXuR22TgnzCUey7Z3WTX4S+o1
 53PkDayjk238dAMSO1Ha21+HUiLGYI1RCrorqWH8TyP0jAgeriBPEypujR22PRj9mTb6
 dKJEZew4DEO3wEQQ9ncPmtx0a1F39/sVZt2iqF6ZYsO4uNPDxohorTYg/IGT/nF6AZTC
 w7sq1iAHf9La7k5GuZnXwUr6wJk1wAjJyWRjx/nvLWwE4oUBQC7s093m1MEvX26GuXFj
 /9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NbGUxJZschh5pU5eBUWoyfxmgLY0Jtie4Fq87j9uajM=;
 b=pTSn58Fnont0gt/JrC2mNSUbc3fW1ULv8MQI5rM18WfJsXaNLUG/xjyd8xOfoSPrgZ
 EgSKf2Bw4BIGy5l/X9FWxFMSQpw55yGWt5sztWCA2DbRZVYg/woFbBlOz/qs0ZWmIC9j
 CRCOqGUUBoG6OyVyZfkCxx1GN5dEu+ncfxu06tRrBoV0pSLa3nHYresLx5q86jfaDFgr
 Gy8mZl5XRpT3nl527iZ4Pv4XyIN4kJ3EU2R9XZS6jKk1uykxANjVC+7IOGnm0obRf8N7
 CTRm4AVQ0RLZ2w3uDbV0vMwCjziwj810oXNWw2kLSZpyB83uVM7+ztL5yKuvUU/qzkSN
 O8CA==
X-Gm-Message-State: APjAAAV7O98EJIppd6ZUhGFiW2kMAHMm/QJt5NSYAx7AnJz76MqyvSCq
 GkE7t0qK0L9IVbAjJsvCIoY=
X-Google-Smtp-Source: APXvYqytljIvdSb9uKAA4Z5f9O3C9KOePxedpYlxO/c853cn0BV5XGhgglOiAUNSRF8Vr2L4UbB00A==
X-Received: by 2002:a2e:91cb:: with SMTP id u11mr6801694ljg.82.1576773243568; 
 Thu, 19 Dec 2019 08:34:03 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id g85sm2824824lfd.66.2019.12.19.08.34.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 08:34:02 -0800 (PST)
Subject: Re: [PATCH v1 1/3] gpio: tegra: Use generic
 readl_relaxed/writel_relaxed accessors
To: Ben Dooks <ben.dooks@codethink.co.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
References: <20191215183047.9414-1-digetx@gmail.com>
 <20191215183047.9414-2-digetx@gmail.com>
 <CAMpxmJUmLOZoKeeo4XMVEOWKRgwfS4O2szVboY-qTTYXg_aTVg@mail.gmail.com>
 <b38cd167-4a61-4903-cf44-910dcb66f751@codethink.co.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <e6a67fa4-977d-bac9-f7c0-51d5cea526e5@gmail.com>
Date: Thu, 19 Dec 2019 19:34:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <b38cd167-4a61-4903-cf44-910dcb66f751@codethink.co.uk>
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
Cc: devel@driverdev.osuosl.org, Linus Walleij <linus.walleij@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-gpio <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTkuMTIuMjAxOSAxODo1NywgQmVuIERvb2tzINC/0LjRiNC10YI6Cj4gT24gMTkvMTIvMjAxOSAx
MTowMSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPj4gbmllZHouLCAxNSBncnUgMjAxOSBv
IDE5OjMxIERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPj4gbmFwaXNhxYIoYSk6
Cj4+Pgo+Pj4gVGhlcmUgaXMgbm8gcG9pbnQgaW4gdXNpbmcgb2xkLXN0eWxlIHJhdyBhY2Nlc3Nv
cnMsIHRoZSBnZW5lcmljCj4+PiBhY2Nlc3NvcnMKPj4+IGRvIHRoZSBzYW1lIHRoaW5nIGFuZCBh
bHNvIHRha2UgaW50byBhY2NvdW50IENQVSBlbmRpYW5uZXNzLiBUZWdyYQo+Pj4gU29DcyBkbwo+
Pj4gbm90IHN1cHBvcnQgYmlnLWVuZGlhbiBtb2RlIGluIHRoZSB1cHN0cmVhbSBrZXJuZWwsIGJ1
dCBsZXQncyBzd2l0Y2gKPj4+IGF3YXkKPj4+IGZyb20gdGhlIG91dGRhdGVkIHRoaW5ncyBhbnl3
YXksIGp1c3QgdG8ga2VlcCBjb2RlIHVwLXRvLWRhdGUuCj4gCj4gR29vZCBpZGVhLCBJIHRoaW5r
IEkgZ290IG1vc3Qgb2YgdGhlIHdheSB0byBib290aW5nIGEgdGVncmEgamV0c29uIGJvYXJkCj4g
d2l0aCBhIGJpZyBlbmRpYW4gaW1hZ2UgYSBmZXcgeWVhcnMgYWdvLCBidXQgbmV2ZXIgZ290IHRp
bWUgdG8gZmluaXNoCj4gdGhlIHdvcmsuCj4gCgpUaGFua3MsIEkgcmVtZW1iZXIgeW91cnMgZWZm
b3J0IGluIHJlZ2FyZHMgdG8gdGhlIHVwc3RyZWFtaW5nIGJpZyBlbmRpYW4Kc3VwcG9ydCBmb3Ig
SmV0c29uIDopIFlvdSB3ZXJlIHByZXR0eSBjbG9zZSBiYWNrIHRoZW4sIGJ1dCBUaGllcnJ5IGhh
ZCBhCmRpZmZlcmVudCBvcGluaW9uIGluIHJlZ2FyZHMgdG8gbWFpbnRhaW5pbmcgdGhhdCBzdXBw
b3J0IGluIHRlcm1zIG9mCmhhdmluZyBleHRyYSB0ZXN0aW5nIGJ1cmRlbi4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
