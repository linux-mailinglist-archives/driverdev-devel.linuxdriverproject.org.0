Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27462DD846
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:29:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AC2687AB3;
	Thu, 17 Dec 2020 18:29:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lwGMiZy41Hxn; Thu, 17 Dec 2020 18:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D93187AAA;
	Thu, 17 Dec 2020 18:29:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEF241BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D29E02E2B3
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipxPJPldL9AG for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:29:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by silver.osuosl.org (Postfix) with ESMTPS id 34E462E286
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:29:02 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id m5so27541548wrx.9
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=q8aRgUoihX8Avz9ruuy2QvIzzYrzaxUTGheCXawpxLo=;
 b=xl1+B8fgQHVTz0DkWK6xdRV/uEVFC82QHBw49Alo1pZRQNVZfyPx/dg+9bxRxn3y5j
 wOqiffyVmnYbj1EgpecnWAs09QIW7EF/7NIcncaJdZmmY7+vczFoazIVy/Eg+65pjOtM
 gbZSGEAdgwAa1cWspO2xP3t3GCTb/mkxr1zZPv3grz2TSux4ttuJEbJVzOWrxUZiqiYa
 EyespBuebZDUnKpi2lIbacdsmhJeRja5SjUmsnxUg4sTGmUV//8S1eWH9DFS0ELLtHED
 LuXIIy4cz1c19ZN2cy4JbGpV1+1UqvirDLHJkG8A4GrB16/yngcSjT40kjaVP9H2ytUQ
 kfsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=q8aRgUoihX8Avz9ruuy2QvIzzYrzaxUTGheCXawpxLo=;
 b=cqSF+pzI1/kip07922dWqCqxjEWkv8qtielzNUYdKpSqAC7fwPWOtyo1Mbpqj63y59
 aKAM9/rYqrL3VpabyaVtatGsy29TlYYAHBB4ZvI6Q0jqHMkEoocqSkk2pSoqyxzQAwmd
 +7+Sz0Wmtwj4wCuD7DUbg6D1dlVarcoSXoTxsg5/Ihqjb9r+M+h7iDpEOIwDD4WCLo0s
 M5pvIxCYGj3EexyHmovs5QdM7zRANeP2X+C7R9AMDRJRQgtY6EUZWmZNiEthSRIoS17N
 o+dkVfgi/H3RLHt8sZoskIqdPpEDVndrT0ss7JqzbyWs7Vtf5XGpXzrlHaRbWO7r/PTv
 XMJg==
X-Gm-Message-State: AOAM531w8uNTxHWD4mJNKck8q7qRhbN13rSFYlepuPUmPLvq5j2ntY4B
 YG2+Nu1psBLCKxx+PG0DRQKyYQ==
X-Google-Smtp-Source: ABdhPJzsRtqGVStuVvpkZl1+aZoPEJq0l19ZzD3Ifm+FDKdUgsJB+PBHx04WPNMgDSSCFiYkBdKpYg==
X-Received: by 2002:a5d:61ca:: with SMTP id q10mr144253wrv.124.1608229740327; 
 Thu, 17 Dec 2020 10:29:00 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:ccb6:ce78:2bcd:4ead?
 ([2a01:e34:ed2f:f020:ccb6:ce78:2bcd:4ead])
 by smtp.googlemail.com with ESMTPSA id f7sm15260897wmc.1.2020.12.17.10.28.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Dec 2020 10:28:59 -0800 (PST)
Subject: Re: [PATCH v2 48/48] ARM: tegra: cardhu: Support CPU voltage scaling
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
 <20201217180638.22748-49-digetx@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c0cb782a-bd26-917a-8f39-db8b6f460472@linaro.org>
