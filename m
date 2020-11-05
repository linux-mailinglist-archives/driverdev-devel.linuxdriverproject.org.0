Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B232A80A6
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 15:18:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96E0885B48;
	Thu,  5 Nov 2020 14:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nW6F3CuxE1DQ; Thu,  5 Nov 2020 14:18:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 046938643F;
	Thu,  5 Nov 2020 14:18:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F5A31BF425
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 14:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0AA8F871EB
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 14:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a5anKC504BeN for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 14:18:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17CE9871D6
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 14:18:30 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id e27so2526316lfn.7
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 06:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=a5y+ASdbJF7UbQ+vp77BCT2KDi+gpOYaKC8ivtEOGj0=;
 b=g4l+hVmvZJ+r32x9EsssFNsZ5oXkz9HqijwiMWB20Hs8LV8tDeXO5wDP2AG/Ia3GaI
 Hwuea13bqdIIKnem0td0/UpNjHWgB9DVjy6hdPRCWVbFoNJzj4M0fZUFU/7RNBU4rt3k
 kc9tlA0jovLN0Gusx603CbzP46guXz28PiRbiR3kuvvviuP6Rb5iGKwNBBBKtt9lmPld
 D87eVIe2ld++drVrg0eJZY1aSlqZ4dpJU4tfJCdDrFPZ7eVkJFF2a93Zl0nVR6L6/l3m
 hrI6o51kHJEVFgIEDT2hWkgqUBcql4bZDnxqmeku7yRtNmSh5zeKlfoGUV2h+Y+8tAdf
 yy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a5y+ASdbJF7UbQ+vp77BCT2KDi+gpOYaKC8ivtEOGj0=;
 b=mmk3fZWiMjuHJcvkU2AfzoSbuPQI94xoTuDXzve4RxjFNqZNOkw+3bgqxkd9tKPN2G
 xayI8+GRAYL/KjLW8hs8kg6cjxvZY6JGwwipyDBwyXz14JtVGThgbzHACCGcThlcnnYg
 y4td4lE7YnrNCqHVN8qsjLG39MvohuCd07L5tKxztEZ2VZ42w/oKg4i0El2SnbS6UqSV
 rA+xJLTsrw309zT4wctG+lUquJi5y02gEejWJUKvRFNETNE2AAXW5lmq/xGkmK8rN/wh
 iqkuiSJm9yEhikPrrydBtUo0RSFIkza2nnReAPKM2Cke0vE5FzA/TCmh7SdB6ItbOQIq
 sdeg==
X-Gm-Message-State: AOAM532NMaMedw102Zp70MXaOXE9oPgsEuYOpMHkicGyKMgbd/tYUVLx
 epz6m79hG0/DqOdPkcRGM2U=
X-Google-Smtp-Source: ABdhPJwoANVa5YaT/Dinn/I6WAD0v1YZJaRBuao5eyb3VmVXegLCD7snX/bqOHRg8V3ordcvrgDQ6A==
X-Received: by 2002:a19:ad04:: with SMTP id t4mr1028403lfc.577.1604585908263; 
 Thu, 05 Nov 2020 06:18:28 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.googlemail.com with ESMTPSA id q4sm162676ljp.103.2020.11.05.06.18.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 06:18:27 -0800 (PST)
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-18-digetx@gmail.com>
 <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
Date: Thu, 5 Nov 2020 17:18:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
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

