Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0960E2DE37B
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Dec 2020 14:51:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0EF652037C;
	Fri, 18 Dec 2020 13:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XnDfZBN2PdZv; Fri, 18 Dec 2020 13:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9490E203F9;
	Fri, 18 Dec 2020 13:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FFE81BF844
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 13:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5E375203CD
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 13:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRXaoKITAsJJ for <devel@linuxdriverproject.org>;
 Fri, 18 Dec 2020 13:51:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D9D32037C
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 13:51:37 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id u18so5559202lfd.9
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 05:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ud+ydgJ9az3Hiu3dG94tCj+AH/qmY9t585UF2V6T/f4=;
 b=YU3/c4y3sS1EheZWjrflGG0HpXjJJh+/DPVIl2CatwZ1345AQ4Ps9XE9KOttvWkWfB
 peJI/hYVrD79Qiu/52g+nyfaJH2iQHi9fESs9e7PSVrJLQHc07zXPCiP3ITLCpVWAREv
 qwx9cAfmpQTao8nPDvEfblvcaXemydgisPKlrfX9PihSCkXKt7/1dRn16B8ThPctm/CV
 ZH9TO87G8fCVtoY3YnsNGa1q53+i9enUSbke6lKkziiXHDIDgowFL/nbnOhxBRVQBjvP
 JCPfR7HU53ThAtkHaJ4/gZyc3fVHY+CWI8lg+84lqNnatqsSbuTO6NpiZ7ccnulU64Z/
 2C0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ud+ydgJ9az3Hiu3dG94tCj+AH/qmY9t585UF2V6T/f4=;
 b=qug94WNP8BMJBBIsv04rfWTVsU8YUpJqHytDpX6QzpaZ7tBFWU2AJvaaGxd6cYUOCJ
 7WDB6E213EZ3xFNspWiUcg3oijoDAS7dFvgOtJlRklR8zX2b57Yr/ZNmnYa3zdaHLRXF
 OzkigzD2nB/pOSFrSmWti4LH6MnlwAClJNEtoRPSrNDc0sRkz50POef1FiL6/tIhnj3X
 trNkAID205NeWtXFMqbmzbAz6x8dXrU/ypQ9wts5AItk1wG/wJFrlQlft6Uxfwi979eV
 mjTb4bWJpnSXfeU7Aw/8P+Ke0B3FRGTE+AU/0jEm9GXuf5GARGLKZCUEZo0BbiMH8QMJ
 1ODA==
X-Gm-Message-State: AOAM532RFF6t25BQCoIXPUIYRGKikwwWCEe4GXxLskSc0f6C3jEGnUif
 hQXFreX2ShzVhKUv8tfFjFE=
X-Google-Smtp-Source: ABdhPJwlBZ8Blm2A+JOtuSZuYrjATZyxdK51+2jHdPBCMrrfUZ3Pxpve0dGkaB8ZmDWkCYbAToxNUg==
X-Received: by 2002:a2e:b896:: with SMTP id r22mr1801148ljp.442.1608299495548; 
 Fri, 18 Dec 2020 05:51:35 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id i10sm934975lfd.202.2020.12.18.05.51.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Dec 2020 05:51:34 -0800 (PST)
Subject: Re: [PATCH v2 00/48] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201218071455.vdeozvvnmkjtrejt@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c0976db7-ae66-740c-d95f-501d81c99fa0@gmail.com>
Date: Fri, 18 Dec 2020 16:51:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201218071455.vdeozvvnmkjtrejt@vireshk-i7>
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

MTguMTIuMjAyMCAxMDoxNCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA1LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEludHJvZHVjZSBjb3JlIHZvbHRhZ2Ug
c2NhbGluZyBmb3IgTlZJRElBIFRlZ3JhMjAvMzAgU29Dcywgd2hpY2ggcmVkdWNlcwo+PiBwb3dl
ciBjb25zdW1wdGlvbiBhbmQgaGVhdGluZyBvZiB0aGUgVGVncmEgY2hpcHMuIFRlZ3JhIFNvQyBo
YXMgbXVsdGlwbGUKPj4gaGFyZHdhcmUgdW5pdHMgd2hpY2ggYmVsb25nIHRvIGEgY29yZSBwb3dl
ciBkb21haW4gb2YgdGhlIFNvQyBhbmQgc2hhcmUKPj4gdGhlIGNvcmUgdm9sdGFnZS4gVGhlIHZv
bHRhZ2UgbXVzdCBiZSBzZWxlY3RlZCBpbiBhY2NvcmRhbmNlIHRvIGEgbWluaW11bQo+PiByZXF1
aXJlbWVudCBvZiBldmVyeSBjb3JlIGhhcmR3YXJlIHVuaXQuCj4gCj4gUGxlYXNlIHN1Ym1pdCB0
aGUgT1BQIGNoYW5nZXMgc2VwYXJhdGVseSAoYWxvbmUpLCBpdCB3aWxsIG5ldmVyIGdldAo+IG1l
cmdlZCB0aGlzIHdheS4gU2VuZCBmaXhlcyBhdCB0aGUgdG9wLCBhbnkgZmVhdHVyZXMgeW91IHdh
bnQgbGF0ZXIgaW4KPiB0aGUgc2VyaWVzLiBJdCBpcyBmaW5lIGZvciB5b3UgdG8gYmFzZSB5b3Vy
IHNlcmllcyBvZiBwYXRjaGVzIHdoaWNoCj4gYXJlIHVuZGVyIHJldmlldywgeW91IGp1c3QgbmVl
ZCB0byBtZW50aW9uIHRoYXQgaW4geW91ciBjb3ZlciBsZXR0ZXIKPiBmb3IgeW91ciBwbGF0Zm9y
bSdzIHBhdGNoc2V0Lgo+IAoKQWxyaWdodCwgYWx0aG91Z2ggSSBoYXZlbid0IHByZXRlbmRlZCB0
aGF0IHYyIHBhdGNoZXMgc2hvdWxkIGJlIG1lcmdlZApyaWdodCBhd2F5IHNpbmNlIHRoZXkgYXJl
IGZ1bmRhbWVudGFsbHkgZGlmZmVyZW50IGZyb20gdjEsIGFuZCB0aHVzLCBhbGwKcGF0Y2hlcyBu
ZWVkIHRvIGJlIHJldmlld2VkIGZpcnN0LgoKSWYgdGhlIGN1cnJlbnQgT1BQIGNoYW5nZXMgbG9v
ayBnb29kIHRvIHlvdSwgdGhlbiBwbGVhc2UgZ2l2ZSB5b3VycyByLWIKdG8gdGhlIHBhdGNoZXMu
IFRoYW5rcyBpbiBhZHZhbmNlIQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
