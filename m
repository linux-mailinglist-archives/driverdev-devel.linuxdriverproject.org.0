Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A27742B11B8
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 23:37:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 224AF2038D;
	Thu, 12 Nov 2020 22:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJ-QMcXRm0+B; Thu, 12 Nov 2020 22:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A68B20348;
	Thu, 12 Nov 2020 22:37:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C6201BF41F
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 22:37:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 27C258701C
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 22:37:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zaEYWRpJG9M8 for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 22:37:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3270786FAD
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 22:37:05 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id d17so10882270lfq.10
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 14:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0qni2M87D+g89wV73PaUfeJOYq05vtoVkWdsLrYHeyg=;
 b=kdYppoKFHiS9XKa3FhxlKioia9DpxhoAMnLvX3xxwUDyqIiDJ3HHl3IBW6p/6Hppgr
 R1rrlU57Zy6cPF2EoCyeH+Vj7DtGbdUur/qeOJ5iivsuZWhBfoFYLANqy8A0ZN/hIbOC
 hzMjgk+HOAKRJgwRKfqTFbsQQCm6O1j9Mk2vhjV5UCip2XhLqD1SR0a/iBKgVIIdZ89E
 BYwaMCRnu8T3dfsnrarFGvnrKog6t/XXpNu/IZPXfANecW0enI19tvf+dIatOgQDZ7OK
 TcsqlEJ0qKXLVGEQoZ/auOTRSu/cyJMRmB++w+tQm6Fjk+QGvmxT/rVGMvqP4kLUagKK
 crgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0qni2M87D+g89wV73PaUfeJOYq05vtoVkWdsLrYHeyg=;
 b=aWW3l1rT2yPX59Mz0yGxjfxzoNj/7XVqN+eoFB9xbZxDuBDiozoWQ0n2XZG6di219h
 9kvGPIwl0M53SdxS35qVF0iiVkDHKN4hdVTyjhE+/+5cYaSDR7vC0/B3PQc0pCGfCjt+
 WGSdJr06/VhW90V5SWWaElr0VLLDKxclHR1PMf8DwQslkBbnBA8jRuz860N+5qk4Faiu
 nI4fZ87gL7TEUrI+0GSYwl8br2wcgAmRPePpwTMXgJNL1QpjfEw4FJgS3B8RsYaeN/HF
 ZpJ4zi6lASD9y2mxJFgkV+sAzOu0TB4kZkWdzrsuxGfkUfBxfBQfRztibRerzU5sLTna
 8Lag==
X-Gm-Message-State: AOAM532zwm2GlU+E/l3uLdxVK7nP3iuQnptLMJhXeoV1XUOpQAsCVDIG
 bQFh/a5K1Vf9/C+N7jQHIrA=
X-Google-Smtp-Source: ABdhPJz14sMvD+lHcp3Whn12ApfHxx9o6IGlXRIpcfSRQR0C4MBfRBbzrGgqZKxBnQTJLRiZ9wpHOA==
X-Received: by 2002:a05:6512:3312:: with SMTP id
 k18mr654537lfe.403.1605220623351; 
 Thu, 12 Nov 2020 14:37:03 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id 1sm981505lfi.263.2020.11.12.14.37.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Nov 2020 14:37:02 -0800 (PST)
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
To: Mark Brown <broonie@kernel.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-12-digetx@gmail.com> <20201110202945.GF2375022@ulmo>
 <20201110203257.GC5957@sirena.org.uk>
 <72ae6462-13df-9fcb-510e-8e57eee0f035@gmail.com>
 <20201111115534.GA4847@sirena.org.uk>
 <dd26eb18-8ac4-22a6-29b0-dbbe5fa6075b@gmail.com>
 <20201112171600.GD4742@sirena.org.uk>
 <b4b06c1d-c9d4-43b2-c6eb-93f8cb6c677d@gmail.com>
 <20201112200123.GF4742@sirena.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <ce9e2d9f-917e-fb8a-7323-f3bf1a367e9d@gmail.com>
Date: Fri, 13 Nov 2020 01:37:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201112200123.GF4742@sirena.org.uk>
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

MTIuMTEuMjAyMCAyMzowMSwgTWFyayBCcm93biDQv9C40YjQtdGCOgo+PiBCdXQgaXQncyBub3Qg
YWxsb3dlZCB0byBjaGFuZ2Ugdm9sdGFnZSBvZiBhIGR1bW15IHJlZ3VsYXRvciwgaXMgaXQKPj4g
aW50ZW50aW9uYWw/Cj4gT2YgY291cnNlIG5vdCwgd2UgY2FuJ3Qga25vdyBpZiB0aGUgcmVxdWVz
dGVkIG5ldyB2b2x0YWdlIGlzIHZhbGlkIC0gdGhlCj4gZHJpdmVyIHdvdWxkIGhhdmUgdG8gaGF2
ZSBleHBsaWN0IHN1cHBvcnQgZm9yIGhhbmRsaW5nIHNpdHVhdGlvbnMgd2hlcmUKPiBpdCdzIG5v
dCBwb3NzaWJsZSB0byBjaGFuZ2UgdGhlIHZvbHRhZ2UgKHdoaWNoIGl0IGNhbiBkZXRlY3QgdGhy
b3VnaAo+IGVudW1lcmF0aW5nIHRoZSB2YWx1ZXMgaXQgd2FudHMgdG8gc2V0IGF0IHN0YXJ0dXAp
Lgo+IAo+IFtSZXF1ZXN0aW5nIHRoZSBzYW1lIHN1cHBseSBtdWx0aXBsZSB0aW1lc10KCkJ1dCBo
b3cgZHJpdmVyIGlzIHN1cHBvc2VkIHRvIHJlY29nbml6ZSB0aGF0IGl0J3MgYSBkdW1teSBvciBi
dWdneQpyZWd1bGF0b3IgaWYgaXQgcmVqZWN0cyBhbGwgdm9sdGFnZXM/Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
