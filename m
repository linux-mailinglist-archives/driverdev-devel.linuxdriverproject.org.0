Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413702B21B4
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 18:14:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C54DF87920;
	Fri, 13 Nov 2020 17:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 61di2VZd9nFV; Fri, 13 Nov 2020 17:14:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 398CC878E7;
	Fri, 13 Nov 2020 17:14:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A18F1BF990
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 17:13:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 928EB2043B
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 17:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4cZaND70qKgi for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 17:13:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 913DA20243
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 17:13:56 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id i17so10484404ljd.3
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 09:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uHdzUd8NUNc0lpDwmppHgQMHGeLwwBEPsQiuUdFVMn0=;
 b=Vf9aLrdMygr+pSOB4syQyMMFa9s3Y8gg9aPfdkjSqO0uUp6X42pZjw6A0oiO8Qo79g
 VMYB6KWyUWYTFP9RCfvpj6vzwpPwW2W6oCelyU8g7orM2z47YMOnDHg3C2g50zzfEusG
 nqvrEWPVjXN4vLqhpx0/KIK4pqj8V71LUjcbnFJPdOHtrUJArcFLXTfdV2HqqJ/fhuLd
 vr4HQXG4TCfqEDnWPBvTd1hixQrQx+II8BCVSHa4t4TrMZyTNIez047wBg702EUCXj6X
 1iA+hxDZ1SNCWmtV7FjSRYfemkBuFRiPD2NRufuDZeWZswgy5d+Dy8jmCiBsIO+6SJAx
 soQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uHdzUd8NUNc0lpDwmppHgQMHGeLwwBEPsQiuUdFVMn0=;
 b=X5zii+mthunSGAltKvJqZ9aPdA/gyRZKh6oxf/vIxypfupLj6OBrU8QW4hK+oRnJla
 U3Tz77WU8XbBsJ/bMxQgbtBU4ZKcehWcjMmudfULUqpk491V4OxTnqfBd97WIiBbq6m4
 osT0gTeUHTm+o2Q7AUqdHnxdf7WqLyHRQPL63U4sFnhInvrNSM4xg9zZdNKsGlzcxn6T
 r07Mo9yK8zfptcjxJS/f9je0p8qCw46MgikIMgUPW2moH0fLpyTTJvEmEUQDmFaFRBFC
 gBcCZcZMdgmhzoAtVnxVyjooXLOFlEf5Y8aNkiNXn1yPR5Efxb6hbIHrvgAZUiAbUAbM
 toVA==
X-Gm-Message-State: AOAM532glFyXdDuLXl/RTdYhvnZb/40MVDItXOr0vdOgR598pSQ7LPmh
 4oWrxBAfQWed4dlbXtuU6cI=
X-Google-Smtp-Source: ABdhPJyHpSg50GBIXMPXL7aP9qtANQ43u803+eBAONtCmTaJb6C6zR3PWcQF6qlWhad3UtWFiD81wQ==
X-Received: by 2002:a2e:3503:: with SMTP id z3mr1395526ljz.70.1605287631533;
 Fri, 13 Nov 2020 09:13:51 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id e10sm1617281lfn.115.2020.11.13.09.13.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Nov 2020 09:13:50 -0800 (PST)
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
To: Mark Brown <broonie@kernel.org>
References: <20201110203257.GC5957@sirena.org.uk>
 <72ae6462-13df-9fcb-510e-8e57eee0f035@gmail.com>
 <20201111115534.GA4847@sirena.org.uk>
 <dd26eb18-8ac4-22a6-29b0-dbbe5fa6075b@gmail.com>
 <20201112171600.GD4742@sirena.org.uk>
 <b4b06c1d-c9d4-43b2-c6eb-93f8cb6c677d@gmail.com>
 <20201112200123.GF4742@sirena.org.uk>
 <ce9e2d9f-917e-fb8a-7323-f3bf1a367e9d@gmail.com>
 <20201113142937.GB4828@sirena.org.uk>
 <7f066805-97d9-088f-e89d-a554fe478574@gmail.com>
 <20201113161550.GC4828@sirena.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3beaa12b-4a50-a3b6-fc43-ebb5ce7a8db7@gmail.com>
