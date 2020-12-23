Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD88E2E2167
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 21:36:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDAD9869D5;
	Wed, 23 Dec 2020 20:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4N3klkb32uhs; Wed, 23 Dec 2020 20:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E92E86945;
	Wed, 23 Dec 2020 20:36:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 267DE1BF86B
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 20:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2332F85F83
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 20:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3kNpNJZVbFCE for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 20:36:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C32C385AF1
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 20:36:32 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id s26so265391lfc.8
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 12:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=z8D0v9w6eLHS5d5x0vZY+QzqYtTC2mP/fYl8494giiU=;
 b=HadHxSMLhDZhkJqBkxDVtRCRHgzsranQMuvvPkCW8ZvWERI0I/IV3jmYhrnnUiBMI+
 7bhhS0TCu++x3528jZkIg0GBh93HvAHa4m5GFYkt4lut2M+43qdrkbdbQymCHGAvtZwS
 gPa9zaEGRLx854V8GzVDPvoNJd/vl09zAQV4+eIvWEF9DfOM/DN+IVabjMlyg7bFptR3
 peW/KIS0flnlEUh9OP1v+48hjIhLMv1IqpfCsHwsT5faZmJPdepA2s80mn0eUyUHOa0I
 zE3A8fT2QV1G2b1n/M8N0awGXrQEuf+3I6INY8xv14mX3oKWJIO6Mv1Ys47bGKcm+cBi
 Mqag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z8D0v9w6eLHS5d5x0vZY+QzqYtTC2mP/fYl8494giiU=;
 b=CyxyPgqD84oRenCWzdahP8UKBbSjAOSGBMVbeP/WTG+35oUzdSJF4sl41yUi31lqfq
 lPZNzMyYVn1BDQ4fjdYj5mUUvjAyspCfldFwemrku3ciBZgeiLM+dTi4wttZ28JXHoHB
 FNB2opHJ4Jght4DaQNYoiNgbQ81Ig5iwvLym0Ki0OSd3j/mSJal3CQh1gzqoXqxyEotL
 nuX8vLw3wycYiu7s/pscSe8gD21KS5Ia6IktD0Fcdg4fkRlNuaNU/Q5+4GRmUf3TSTMZ
 v5CrOq0gw/zTm57LvdUiu3lVL5xEzScr7iyHFrsVoAjV4eTeiKGhptUOWGKnS0keUV7Z
 jI9w==
X-Gm-Message-State: AOAM533sVvGLWpW3UwysjoEN9rhvc/l4xqnbVJKPP13UX55lHRBJZPwV
 KO4Bmx5Jd0WQSY330yNFZ1A=
X-Google-Smtp-Source: ABdhPJysbMlvfYnsC/QFSGO0Bwu3xJ1EeyAih0QH/oKOK6cjPT+k0t3f+Uj1mCTnFpE6RS2H9psSPA==
X-Received: by 2002:a2e:980f:: with SMTP id a15mr12009304ljj.301.1608755790793; 
 Wed, 23 Dec 2020 12:36:30 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id y20sm3658851lji.86.2020.12.23.12.36.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Dec 2020 12:36:30 -0800 (PST)
Subject: Re: [PATCH v2 19/48] opp: Fix adding OPP entries in a wrong order if
 rate is unavailable
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-20-digetx@gmail.com>
 <20201222091255.wentz5hyt726qezg@vireshk-i7>
 <db6273e6-8406-b7ae-b51d-48ceb6d21962@gmail.com>
 <20201223043443.rklw5er6hck3gl4y@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <7688d6b9-52a2-d30f-123f-43c01e03b968@gmail.com>
Date: Wed, 23 Dec 2020 23:36:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201223043443.rklw5er6hck3gl4y@vireshk-i7>
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

MjMuMTIuMjAyMCAwNzozNCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMjItMTItMjAs
IDIyOjE5LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDIyLjEyLjIwMjAgMTI6MTIsIFZpcmVz
aCBLdW1hciDQv9C40YjQtdGCOgo+Pj4gT24gMTctMTItMjAsIDIxOjA2LCBEbWl0cnkgT3NpcGVu
a28gd3JvdGU6Cj4+Pj4gRml4IGFkZGluZyBPUFAgZW50cmllcyBpbiBhIHdyb25nIChvcHBvc2l0
ZSkgb3JkZXIgaWYgT1BQIHJhdGUgaXMKPj4+PiB1bmF2YWlsYWJsZS4gVGhlIE9QUCBjb21wYXJp
c29uIGlzIGVycm9uZW91c2x5IHNraXBwZWQgaWYgT1BQIHJhdGUgaXMKPj4+PiBtaXNzaW5nLCB0
aHVzIE9QUHMgYXJlIGxlZnQgdW5zb3J0ZWQuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0
cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gIGRyaXZlcnMvb3Bw
L2NvcmUuYyB8IDIzICsrKysrKysrKysrKy0tLS0tLS0tLS0tCj4+Pj4gIGRyaXZlcnMvb3BwL29w
cC5oICB8ICAyICstCj4+Pj4gIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTIg
ZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9vcHAvY29yZS5jIGIv
ZHJpdmVycy9vcHAvY29yZS5jCj4+Pj4gaW5kZXggMzRmN2U1MzBkOTQxLi41YzdmMTMwYThkZTIg
MTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9vcHAvY29yZS5jCj4+Pj4gKysrIGIvZHJpdmVycy9v
cHAvY29yZS5jCj4+Pj4gQEAgLTE1MzEsOSArMTUzMSwxMCBAQCBzdGF0aWMgYm9vbCBfb3BwX3N1
cHBvcnRlZF9ieV9yZWd1bGF0b3JzKHN0cnVjdCBkZXZfcG1fb3BwICpvcHAsCj4+Pj4gIAlyZXR1
cm4gdHJ1ZTsKPj4+PiAgfQo+Pj4+ICAKPj4+PiAtaW50IF9vcHBfY29tcGFyZV9rZXkoc3RydWN0
IGRldl9wbV9vcHAgKm9wcDEsIHN0cnVjdCBkZXZfcG1fb3BwICpvcHAyKQo+Pj4+ICtpbnQgX29w
cF9jb21wYXJlX2tleShzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwMSwgc3RydWN0IGRldl9wbV9vcHAg
Km9wcDIsCj4+Pj4gKwkJICAgICBib29sIHJhdGVfbm90X2F2YWlsYWJsZSkKPj4+PiAgewo+Pj4+
IC0JaWYgKG9wcDEtPnJhdGUgIT0gb3BwMi0+cmF0ZSkKPj4+PiArCWlmICghcmF0ZV9ub3RfYXZh
aWxhYmxlICYmIG9wcDEtPnJhdGUgIT0gb3BwMi0+cmF0ZSkKPj4+Cj4+PiByYXRlIHdpbGwgYmUg
MCBmb3IgYm90aCB0aGUgT1BQcyBoZXJlIGlmIHJhdGVfbm90X2F2YWlsYWJsZSBpcyB0cnVlIGFu
ZCBzbyB0aGlzCj4+PiBjaGFuZ2Ugc2hvdWxkbid0IGJlIHJlcXVpcmVkLgo+Pgo+PiBUaGUgcmF0
ZV9ub3RfYXZhaWxhYmxlIGlzIG5lZ2F0ZWQgaW4gdGhlIGNvbmRpdGlvbi4gVGhpcyBjaGFuZ2Ug
aXMKPj4gcmVxdWlyZWQgYmVjYXVzZSBib3RoIHJhdGVzIGFyZSAwIGFuZCB0aGVuIHdlIHNob3Vs
ZCBwcm9jZWVkIHRvIHRoZQo+PiBsZXZlbHMgY29tcGFyaXNvbi4KPiAKPiBXb24ndCB0aGF0IGhh
cHBlbiB3aXRob3V0IHRoaXMgcGF0Y2ggPwoKTm8KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
