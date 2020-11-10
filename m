Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 878F82AE19E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 22:23:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B31F23077;
	Tue, 10 Nov 2020 21:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FyRQMH1NwRCY; Tue, 10 Nov 2020 21:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 05DA72309D;
	Tue, 10 Nov 2020 21:23:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C8611BF3C2
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78C07871FE
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8AWbVG0Owesl for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 21:23:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 508D2871DC
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 21:23:45 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id i6so201510lfd.1
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 13:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=z3y2+cM5+FqYhQiui9sx/NyVq3rbzN6lwK3hqYhLaV8=;
 b=MW7uaSPUscsvLgXHTARFkRHWLwcumbFgh/LvDj5UKi+RX8auOx189mq2TdUmSsRTNi
 XRn4kbwyuLHjtSYaHwe+spIMfuNWREoRSQl6/bBzCt2bgTA+kpefEAHIuAZonduQ4l+g
 boLidEBfR0POZlIShVqthNjwQRWsm8yKic8lAIVEbN1P1xWEDJvlT8mHP1yNXcudhsTQ
 NwLdoSYLmCTwy8iOSWENTf2hnQlDzEZVLZ0k3G26fETZVVs3Gtz6DL86Q9wj+mQAUQYw
 dZ5ZkUU0jA7OLM1kL0DCUAatZ5ABr+OPjrZDaTqVyRlDanl6LP0kTq90IsKr6kgrNGY/
 G3qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z3y2+cM5+FqYhQiui9sx/NyVq3rbzN6lwK3hqYhLaV8=;
 b=Wl1rRorGUdOOpoMGLu6K85yymY3cBHSw/29ExRU2vJnfcYW1IYFcCeuIK9YhGUfCsz
 muTwJcC8NrtGf+EXqUbhfPBfzTSkgNN3GFXSEGLa9fG2bLqRKZhsdd5JtR9pfcBRq/3/
 63kj9ou2erjAEcIHQZvGmJob7HTaokBVQJMQHRavagGYiP14EHQFzjTjROuN9qLGUUcl
 w4UO1cC7byxPaVgt0sP7FugWGyGeP7Enqq04VqKlUNJs7eGu4KLNrHFwk22eogb8AQLS
 c7Q4AW3Odnr1XjVvPRHrjLrlpxJpPL1hpnTjVqlnTMJA1Wy4pAdP+JtZ+iqk20GQnZRd
 O8kQ==
X-Gm-Message-State: AOAM5305eUx71NJx20uCEBwUqvEMpy7hknCr6JPmuTv0wozPK6mHUFcM
 X7tbPgF/Q7c4kU8ix7AVzsQ=
X-Google-Smtp-Source: ABdhPJxu+BBnt3e7PE9coUJuXY67nqcK2aWRMSusUxlgbN4K8B9Bg3GI+cjuRM7DUdJ8ilqOcn0l0Q==
X-Received: by 2002:ac2:46f3:: with SMTP id q19mr872398lfo.76.1605043423538;
 Tue, 10 Nov 2020 13:23:43 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id b25sm6087lfa.32.2020.11.10.13.23.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 13:23:42 -0800 (PST)
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
To: Mark Brown <broonie@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-12-digetx@gmail.com> <20201110202945.GF2375022@ulmo>
 <20201110203257.GC5957@sirena.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <72ae6462-13df-9fcb-510e-8e57eee0f035@gmail.com>
