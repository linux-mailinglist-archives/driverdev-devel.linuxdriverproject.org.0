Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC242E0ED5
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:21:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61D0787132;
	Tue, 22 Dec 2020 19:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ki2CixtDv2ym; Tue, 22 Dec 2020 19:21:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBA4B85A32;
	Tue, 22 Dec 2020 19:21:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 668901BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33C1184F76
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xtAkIR2Y-7u5 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F04C87228
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:21:06 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id s26so34482955lfc.8
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0YzH8qFTgwShSHXjPQ/ih8sk32BJvJHUfZ62MJdnb4Q=;
 b=cjuuNVp8wJ4Py/jZcvkjtwd+gc2aYRuxADY9gxQQ1BFMmuGUB+QpXlnKsJc4t6BtCL
 KnGX5HHkPLoHg8NcbTRi//P/INJ7hF0Mt7Mg696geYuEi3wXX1JvDW6EQE3Sovz8NX+t
 lFaTGtAHKDD5oXV+3gr2TFkuTLzSI6ZGfCmsppPN3+9iVTJmuVeFHGF8Fe2bKRhm87pv
 bB6x6iQQhjZqDFLIAdl2dOjsTocH/K/GqNBn2WMEe3LKWzJstYv2DfJBuLBpNrjeZnvJ
 GVJM4YnrqqstFT9iWTlRzs4LU5FMJbnvxzZWYbtw6Ps7yPs1l9ZSuum5Z9IQvJftfOSJ
 zYGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0YzH8qFTgwShSHXjPQ/ih8sk32BJvJHUfZ62MJdnb4Q=;
 b=KVKekypPGU6okLopk2mEOtHh5rjIJ4dNDWsK1em1W0okDc/WudTGr30iUlQ+y9dBK6
 kAYKzwYkWqN44rSPV7Wq1VlajuzMMixruaN9IuIXEABx9TrNtat+5A7ai7AbDEQtOrdh
 pxXCNrq0DEISfsOp8/XItgQgSlK9vvEk7zcltmbQS8Dlmko28EQii/nNYJQpff76l4wV
 D/PsSoVYrjv4J/QsjRb9L9Q0Jg+WRgDnDCuMGkzjt5bED8j/6sydwJ4opTyppg5Bj2lo
 21uXYpOS93W7vY3ryy1M20Dt9n8ow4XxtBqY+7XeIyc4Jmg8RtHS7DV4FTudSBZ+fpk7
 wS3Q==
X-Gm-Message-State: AOAM530L30tXlgqn4asFp54v2Hvr5TU9i9ORbcoOGSJHd7G1vgbJGbbo
 e5kSFNczoctYRUdWVO+1PYs=
X-Google-Smtp-Source: ABdhPJyTfRbQjmFtVPw92Y7UsE4CBIej0hVl2LRd1tte7JNX6Oy7N+3jhVtpYSR71T820OH/ZDlnJA==
X-Received: by 2002:ac2:5597:: with SMTP id v23mr4071397lfg.649.1608664864385; 
 Tue, 22 Dec 2020 11:21:04 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id k2sm2771430lfo.256.2020.12.22.11.21.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:21:03 -0800 (PST)
Subject: Re: [PATCH v2 28/48] soc/tegra: Introduce core power domain driver
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-29-digetx@gmail.com>
 <20201222064029.duuzcsj53rt7xzvt@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c130f78d-3d97-9b26-be77-951fee0d8680@gmail.com>
Date: Tue, 22 Dec 2020 22:21:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222064029.duuzcsj53rt7xzvt@vireshk-i7>
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