MDUuMTEuMjAyMCAxMjo1OCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4+ICtzdGF0aWMgdm9p
ZCBzZGhjaV90ZWdyYV9kZWluaXRfb3BwX3RhYmxlKHZvaWQgKmRhdGEpCj4+ICt7Cj4+ICsgICAg
ICAgc3RydWN0IGRldmljZSAqZGV2ID0gZGF0YTsKPj4gKyAgICAgICBzdHJ1Y3Qgb3BwX3RhYmxl
ICpvcHBfdGFibGU7Cj4+ICsKPj4gKyAgICAgICBvcHBfdGFibGUgPSBkZXZfcG1fb3BwX2dldF9v
cHBfdGFibGUoZGV2KTsKPiBTbyB5b3UgbmVlZCB0byBnZXQgYW4gT1BQIHRhYmxlIHRvIHB1dCBv
bmUgOikKPiBZb3UgbmVlZCB0byBzYXZlIHRoZSBwb2ludGVyIHJldHVybmVkIGJ5IGRldl9wbV9v
cHBfc2V0X3JlZ3VsYXRvcnMoKSBpbnN0ZWFkLgoKVGhpcyBpcyBpbnRlbnRpb25hbCBiZWNhdXNl
IHdoeSBkbyB3ZSBuZWVkIHRvIHNhdmUgdGhlIHBvaW50ZXIgaWYgd2UncmUKbm90IHVzaW5nIGl0
IGFuZCB3ZSBrbm93IHRoYXQgd2UgY291bGQgZ2V0IHRoaXMgcG9pbnRlciB1c2luZyBPUFAgQVBJ
PwpUaGlzIGlzIGV4YWN0bHkgdGhlIHNhbWUgd2hhdCBJIGRpZCBmb3IgdGhlIENQVUZyZXEgZHJp
dmVyIFsxXSA6KQoKWzFdCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjEwLXJj
Mi9zb3VyY2UvZHJpdmVycy9jcHVmcmVxL3RlZ3JhMjAtY3B1ZnJlcS5jI0w5NwoKPj4gKyAgICAg
ICBkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZShkZXYpOwo+PiArICAgICAgIGRldl9wbV9vcHBf
cHV0X3JlZ3VsYXRvcnMob3BwX3RhYmxlKTsKPj4gKyAgICAgICBkZXZfcG1fb3BwX3B1dF9vcHBf
dGFibGUob3BwX3RhYmxlKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGludCBkZXZtX3NkaGNpX3Rl
Z3JhX2luaXRfb3BwX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldikKPj4gK3sKPj4gKyAgICAgICBz
dHJ1Y3Qgb3BwX3RhYmxlICpvcHBfdGFibGU7Cj4+ICsgICAgICAgY29uc3QgY2hhciAqcm5hbWUg
PSAiY29yZSI7Cj4+ICsgICAgICAgaW50IGVycjsKPj4gKwo+PiArICAgICAgIC8qIHZvbHRhZ2Ug
c2NhbGluZyBpcyBvcHRpb25hbCAqLwo+PiArICAgICAgIGlmIChkZXZpY2VfcHJvcGVydHlfcHJl
c2VudChkZXYsICJjb3JlLXN1cHBseSIpKQo+PiArICAgICAgICAgICAgICAgb3BwX3RhYmxlID0g
ZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycyhkZXYsICZybmFtZSwgMSk7Cj4+ICsgICAgICAgZWxz
ZQo+IAo+PiArICAgICAgICAgICAgICAgb3BwX3RhYmxlID0gZGV2X3BtX29wcF9nZXRfb3BwX3Rh
YmxlKGRldik7Cj4gTmljZS4gSSBkaWRuJ3QgdGhpbmsgdGhhdCBzb21lb25lIHdpbGwgZW5kIHVw
IGFidXNpbmcgdGhpcyBBUEkgYW5kIHNvIG1hZGUgaXQKPiBhdmFpbGFibGUgZm9yIGFsbCwgYnV0
IHNvbWVvbmUganVzdCBkaWQgdGhhdC4gSSB3aWxsIGZpeCB0aGF0IGluIHRoZSBPUFAgY29yZS4K
ClRoZSBkZXZfcG1fb3BwX3B1dF9yZWd1bGF0b3JzKCkgaGFuZGxlcyB0aGUgY2FzZSB3aGVyZSBy
ZWd1bGF0b3IgaXMKbWlzc2luZyBieSBhY3RpbmcgYXMgZGV2X3BtX29wcF9nZXRfb3BwX3RhYmxl
KCksIGJ1dCB0aGUKZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpIGRvZXNuJ3QgZG8gaXQuIEhl
bmNlIEkgZG9uJ3QgdGhpbmsgdGhpcyBpcwphbiBhYnVzZSwgYnV0IHRoZSBPUFAgQVBJIGRyYXdi
YWNrLgoKPiBBbnkgaWRlYSB3aHkgeW91IGFyZSBkb2luZyB3aGF0IHlvdSBhcmUgZG9pbmcgaGVy
ZSA/CgpUd28gcmVhc29uczoKCjEuIFZvbHRhZ2UgcmVndWxhdG9yIGlzIG9wdGlvbmFsLCBidXQg
ZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpCmRvZXNuJ3Qgc3VwcG9ydCBvcHRpb25hbCByZWd1
bGF0b3JzLgoKMi4gV2UgbmVlZCB0byBiYWxhbmNlIHRoZSBvcHBfdGFibGUgcmVmY291bnQgaW4g
b3JkZXIgdG8gdXNlIE9QUCBBUEkKd2l0aG91dCBwb2xsdXRpbmcgY29kZSB3aXRoIGlmKGhhdmVf
cmVndWxhdG9yKSwgaGVuY2UgdGhlCmRldl9wbV9vcHBfZ2V0X29wcF90YWJsZSgpIGlzIG5lZWRl
ZCBmb3IgdGFraW5nIHRoZSBvcHBfdGFibGUgcmVmZXJlbmNlCnRvIGhhdmUgdGhlIHNhbWUgcmVm
Y291bnQgYXMgaW4gdGhlIGNhc2Ugb2YgdGhlIGRldl9wbV9vcHBfc2V0X3JlZ3VsYXRvcnMoKS4K
CkkgZ3Vlc3Mgd2UgY291bGQgbWFrZSBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKGRldiwgY291
bnQpIHRvIGFjY2VwdApyZWd1bGF0b3JzIGNvdW50PTAgYW5kIHRoZW4gYWN0IGFzIGRldl9wbV9v
cHBfZ2V0X29wcF90YWJsZShkZXYpLCB3aWxsCml0IGJlIGFjY2VwdGFibGU/Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