Date: Fri, 13 Nov 2020 20:13:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201113161550.GC4828@sirena.org.uk>
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
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTMuMTEuMjAyMCAxOToxNSwgTWFyayBCcm93biDQv9C40YjQtdGCOgo+IE9uIEZyaSwgTm92IDEz
LCAyMDIwIGF0IDA2OjU1OjI3UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gMTMu
MTEuMjAyMCAxNzoyOSwgTWFyayBCcm93biDQv9C40YjQtdGCOgo+IAo+Pj4gSXQncyBub3QgY2xl
YXIgaWYgaXQgbWF0dGVycyAtIGl0J3MgbW9yZSBhIHBvbGljeSBkZWNpc2lvbiBvbiB0aGUgcGFy
dAo+Pj4gb2YgdGhlIGRyaXZlciBhYm91dCB3aGF0IGl0IHRoaW5rcyBzYWZlIGVycm9yIGhhbmRs
aW5nIGlzLiAgSWYgaXQncyBub3QKPiAKPj4gSWYgcmVndWxhdG9yX2dldCgpIHJldHVybnMgYSBk
dW1teSByZWd1bGF0b3IsIHRoZW4gdGhpcyBtZWFucyB0aGF0Cj4+IHJlZ3VsYXRvciBpc24ndCBz
cGVjaWZpZWQgaW4gYSBkZXZpY2UtdHJlZS4gQnV0IHRoZW4gdGhlIG9ubHkgd2F5IGZvciBhCj4+
IGNvbnN1bWVyIGRyaXZlciB0byBjaGVjayB3aGV0aGVyIHJlZ3VsYXRvciBpcyBkdW1teSwgaXMg
dG8gY2hlY2sKPj4gcHJlc2VuY2Ugb2YgdGhlIHN1cHBseSBwcm9wZXJ0eSBpbiBhIGRldmljZS10
cmVlLgo+IAo+IE15IHBvaW50IGhlcmUgaXMgdGhhdCB0aGUgZHJpdmVyIHNob3VsZG4ndCBiZSBj
aGVja2luZyBmb3IgYSBkdW1teQo+IHJlZ3VsYXRvciwgdGhlIGRyaXZlciBzaG91bGQgYmUgY2hl
Y2tpbmcgdGhlIGZlYXR1cmVzIHRoYXQgYXJlIHByb3ZpZGVkCj4gdG8gaXQgYnkgdGhlIHJlZ3Vs
YXRvciBhbmQgaGFuZGxpbmcgdGhvc2UuCgpJIHVuZGVyc3RhbmQgeW91cnMgcG9pbnQsIGJ1dCB0
aGVuIHdlIG5lZWQgZHVtbXkgcmVndWxhdG9yIHRvIHByb3ZpZGUKYWxsIHRoZSBmZWF0dXJlcywg
YW5kIGN1cnJlbnRseSBpdCBkb2VzIHRoZSBvcHBvc2l0ZS4KCj4gSXQgZG9lc24ndCBtYXR0ZXIg
aWYgdGhpcyBpcwo+IGEgZHVtbXkgcmVndWxhdG9yIG9yIGFuIGFjdHVhbCByZWd1bGF0b3Igd2l0
aCBsaW1pdGVkIGZlYXR1cmVzLCB0aGUKPiBlZmZlY3QgaXMgdGhlIHNhbWUgYW5kIHRoZSBoYW5k
bGluZyBzaG91bGQgYmUgdGhlIHNhbWUuICBJZiB0aGUgZHJpdmVyCj4gaXMgZG9pbmcgYW55dGhp
bmcgdG8gaGFuZGxlIGR1bW15IHJlZ3VsYXRvcnMgZXhwbGljaXRseSBhcyBkdW1teQo+IHJlZ3Vs
YXRvcnMgaXQgaXMgZG9pbmcgaXQgd3JvbmcuCgpJdCBtYXR0ZXJzIGJlY2F1c2UgZHVtbXkgcmVn
dWxhdG9yIGVycm9ycyBvdXQgYWxsIGNoZWNrcyBhbmQgY2hhbmdlcwpvdGhlciB0aGFuIGVuYWJs
ZS9kaXNhYmxlLCBpbnN0ZWFkIG9mIGFjY2VwdGluZyB0aGVtLiBJZiB3ZSBjb3VsZCBhZGQgYW4K
b3B0aW9uIGZvciBkdW1teSByZWd1bGF0b3IgdG8gc3VjY2VlZCBhbGwgdGhlIGNoZWNrcyBhbmQg
YWNjZXB0IGFsbCB0aGUKdmFsdWVzLCB0aGVuIGl0IGNvdWxkIGJlY29tZSBtb3JlIHVzYWJsZS4K
Cj4+IFdlIHdhbnQgdG8gZW1pdCBlcnJvciBtZXNzYWdlcyB3aGVuIHNvbWV0aGluZyBnb2VzIHdy
b25nLCBmb3IgZXhhbXBsZQo+PiB3aGVuIHJlZ3VsYXRvciB2b2x0YWdlIGZhaWxzIHRvIGNoYW5n
ZS4gSXQncyBmaW5lIHRoYXQgdm9sdGFnZSBjaGFuZ2VzCj4+IGFyZSBmYWlsaW5nIGZvciBhIGR1
bW15IHJlZ3VsYXRvciwgYnV0IHRoZW4gY29uc3VtZXIgZHJpdmVyIHNob3VsZG4ndAo+PiByZWNv
Z25pemUgaXQgYXMgYSBlcnJvciBjb25kaXRpb24uCj4gCj4gSWYgeW91J3JlIGZpbmUgd2l0aCB0
aGF0IHlvdSBzaG91bGQgYWxzbyBiZSBmaW5lIHdpdGggYW55IG90aGVyCj4gcmVndWxhdG9yIGZv
ciB3aGljaCB5b3UgZmFpbGVkIHRvIGVudW1lcmF0ZSBhbnkgdm9sdGFnZXMgd2hpY2ggeW91IGNh
bgo+IHNldC4KCkl0J3Mgbm90IGZpbmUuCgpJbiB0aGUgY2FzZSBvZiB0aGlzIGRyaXZlciB0aGUg
ZHVtbXkgcmVndWxhdG9yIHNob3VsZCBzdWNjZWVkIGluc3RlYWQgb2YKZmFpbGluZy4KCj4+IFRo
ZSByZWd1bGF0b3JfZ2V0X29wdGlvbmFsKCkgcHJvdmlkZXMgYSBtb3JlIGNvbnNpc3RlbnQgYW5k
Cj4+IHN0cmFpZ2h0Zm9yd2FyZCB3YXkgZm9yIGNvbnN1bWVyIGRyaXZlcnMgdG8gY2hlY2sgcHJl
c2VuY2Ugb2YgYSBwaHlzaWNhbAo+PiB2b2x0YWdlIHJlZ3VsYXRvciBpbiBjb21wYXJpc29uIHRv
IGRlYWxpbmcgd2l0aCBhIHJlZ3VsYXRvcl9nZXQoKS4gVGhlCj4+IGR1bW15IHJlZ3VsYXRvciBp
cyBuaWNlIHRvIHVzZSB3aGVuIHRoZXJlIGlzIG5vIG5lZWQgdG8gY2hhbmdlCj4+IHJlZ3VsYXRv
cidzIHZvbHRhZ2UsIHdoaWNoIGRvZXNuJ3Qgd29yayBmb3IgYSBkdW1teSByZWd1bGF0b3IuCj4g
Cj4gVG8gcmVwZWF0IHlvdSBzaG91bGQgKm9ubHkqIGJlIHVzaW5nIHJlZ3VsYXRvcl9nZXRfb3B0
aW9uYWwoKSBpbiB0aGUKPiBjYXNlIHdoZXJlIHRoZSBzdXBwbHkgbWF5IGJlIHBoeXNpY2FsbHkg
YWJzZW50IHdoaWNoIGlzIG5vdCB0aGUgY2FzZQo+IGhlcmUuCj4gCgpBbHJpZ2h0LCBidXQgdGhl
biB3ZSBlaXRoZXIgbmVlZCB0byBpbXByb3ZlIHJlZ3VsYXRvciBjb3JlIHRvIG1ha2UgZHVtbXkK
cmVndWxhdG9yIGEgYml0IG1vcmUgdXNhYmxlLCBvciBjb250aW51ZSB0byB3b3JrIGFyb3VuZCBp
dCBpbiBkcml2ZXJzLgpXaGF0IHNob3VsZCB3ZSBkbz8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