MjIuMTIuMjAyMCAwOTo0MCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+ICsrKyBiL2RyaXZlcnMvc29jL3RlZ3Jh
L2NvcmUtcG93ZXItZG9tYWluLmMKPj4gQEAgLTAsMCArMSwxMjUgQEAKPj4gKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+PiArLyoKPj4gKyAqIE5WSURJQSBUZWdyYSBTb0Mg
Q29yZSBQb3dlciBEb21haW4gRHJpdmVyCj4+ICsgKi8KPj4gKwo+PiArI2luY2x1ZGUgPGxpbnV4
L29mX2RldmljZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+PiAr
I2luY2x1ZGUgPGxpbnV4L3BtX2RvbWFpbi5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3BtX29wcC5o
Pgo+PiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPj4gKwo+PiArI2luY2x1ZGUgPHNvYy90ZWdy
YS9jb21tb24uaD4KPj4gKwo+PiArc3RhdGljIHN0cnVjdCBsb2NrX2NsYXNzX2tleSB0ZWdyYV9j
b3JlX2RvbWFpbl9sb2NrX2NsYXNzOwo+PiArc3RhdGljIGJvb2wgdGVncmFfY29yZV9kb21haW5f
c3RhdGVfc3luY2VkOwo+PiArCj4+ICtzdGF0aWMgaW50IHRlZ3JhX2dlbnBkX3NldF9wZXJmb3Jt
YW5jZV9zdGF0ZShzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkLAo+PiArCQkJCQkgICAg
IHVuc2lnbmVkIGludCBsZXZlbCkKPj4gK3sKPj4gKwlzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwOwo+
PiArCWludCBlcnI7Cj4+ICsKPj4gKwlvcHAgPSBkZXZfcG1fb3BwX2ZpbmRfbGV2ZWxfY2VpbCgm
Z2VucGQtPmRldiwgJmxldmVsKTsKPiAKPiBXZSBkb24ndCBuZWVkIGNlaWwgb3IgZmxvb3IgdmVy
c2lvbnMgZm9yIGxldmVsLCBidXQgcmF0aGVyIF9leGFjdCgpIHZlcnNpb24uIE9yCj4gbWF5YmUg
anVzdCBjYWxsIGl0IGRldl9wbV9vcHBfZmluZF9sZXZlbCgpLgoKVGhlIF9leGFjdCgpIHZlcnNp
b24gd29uJ3QgZmluZCBPUFAgZm9yIGxldmVsPTAgaWYgbGV2ZWxzIGRvbid0IHN0YXJ0CndpdGgg
MC4KCj4+ICsJaWYgKElTX0VSUihvcHApKSB7Cj4+ICsJCWRldl9lcnIoJmdlbnBkLT5kZXYsICJm
YWlsZWQgdG8gZmluZCBPUFAgZm9yIGxldmVsICV1OiAlcGVcbiIsCj4+ICsJCQlsZXZlbCwgb3Bw
KTsKPj4gKwkJcmV0dXJuIFBUUl9FUlIob3BwKTsKPj4gKwl9Cj4+ICsKPj4gKwllcnIgPSBkZXZf
cG1fb3BwX3NldF92b2x0YWdlKCZnZW5wZC0+ZGV2LCBvcHApOwo+IAo+IElJVUMsIHlvdSBpbXBs
ZW1lbnRlZCB0aGlzIGNhbGxiYWNrIGJlY2F1c2UgeW91IHdhbnQgdG8gdXNlIHRoZSB2b2x0YWdl
IHRyaXBsZXQKPiBwcmVzZW50IGluIHRoZSBPUFAgdGFibGUgPwo+IAo+IEFuZCBzbyB5b3UgYXJl
IHNldHRpbmcgdGhlIHJlZ3VsYXRvciAoInBvd2VyIikgbGF0ZXIgaW4gdGhpcyBwYXRjaCA/Cgp5
ZXMKCj4gSSBhbSBub3QgaW4gZmF2b3Igb2YgaW1wbGVtZW50aW5nIHRoaXMgcm91dGluZSwgYXMg
aXQganVzdCBhZGRzIGEgd3JhcHBlciBhYm92ZQo+IHRoZSByZWd1bGF0b3IgQVBJLiBXaGF0IHlv
dSBzaG91bGQgYmUgZG9pbmcgcmF0aGVyIGlzIGdldCB0aGUgcmVndWxhdG9yIGJ5Cj4geW91cnNl
bGYgaGVyZSAoaW5zdGVhZCBvZiBkZXBlbmRpbmcgb24gdGhlIE9QUCBjb3JlKS4gQW5kIHRoZW4g
eW91IGNhbiBkbwo+IGRldl9wbV9vcHBfZ2V0X3ZvbHRhZ2UoKSBoZXJlIGFuZCBzZXQgdGhlIHZv
bHRhZ2UgeW91cnNlbGYuIFlvdSBtYXkgd2FudCB0bwo+IGltcGxlbWVudCBhIHZlcnNpb24gc3Vw
cG9ydGluZyB0cmlwbGV0IGhlcmUgdGhvdWdoIGZvciB0aGUgc2FtZS4KPiAKPiBBbmQgeW91IHdv
bid0IHJlcXVpcmUgdGhlIHN5bmMgdmVyc2lvbiBvZiB0aGUgQVBJIGFzIHdlbGwgdGhlbi4KPiAK
ClRoYXQncyB3aGF0IEkgaW5pdGlhbGx5IGRpZCBmb3IgdGhpcyBkcml2ZXIuIEkgZG9uJ3QgbWlu
ZCB0byByZXZlcnQgYmFjawp0byB0aGUgaW5pdGlhbCB2YXJpYW50IGluIHYzLCBpdCBhcHBlYXJl
ZCB0byBtZSB0aGF0IGl0IHdpbGwgYmUgbmljZXIKYW5kIGNsZWFuZXIgdG8gaGF2ZSBPUFAgQVBJ
IG1hbmFnaW5nIGV2ZXJ5dGhpbmcgaGVyZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
