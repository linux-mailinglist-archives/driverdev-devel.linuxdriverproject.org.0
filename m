Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68BC2E24E2
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 07:43:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1182287397;
	Thu, 24 Dec 2020 06:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wZmr-OMMXtA; Thu, 24 Dec 2020 06:43:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 459A487383;
	Thu, 24 Dec 2020 06:43:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC0361BF4D6
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 06:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E455386081
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 06:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSlV61zQm7iw for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 06:43:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA3BD859E3
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 06:43:42 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id x18so867288pln.6
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 22:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=EggZlPNaFVNouUQNpMn4xGppTh9DzckHE4NrKj3sjKU=;
 b=Oh3/knrLmICSN2Z3rwKTSyV0rZAdC95C5D83OrFtERU6Bx2ojcAX/s8nBJJNKbvkSv
 BfQYGy1zC8m1ZuYadonmShwKsEssyRaQOZBAyphCdJD8hE380Ft5/TXEmY6MO3GlJasq
 RrkhWNQEmgh/GsGttqWcNfZ71NVDkNEYwWsjuqkP8VdwJTCX2vdDpxVwsnQ5HNEweh0M
 An3fXfg9/d0G0+FuPk0ByAahetYKeSmx82mAoRUPnE+BrNipzngY1IzLAgLZrzjOCrN5
 irhxwHDc5mBc6s5RnM5iXO8Nlvm9QXzBmJqpuOPmEAQFWdjKY9j2t4sfjZzWKZOQDh3R
 twCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=EggZlPNaFVNouUQNpMn4xGppTh9DzckHE4NrKj3sjKU=;
 b=E7gFh5Zs9sCQxjBk2Lb+Gx3KjL21K0wds+6yvvDXiaEYgzWPkuCM+Si1G23Pn3xl85
 7yQuZFd+fs7Eg/rRxj7M0WVbIEB6Z8ZOZ+c2R34LXSnqNwIJbvrtPwEknbdG7ejdfTX6
 GyZ5O9zcn44S3ddPsTQ4bN+SJBKN+ny/yHqnRempVgVQgWBAn4FaZRNuDRCOmrT1QmHE
 +B7e8REx52mDtYexxB3/QrO39DB/r1cZ0RD95AE2YEcaDuX8rBPgBxMFMSucqPLJR9AL
 Y/AwLYBxLD+OPFZ6HfDH70DZHLcAZHDLZdGn3QFolcEPDkCifwnjx+YgPLXq5VEmV88X
 DrlQ==
X-Gm-Message-State: AOAM5318W/8d3x7qFoi/n52Pwq6YPIVGAhpZH/9kx7VwN2br/9ZJbGhQ
 immib08JcBAH8fn92QQmC3rvLA==
X-Google-Smtp-Source: ABdhPJzvXFDg0AOs/T4jYpQbUFp8mqlvGxAfA/7keO1x94rQjdeak+7MJF5KZ9Mxu1T0gEblsk2C9g==
X-Received: by 2002:a17:90b:60b:: with SMTP id
 gb11mr3193035pjb.122.1608792222393; 
 Wed, 23 Dec 2020 22:43:42 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id c14sm24658375pfd.37.2020.12.23.22.43.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Dec 2020 22:43:41 -0800 (PST)
Date: Thu, 24 Dec 2020 12:13:39 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
Message-ID: <20201224064339.zngidobhstnlu2a3@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
 <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
 <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
 <20201223041931.klnppy4fu3sdgtsz@vireshk-i7>
 <f00e0c74-8d9a-d3d3-81bb-3ac25a74175d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f00e0c74-8d9a-d3d3-81bb-3ac25a74175d@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
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

T24gMjMtMTItMjAsIDIzOjM3LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjMuMTIuMjAyMCAw
NzoxOSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiBPbiAyMi0xMi0yMCwgMjI6MTUsIERt
aXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+PiAyMi4xMi4yMDIwIDA5OjQyLCBWaXJlc2ggS3VtYXIg
0L/QuNGI0LXRgjoKPiA+Pj4gT24gMTctMTItMjAsIDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3Jv
dGU6Cj4gPj4+PiBBZGQgYSBjZWlsIHZlcnNpb24gb2YgdGhlIGRldl9wbV9vcHBfZmluZF9sZXZl
bCgpLiBJdCdzIGhhbmR5IHRvIGhhdmUgaWYKPiA+Pj4+IGxldmVscyBkb24ndCBzdGFydCBmcm9t
IDAgaW4gT1BQIHRhYmxlIGFuZCB6ZXJvIHVzdWFsbHkgbWVhbnMgYSBtaW5pbWFsCj4gPj4+PiBs
ZXZlbC4KPiA+Pj4+Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0
eEBnbWFpbC5jb20+Cj4gPj4+Cj4gPj4+IFdoeSBkb2Vzbid0IHRoZSBleGFjdCB2ZXJzaW9uIHdv
cmsgZm9yIHlvdSBoZXJlID8KPiA+Pj4KPiA+Pgo+ID4+IFRoZSBleGFjdCB2ZXJzaW9uIHdvbid0
IGZpbmQgT1BQIGZvciBsZXZlbD0wIGlmIGxldmVscyBkb24ndCBzdGFydCB3aXRoCj4gPj4gMCwg
d2hlcmUgMCBtZWFucyB0aGF0IG1pbmltYWwgbGV2ZWwgaXMgZGVzaXJlZC4KPiA+IAo+ID4gUmln
aHQsIGJ1dCB3aHkgZG8geW91IG5lZWQgdG8gc2VuZCAwIGZvciB5b3VyIHBsYXRmb3JtID8KPiA+
IAo+IAo+IFRvIHB1dCBwb3dlciBkb21haW4gaW50byB0aGUgbG93ZXN0IHBlcmZvcm1hbmNlIHN0
YXRlIHdoZW4gZGV2aWNlIGlzIGlkbGluZy4KCkkgc2VlLiBTbyB5b3UgcmVhbGx5IHdhbnQgdG8g
c2V0IGl0IHRvIHRoZSBsb3dlc3Qgc3RhdGUgb3IganVzdCB0YWtlIHRoZSB2b3RlCm91dCA/IFdo
aWNoIG1heSBlbmQgdXAgcG93ZXJpbmcgb2ZmIHRoZSBkb21haW4gaW4gdGhlIHdvcnN0IGNhc2Ug
PwoKLS0gCnZpcmVzaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
