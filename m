Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C155C2DD845
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:28:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6A0D876A6;
	Thu, 17 Dec 2020 18:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWgQbUDrAMOT; Thu, 17 Dec 2020 18:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4321887692;
	Thu, 17 Dec 2020 18:28:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CBAD51BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C311687693
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Va-frSvkQctU for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:28:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0B8987692
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:28:27 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id t16so27567168wra.3
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3Eimbv4irvb06uulzwdmbgzbH0hXJUaf7zvbDZ2yAOw=;
 b=MBoNO+HzZQn1d2jk1/V+kBAn+RuX+Bgjf4yAuTECCPwo9pr5m6PA59e8a2suZD2rZj
 WQK6VoGzqsqLLXsUPVSeZCJtfpqNYYeWHwu0WtzcCHrnA0iTZqPKBNzusky0oGwcuPWI
 vxgZfG5PORMcS69Xl3gppSuianH953hu/LhmBsqsDfxzq0DrtWc4KMCBFbV4Zl+Tdl+j
 XQwoV7n4jnAiYy/9txHOHHP967uVhDMXq6PpvemH0tcgRkKhqHfeQLEuECTmp6B3Jlgd
 6Fh5JlgWumnZnWlQKc+PhZd7mWDSwAf3QNa4hWd6frVbAITao8rEW0tIt4LVEW+PWtB+
 D1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3Eimbv4irvb06uulzwdmbgzbH0hXJUaf7zvbDZ2yAOw=;
 b=alqMPXUToK3phzZNggbXuwcWvgP6cyzsbQ6j9DTOr3BvZk01Eg+YZBwAFFai9FRn3T
 I3RC0NO8vs0WnlnRYV1UD62Y5m8WoX+kU39k1fb+7OiRQeKrrfB6zUJdKRvn2Xqy58xK
 RTUD9rdIvdpxOiP9rYAZs0SOugQsjunLqrNDgxERaRCfUow97/rIOkTfWO1OwUh8ksQK
 hmDsBqjVBh4Y9POm8/WtRgl0V7u/N4lnMQy5IOVd/VMKEVtL1m+UaNVQ479ehyKR6g0X
 Uv+NW1xyP/eq1xfOtdEMLuxp4PPZC39p9E9hVIN4mTAQXIoSNrB4HKEX5i1TD0pO36iX
 Chlg==
X-Gm-Message-State: AOAM533Wwd6I+AuhoR+nj3q55sVT+bLujMGpNo0/Yg1V40XgHsAvwOdr
 aInzXzoHDCBGKvykmTvSkxhoWg==
X-Google-Smtp-Source: ABdhPJzKbCCGpt8ELmmFbxdiuj0VOZ+HkKMKFTm6vWFFlnL6Ebt+3D8mHpr+ALmo4+wr+vg26zHlzQ==
X-Received: by 2002:adf:ebd2:: with SMTP id v18mr115947wrn.322.1608229706152; 
 Thu, 17 Dec 2020 10:28:26 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:ccb6:ce78:2bcd:4ead?
 ([2a01:e34:ed2f:f020:ccb6:ce78:2bcd:4ead])
 by smtp.googlemail.com with ESMTPSA id q1sm9831416wrj.8.2020.12.17.10.28.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Dec 2020 10:28:25 -0800 (PST)
Subject: Re: [PATCH v2 47/48] ARM: tegra: ventana: Support CPU voltage scaling
 and thermal throttling
