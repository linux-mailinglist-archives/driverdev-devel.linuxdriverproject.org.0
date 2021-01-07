Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3A22EE63F
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jan 2021 20:39:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A59A8874E1;
	Thu,  7 Jan 2021 19:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbrDDlGQLjFE; Thu,  7 Jan 2021 19:39:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 267BF874C9;
	Thu,  7 Jan 2021 19:39:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82FCD1BF41A
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 19:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D89A874D2
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 19:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vAOx8KEpFGv2 for <devel@linuxdriverproject.org>;
 Thu,  7 Jan 2021 19:39:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A2E6B87405
 for <devel@driverdev.osuosl.org>; Thu,  7 Jan 2021 19:39:12 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id b26so17322640lff.9
 for <devel@driverdev.osuosl.org>; Thu, 07 Jan 2021 11:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ffFy7U5GHTO2EDTarXBfsvng3yi/U0HlVmDD4XbAyvk=;
 b=Wyed8+zva/LYFJ10gJQ7x+ViNyXTsElCtmMUOpgTb/1YDegkPcwMsRWfb6bnPT+iKb
 yyIaGP48HD/upBYUEQjlmhnaGmrTDy9me1CdAxCQI1Rt9cCh1vfk83W55UpQWTrfx4fq
 on3q+XX+gRqs1lF4J6Dzk0wEr9tXNiH+ySbd07plWndwWUiv4F0ykGda/gBwJEg5vYOK
 ATsgATXXNyU6xMDyYcnyAnQ213ZoX/ZXl6yf3ac43tSt0qdPngmmF29bG1+eUDSwgUw1
 AzFECZcWDk9At66ZrGB8CFVrd2+qabP6np+CVOMLQJhpLToWrA6wWVQzNGJpmAyDhR53
 AsKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ffFy7U5GHTO2EDTarXBfsvng3yi/U0HlVmDD4XbAyvk=;
 b=uWZJ/rNvDTx7+glNEgrX+vVtMBfjW+cZGfIi8/L57TDZ1KxRI7ls/lMhtckPnuXDf9
 +7FvaLncWPov9aHSyLIiux4gmFRx5rnOqvSzMAp8YL5Qp9xuqjdBR+0tNSSRL1Bm5jFz
 x5L6J0aGe5GyU7T9B/TJZX+goNXowigXnm6Fw5CIcLeAdmr3qXy9jZZ9ZazujkwHENQJ
 LhW9W6Z9/i3UHVwu07/WF8VS1+wlx0GhGe8hfrnDW3HJQq4ZqvqdyDE5pHp2Hz8y8Mie
 m1tT5tp9KOn6vP67vGUpXw7+TRA9JbEvIToypdDBIKEFhcxKrQrfTmhHNlaNckOLdD7H
 vspw==
X-Gm-Message-State: AOAM533W6i/iNoBEGvvSDGFLOPzxtoq0w4m2lEqARMjGZjff8jtk5xse
 p3myGw4ioXeY41XVQVYuBC4=
X-Google-Smtp-Source: ABdhPJwcjsVwi672lMyB3VRDqyLku+RskEcHu3FcswkJW1KB+hkV/1FIv9p7umOsoz2IRKSWh6yzhA==
X-Received: by 2002:a19:230d:: with SMTP id j13mr148331lfj.378.1610048350619; 
 Thu, 07 Jan 2021 11:39:10 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id q21sm1369032lff.280.2021.01.07.11.39.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Jan 2021 11:39:09 -0800 (PST)
Subject: Re: [PATCH v2 00/48] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20210105171111.GC26301@kozik-lap>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <988cf951-ff81-4b48-6baf-b393bd1613d2@gmail.com>
Date: Thu, 7 Jan 2021 22:39:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20210105171111.GC26301@kozik-lap>
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
 Viresh Kumar <vireshk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDUuMDEuMjAyMSAyMDoxMSwgS3J6eXN6dG9mIEtvemxvd3NraSDQv9C40YjQtdGCOgo+IE9uIFRo