Date: Wed, 11 Nov 2020 00:23:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201110203257.GC5957@sirena.org.uk>
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
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTAuMTEuMjAyMCAyMzozMiwgTWFyayBCcm93biDQv9C40YjQtdGCOgo+IE9uIFR1ZSwgTm92IDEw
LCAyMDIwIGF0IDA5OjI5OjQ1UE0gKzAxMDAsIFRoaWVycnkgUmVkaW5nIHdyb3RlOgo+PiBPbiBU
aHUsIE5vdiAwNSwgMjAyMCBhdCAwMjo0NDowOEFNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3Jv
dGU6Cj4gCj4+PiArCS8qCj4+PiArCSAqIFZvbHRhZ2Ugc2NhbGluZyBpcyBvcHRpb25hbCBhbmQg
dHJ5aW5nIHRvIHNldCB2b2x0YWdlIGZvciBhIGR1bW15Cj4+PiArCSAqIHJlZ3VsYXRvciB3aWxs
IGVycm9yIG91dC4KPj4+ICsJICovCj4+PiArCWlmICghZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQo
ZGMtPmRldiwgImNvcmUtc3VwcGx5IikpCj4+PiArCQlyZXR1cm47Cj4gCj4+IFRoaXMgaXMgYSBw
b3RlbnRpYWxseSBoZWF2eSBvcGVyYXRpb24sIHNvIEkgdGhpbmsgd2Ugc2hvdWxkIGF2b2lkIHRo
YXQKPj4gaGVyZS4gSG93IGFib3V0IHlvdSB1c2UgZGV2bV9yZWd1bGF0b3JfZ2V0X29wdGlvbmFs
KCkgaW4gLT5wcm9iZSgpPyBUaGF0Cj4+IHJldHVybnMgLUVOT0RFViBpZiBubyByZWd1bGF0b3Ig
d2FzIHNwZWNpZmllZCwgaW4gd2hpY2ggY2FzZSB5b3UgY2FuIHNldAo+PiBkYy0+Y29yZV9yZWcg
PSBOVUxMIGFuZCB1c2UgdGhhdCBhcyB0aGUgY29uZGl0aW9uIGhlcmUuCj4gCj4gT3IgZW51bWVy
YXRlIHRoZSBjb25maWd1cmFibGUgdm9sdGFnZXMgYWZ0ZXIgZ2V0dGluZyB0aGUgcmVndWxhdG9y
IGFuZAo+IGhhbmRsZSB0aGF0IGFwcHJvcHJpYXRlbHkgd2hpY2ggd291bGQgYmUgbW9yZSByb2J1
c3QgaW4gY2FzZSB0aGVyZSdzCj4gbWlzc2luZyBvciB1bnVzdWFsIGNvbnN0cmFpbnRzLgo+IAoK
SSBhbHJlYWR5IGNoYW5nZWQgdGhhdCBjb2RlIHRvIHVzZSByZWd1bGF0b3JfZ2V0X29wdGlvbmFs
KCkgZm9yIHYyLgoKUmVnYXJkaW5nIHRoZSBlbnVtZXJhdGluZyBzdXBwb3J0ZWQgdm9sdGFnZS4u
IEkgdGhpbmsgdGhpcyBzaG91bGQgYmUKZG9uZSBieSB0aGUgT1BQIGNvcmUsIGJ1dCByZWd1bGF0
b3IgY29yZSBkb2Vzbid0IHdvcmsgd2VsbCBpZgpyZWd1bGF0b3JfZ2V0KCkgaXMgaW52b2tlZCBt
b3JlIHRoYW4gb25lIHRpbWUgZm9yIHRoZSBzYW1lIGRldmljZSwgYXQKbGVhc3QgdGhlcmUgaXMg
YSBsb3VkIGRlYnVnZnMgd2FybmluZyBhYm91dCBhbiBhbHJlYWR5IGV4aXN0aW5nCmRpcmVjdG9y
eSBmb3IgYSByZWd1bGF0b3IuIEl0J3MgZWFzeSB0byBjaGVjayB3aGV0aGVyIHRoZSBkZWJ1Zwpk
aXJlY3RvcnkgZXhpc3RzIGJlZm9yZSBjcmVhdGluZyBpdCwgbGlrZSB0aGVybWFsIGZyYW1ld29y
ayBkb2VzIGl0IGZvcgpleGFtcGxlLCBidXQgdGhlbiB0aGVyZSB3ZXJlIHNvbWUgb3RoZXIgbW9y
ZSBkaWZmaWN1bHQgaXNzdWVzLi4gSSBkb24ndApyZWNhbGwgd2hhdCB0aGV5IHdlcmUgcmlnaHQg
bm93LiBQZXJoYXBzIHdpbGwgYmUgZWFzaWVyIHRvIHNpbXBseSBnZXQgYQplcnJvciBmcm9tIHJl
Z3VsYXRvcl9zZXRfdm9sdGFnZSgpIGZvciBub3cgYmVjYXVzZSBpdCBzaG91bGRuJ3QgZXZlcgpo
YXBwZW4gaW4gcHJhY3RpY2UsIHVubGVzcyBkZXZpY2UtdHJlZSBoYXMgd3JvbmcgY29uc3RyYWlu
dHMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