To: Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-48-digetx@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <91139f8b-0b83-dd8a-ba53-8e7a499e6344@linaro.org>
Date: Thu, 17 Dec 2020 19:28:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201217180638.22748-48-digetx@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTcvMTIvMjAyMCAxOTowNiwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IEVuYWJsZSBDUFUg
dm9sdGFnZSBzY2FsaW5nIGFuZCB0aGVybWFsIHRocm90dGxpbmcgb24gVGVncmEyMCBWZW50YW5h
IGJvYXJkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWls
LmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvdGVncmEyMC12ZW50YW5hLmR0cyB8IDQw
ICsrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy90ZWdyYTIwLXZlbnRhbmEuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvdGVncmEyMC12ZW50YW5h
LmR0cwo+IGluZGV4IDE0YWNlMmVmNzQ5Yy4uYzJkOWYzODk2MGJjIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3RlZ3JhMjAtdmVudGFuYS5kdHMKPiArKysgYi9hcmNoL2FybS9ib290
L2R0cy90ZWdyYTIwLXZlbnRhbmEuZHRzCj4gQEAgLTIsOCArMiwxMCBAQAo+ICAvZHRzLXYxLzsK
PiAgCj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5oPgo+ICsjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvdGhlcm1hbC90aGVybWFsLmg+Cj4gICNpbmNsdWRlICJ0ZWdyYTIwLmR0c2ki
Cj4gICNpbmNsdWRlICJ0ZWdyYTIwLWNwdS1vcHAuZHRzaSIKPiArI2luY2x1ZGUgInRlZ3JhMjAt
Y3B1LW9wcC1taWNyb3ZvbHQuZHRzaSIKPiAgCj4gIC8gewo+ICAJbW9kZWwgPSAiTlZJRElBIFRl
Z3JhMjAgVmVudGFuYSBldmFsdWF0aW9uIGJvYXJkIjsKPiBAQCAtNTI3LDkgKzUyOSwxMCBAQCBs
ZG9fcnRjIHsKPiAgCQkJfTsKPiAgCQl9Owo+ICAKPiAtCQl0ZW1wZXJhdHVyZS1zZW5zb3JANGMg
ewo+ICsJCW5jdDEwMDg6IHRlbXBlcmF0dXJlLXNlbnNvckA0YyB7Cj4gIAkJCWNvbXBhdGlibGUg
PSAib25ubixuY3QxMDA4IjsKPiAgCQkJcmVnID0gPDB4NGM+Owo+ICsJCQkjdGhlcm1hbC1zZW5z
b3ItY2VsbHMgPSA8MT47Cj4gIAkJfTsKPiAgCX07Cj4gIAo+IEBAIC02MTUsMTAgKzYxOCwxMyBA
QCBjbGszMmtfaW46IGNsb2NrQDAgewo+ICAKPiAgCWNwdXMgewo+ICAJCWNwdTA6IGNwdUAwIHsK
PiArCQkJY3B1LXN1cHBseSA9IDwmdmRkX2NwdT47Cj4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIg
PSA8JmNwdTBfb3BwX3RhYmxlPjsKPiArCQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gIAkJfTsK
PiAgCj4gIAkJY3B1QDEgewo+ICsJCQljcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1PjsKPiAgCQkJb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owo+ICAJCX07Cj4gIAl9Owo+IEBA
IC03MTcsNCArNzIzLDM2IEBAIHNvdW5kIHsKPiAgCQkJIDwmdGVncmFfY2FyIFRFR1JBMjBfQ0xL
X0NERVYxPjsKPiAgCQljbG9jay1uYW1lcyA9ICJwbGxfYSIsICJwbGxfYV9vdXQwIiwgIm1jbGsi
Owo+ICAJfTsKPiArCj4gKwl0aGVybWFsLXpvbmVzIHsKPiArCQljcHUtdGhlcm1hbCB7Cj4gKwkJ
CXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAwPjsgLyogbWlsbGlzZWNvbmRzICovCj4gKwkJ
CXBvbGxpbmctZGVsYXkgPSA8NTAwMD47IC8qIG1pbGxpc2Vjb25kcyAqLwo+ICsKPiArCQkJdGhl
cm1hbC1zZW5zb3JzID0gPCZuY3QxMDA4IDE+Owo+ICsKPiArCQkJdHJpcHMgewo+ICsJCQkJdHJp
cDA6IGNwdS1hbGVydDAgewo+ICsJCQkJCS8qIHN0YXJ0IHRocm90dGxpbmcgYXQgNTBDICovCj4g
KwkJCQkJdGVtcGVyYXR1cmUgPSA8NTAwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwPjsK
CkRpZCB5b3UgbWVhbiA8MjAwMD4gPwoKPiArCQkJCQl0eXBlID0gInBhc3NpdmUiOwo+ICsJCQkJ
fTsKPiArCj4gKwkJCQl0cmlwMTogY3B1LWNyaXQgewo+ICsJCQkJCS8qIHNodXQgZG93biBhdCA2
MEMgKi8KPiArCQkJCQl0ZW1wZXJhdHVyZSA9IDw2MDAwMD47Cj4gKwkJCQkJaHlzdGVyZXNpcyA9
IDwyMDAwPjsKCkkgdGhpbmsgeW91IGNhbiBkcm9wIHRoZSBoeXN0ZXJlc2lzIGhlcmUsIHdoZW4g
dGhlIGNyaXRpY2FsIHRlbXBlcmF0dXJlCmlzIHJlYWNoZWQsIHRoZXJlIGlzIGFuIGVtZXJnZW5j
eSBzaHV0ZG93bi4KCjUwwrBDIGFuZCA2MMKwQyBzb3VuZCB2ZXJ5IGxvdyB2YWx1ZXMsIG5vID8K
Cj4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsKPiArCQkJ
Y29vbGluZy1tYXBzIHsKPiArCQkJCW1hcDAgewo+ICsJCQkJCXRyaXAgPSA8JnRyaXAwPjsKPiAr
CQkJCQljb29saW5nLWRldmljZSA9IDwmY3B1MCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9f
TElNSVQ+OwoKWW91IHNob3VsZCBhZGQgYWxsIENQVXMgaGVyZS4KCj4gKwkJCQl9Owo+ICsJCQl9
Owo+ICsJCX07Cj4gKwl9Owo+ICB9Owo+IAoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4g
TGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cg
TGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sg
fAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3
LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