dSwgRGVjIDE3LCAyMDIwIGF0IDA5OjA1OjUwUE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90
ZToKPj4gSW50cm9kdWNlIGNvcmUgdm9sdGFnZSBzY2FsaW5nIGZvciBOVklESUEgVGVncmEyMC8z
MCBTb0NzLCB3aGljaCByZWR1Y2VzCj4+IHBvd2VyIGNvbnN1bXB0aW9uIGFuZCBoZWF0aW5nIG9m
IHRoZSBUZWdyYSBjaGlwcy4gVGVncmEgU29DIGhhcyBtdWx0aXBsZQo+PiBoYXJkd2FyZSB1bml0
cyB3aGljaCBiZWxvbmcgdG8gYSBjb3JlIHBvd2VyIGRvbWFpbiBvZiB0aGUgU29DIGFuZCBzaGFy
ZQo+PiB0aGUgY29yZSB2b2x0YWdlLiBUaGUgdm9sdGFnZSBtdXN0IGJlIHNlbGVjdGVkIGluIGFj
Y29yZGFuY2UgdG8gYSBtaW5pbXVtCj4+IHJlcXVpcmVtZW50IG9mIGV2ZXJ5IGNvcmUgaGFyZHdh
cmUgdW5pdC4KPj4KPj4gVGhlIG1pbmltdW0gY29yZSB2b2x0YWdlIHJlcXVpcmVtZW50IGRlcGVu
ZHMgb246Cj4+Cj4+ICAgMS4gQ2xvY2sgZW5hYmxlIHN0YXRlIG9mIGEgaGFyZHdhcmUgdW5pdC4K
Pj4gICAyLiBDbG9jayBmcmVxdWVuY3kuCj4+ICAgMy4gVW5pdCdzIGludGVybmFsIGlkbGluZy9h
Y3RpdmUgc3RhdGUuCj4+Cj4+IFRoaXMgc2VyaWVzIGlzIHRlc3RlZCBvbiBBY2VyIEE1MDAgKFQy
MCksIEFDMTAwIChUMjApLCBOZXh1cyA3IChUMzApLAo+PiBPdXlhIChUMzApLCBUSzEgKFQxMjQp
IGFuZCBzb21lIG90aGVycy4gSSBhbHNvIGFkZGVkIHZvbHRhZ2Ugc2NhbGluZyB0bwo+PiB0aGUg
VmVudGFuYSAoVDIwKSBhbmQgQ2FyZGh1IChUMzApIGJvYXJkcyB3aGljaCBhcmUgdGVzdGVkIGJ5
IE5WSURJQSdzIENJCj4+IGZhcm0uIFRlZ3JhMzAgaXMgbm93IGNvdXBsZSBkZWdyZWVzIGNvb2xl
ciBvbiBOZXh1cyA3IGFuZCBzdGF5cyBjb29sIG9uCj4+IE91eWEgKGluc3RlYWQgb2YgYmVjb21p
bmcgYnVybmluZyBob3QpIHdoaWxlIHN5c3RlbSBpcyBpZGxpbmcuIEl0IHNob3VsZAo+PiBiZSBw
b3NzaWJsZSB0byBpbXByb3ZlIHRoaXMgZnVydGhlciBieSBpbXBsZW1lbnRpbmcgYSBtb3JlIGFk
dmFuY2VkIHBvd2VyCj4+IG1hbmFnZW1lbnQgZmVhdHVyZXMgZm9yIHRoZSBrZXJuZWwgZHJpdmVy
cy4KPj4KPj4gVGhlIERWRlMgc3VwcG9ydCBpcyBvcHQtaW4gZm9yIGFsbCBib2FyZHMsIG1lYW5p
bmcgdGhhdCBvbGRlciBEVEJzIHdpbGwKPj4gY29udGludWUgdG8gd29yayBsaWtlIHRoZXkgZGlk
IGl0IGJlZm9yZSB0aGlzIHNlcmllcy4gSXQgc2hvdWxkIGJlIHBvc3NpYmxlCj4+IHRvIGVhc2ls
eSBhZGQgdGhlIGNvcmUgdm9sdGFnZSBzY2FsaW5nIHN1cHBvcnQgZm9yIFRlZ3JhMTE0KyBTb0Nz
IGJhc2VkIG9uCj4+IHRoaXMgZ3JvdW5kaW5nIHdvcmsgbGF0ZXIgb24sIGlmIGFueW9uZSB3aWxs
IHdhbnQgdG8gaW1wbGVtZW50IGl0Lgo+IAo+IFRoZSBzYW1lIGNvbW1lbnQgYXMgZm9yIHlvdXIg
aW50ZXJjb25uZWN0IHdvcms6IGZvciBzZXRzIHRvdWNoaW5nCj4gbXVsdGlwbGUgc3lzdGVtcyBw
bGVhc2UgbWVudGlvbiB0aGUgZGVwZW5kZW5jaWVzIGJldHdlZW4gcGF0Y2hlcyBpbiB0aGUKPiBj
b3ZlciBsZXR0ZXIuIE5vdCBhcyBhIHJlcGx5IHRvIHN1Y2ggcmVtYXJrIGxpa2UgSSBtYWtlIGhl
cmUsIGJ1dCBhcyBhCj4gc2VwYXJhdGUgZW50cnkgaW4gdGhlIGNvdmVyIGxldHRlci4KCkknbGwg
ZGVzY3JpYmUgYWxsIHRoZSBkZXBlbmRlbmNpZXMgaW4gdGhlIG5leHQgcmV2aXNpb24sIHRoYW5r
cy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