Date: Thu, 17 Dec 2020 19:28:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201217180638.22748-49-digetx@gmail.com>
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
dm9sdGFnZSBzY2FsaW5nIGFuZCB0aGVybWFsIHRocm90dGxpbmcgb24gVGVncmEzMCBDYXJkaHUg
Ym9hcmQuCj4gCj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwu
Y29tPgo+IC0tLQoKU2FtZSBjb21tZW50cyBhcyA0Ny80OAoKCgo+ICBhcmNoL2FybS9ib290L2R0
cy90ZWdyYTMwLWNhcmRodS5kdHNpIHwgNjEgKysrKysrKysrKysrKysrKysrKysrKysrKystCj4g
IDEgZmlsZSBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3RlZ3JhMzAtY2FyZGh1LmR0c2kgYi9hcmNoL2Fy
bS9ib290L2R0cy90ZWdyYTMwLWNhcmRodS5kdHNpCj4gaW5kZXggZDc0YzljYTc4YTdmLi4wOGMw
ZWE0ZTYyMjggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvdGVncmEzMC1jYXJkaHUu
ZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3RlZ3JhMzAtY2FyZGh1LmR0c2kKPiBAQCAt
MSw2ICsxLDkgQEAKPiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+Cj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5n
cy90aGVybWFsL3RoZXJtYWwuaD4KPiAgI2luY2x1ZGUgInRlZ3JhMzAuZHRzaSIKPiArI2luY2x1
ZGUgInRlZ3JhMzAtY3B1LW9wcC5kdHNpIgo+ICsjaW5jbHVkZSAidGVncmEzMC1jcHUtb3BwLW1p
Y3Jvdm9sdC5kdHNpIgo+ICAKPiAgLyoqCj4gICAqIFRoaXMgZmlsZSBjb250YWlucyBjb21tb24g
RFQgZW50cnkgZm9yIGFsbCBmYWIgdmVyc2lvbiBvZiBDYXJkaHUuCj4gQEAgLTMzOSwxMiArMzQy
LDEzIEBAIGxkbzhfcmVnOiBsZG84IHsKPiAgCQkJfTsKPiAgCQl9Owo+ICAKPiAtCQl0ZW1wZXJh
dHVyZS1zZW5zb3JANGMgewo+ICsJCW5jdDEwMDg6IHRlbXBlcmF0dXJlLXNlbnNvckA0YyB7Cj4g
IAkJCWNvbXBhdGlibGUgPSAib25ubixuY3QxMDA4IjsKPiAgCQkJcmVnID0gPDB4NGM+Owo+ICAJ
CQl2Y2Mtc3VwcGx5ID0gPCZzeXNfM3YzX3JlZz47Cj4gIAkJCWludGVycnVwdC1wYXJlbnQgPSA8
JmdwaW8+Owo+ICAJCQlpbnRlcnJ1cHRzID0gPFRFR1JBX0dQSU8oQ0MsIDIpIElSUV9UWVBFX0xF
VkVMX0xPVz47Cj4gKwkJCSN0aGVybWFsLXNlbnNvci1jZWxscyA9IDwxPjsKPiAgCQl9Owo+ICAK
PiAgCQl2ZGRfY29yZTogdHBzNjIzNjFANjAgewo+IEBAIC00MzgsNiArNDQyLDI5IEBAIGNsazMy
a19pbjogY2xvY2tAMCB7Cj4gIAkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICAJfTsKPiAgCj4gKwlj
cHVzIHsKPiArCQljcHUwOiBjcHVAMCB7Cj4gKwkJCWNwdS1zdXBwbHkgPSA8JnZkZGN0cmxfcmVn
PjsKPiArCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owo+ICsJCQkj
Y29vbGluZy1jZWxscyA9IDwyPjsKPiArCQl9Owo+ICsKPiArCQljcHVAMSB7Cj4gKwkJCWNwdS1z
dXBwbHkgPSA8JnZkZGN0cmxfcmVnPjsKPiArCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1
MF9vcHBfdGFibGU+Owo+ICsJCX07Cj4gKwo+ICsJCWNwdUAyIHsKPiArCQkJY3B1LXN1cHBseSA9
IDwmdmRkY3RybF9yZWc+Owo+ICsJCQlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjcHUwX29wcF90
YWJsZT47Cj4gKwkJfTsKPiArCj4gKwkJY3B1QDMgewo+ICsJCQljcHUtc3VwcGx5ID0gPCZ2ZGRj
dHJsX3JlZz47Cj4gKwkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNwdTBfb3BwX3RhYmxlPjsK
PiArCQl9Owo+ICsJfTsKPiArCj4gIAlwYW5lbDogcGFuZWwgewo+ICAJCWNvbXBhdGlibGUgPSAi
Y2h1bmdod2EsY2xhYTEwMXdiMDEiOwo+ICAJCWRkYy1pMmMtYnVzID0gPCZwYW5lbGRkYz47Cj4g
QEAgLTYxNyw2ICs2NDQsMzggQEAgc291bmQgewo+ICAJCQkJCSA8JnRlZ3JhX2NhciBURUdSQTMw
X0NMS19FWFRFUk4xPjsKPiAgCX07Cj4gIAo+ICsJdGhlcm1hbC16b25lcyB7Cj4gKwkJY3B1LXRo
ZXJtYWwgewo+ICsJCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MTAwMD47IC8qIG1pbGxpc2Vj
b25kcyAqLwo+ICsJCQlwb2xsaW5nLWRlbGF5ID0gPDUwMDA+OyAvKiBtaWxsaXNlY29uZHMgKi8K
PiArCj4gKwkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmbmN0MTAwOCAxPjsKPiArCj4gKwkJCXRyaXBz
IHsKPiArCQkJCXRyaXAwOiBjcHUtYWxlcnQwIHsKPiArCQkJCQkvKiB0aHJvdHRsZSBhdCA1N0Mg
dW50aWwgdGVtcGVyYXR1cmUgZHJvcHMgdG8gNTYuOEMgKi8KPiArCQkJCQl0ZW1wZXJhdHVyZSA9
IDw1NzAwMD47Cj4gKwkJCQkJaHlzdGVyZXNpcyA9IDwyMDA+Owo+ICsJCQkJCXR5cGUgPSAicGFz
c2l2ZSI7Cj4gKwkJCQl9Owo+ICsKPiArCQkJCXRyaXAxOiBjcHUtY3JpdCB7Cj4gKwkJCQkJLyog
c2h1dCBkb3duIGF0IDYwQyAqLwo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDYwMDAwPjsKPiArCQkJ
CQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAiY3JpdGljYWwiOwo+ICsJCQkJ
fTsKPiArCQkJfTsKPiArCj4gKwkJCWNvb2xpbmctbWFwcyB7Cj4gKwkJCQltYXAwIHsKPiArCQkJ
CQl0cmlwID0gPCZ0cmlwMD47Cj4gKwkJCQkJY29vbGluZy1kZXZpY2UgPSA8JmNwdTAgVEhFUk1B
TF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPjsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwkJfTsK
PiArCX07Cj4gKwo+ICAJZ3Bpby1rZXlzIHsKPiAgCQljb21wYXRpYmxlID0gImdwaW8ta2V5cyI7
Cj4gIAo+IAoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
