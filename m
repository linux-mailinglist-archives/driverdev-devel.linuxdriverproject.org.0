Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5D32B0ADC
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 17:59:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 279DB86FDB;
	Thu, 12 Nov 2020 16:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GZ1kab7lSkCY; Thu, 12 Nov 2020 16:59:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3823B86FE7;
	Thu, 12 Nov 2020 16:59:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0375C1BF276
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 16:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F3754877F5
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 16:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSS+ZLB6a64N for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 16:59:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA2F08765B
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 16:59:40 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id v20so6981198ljk.8
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 08:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Xt95colZf33mgot8tELeNlRansGBvck/Mt4yELIIDqY=;
 b=fHDLJ02XfofqPoW/m/ty+7VMDDU5x/EGpHV/+Yy5G1qvgpLWH4Bj6qirnIfR2GOFHY
 H2rsWty5fFNMq6aCx6XdDWhpV6BR3+tvp61A5zWYd6mxO3JGE39IAl69QXwXp/OPSLOc
 dbjrfCbzaQBa8KcMu6SiyVtP5+MIJvDirOdjY9sY049RqEx6eY2eqm19yoWcz95sPsLg
 NScSb7Br1t6cH2J6CRqeJIQlDccMferVM5GcIzWR9yGjzpka13Dd7CaUaJF4CwdiAUzW
 byu4iX3gr3BVLIGe/LU4yPecdAgxDUtNUIthKeuggKFO5txc0jODLiR2lG9aCqUdXeXb
 ScEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Xt95colZf33mgot8tELeNlRansGBvck/Mt4yELIIDqY=;
 b=l6R5jl7u/3ziYEh4Y/c1/Ppwnlr5KI58sCTHHze2Bqs5iZG6SYDYsSzUrKwkgn0zjx
 tfrwbdORqXTZGi8IXkLq4btVGip1TmLgZLgSLv/D6KxTULndTa7+8hZsfp2DJJuI+3z7
 sSCZowZvEzqKPW1LJgeE20bgqDIMS5ECoD3xxytyYc+BUFtTlcG7UdZ1uMFfGqS8jbwx
 hGnz+E9plUe/S55bjTWI10mz99e0VBD5vS3Phy2egY7X2OugMpp1Z/cCBD0eI8lK5vdM
 6e3tfh7M0HYNPEEUAjKMcR/R03rTFpwEI4N/GG403a7tLFT4jwwXYDL5yd41jZaSiTgR
 SeAg==
X-Gm-Message-State: AOAM532si8IhIBwewreqGoWWAn4rnbuDacZTezIBFHCpBfZBjDqk6Myo
 NGDmftUcBSK4W+jXtDpoecc=
X-Google-Smtp-Source: ABdhPJyl96aYzliFwkLljLShw56ErRaoK0Xab1vQjJi14A44PY75rTZLE8QOeBZnDRsExRlkCgmYqg==
X-Received: by 2002:a2e:8315:: with SMTP id a21mr166883ljh.29.1605200379012;
 Thu, 12 Nov 2020 08:59:39 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id t5sm691068lfc.75.2020.11.12.08.59.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Nov 2020 08:59:38 -0800 (PST)
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
To: Mark Brown <broonie@kernel.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-12-digetx@gmail.com> <20201110202945.GF2375022@ulmo>
 <20201110203257.GC5957@sirena.org.uk>
 <72ae6462-13df-9fcb-510e-8e57eee0f035@gmail.com>
 <20201111115534.GA4847@sirena.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <dd26eb18-8ac4-22a6-29b0-dbbe5fa6075b@gmail.com>
Date: Thu, 12 Nov 2020 19:59:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201111115534.GA4847@sirena.org.uk>
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

MTEuMTEuMjAyMCAxNDo1NSwgTWFyayBCcm93biDQv9C40YjQtdGCOgo+IE9uIFdlZCwgTm92IDEx
LCAyMDIwIGF0IDEyOjIzOjQxQU0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gMTAu
MTEuMjAyMCAyMzozMiwgTWFyayBCcm93biDQv9C40YjQtdGCOgo+IAo+Pj4+PiArCWlmICghZGV2
aWNlX3Byb3BlcnR5X3ByZXNlbnQoZGMtPmRldiwgImNvcmUtc3VwcGx5IikpCj4+Pj4+ICsJCXJl
dHVybjsKPiAKPj4+PiBUaGlzIGlzIGEgcG90ZW50aWFsbHkgaGVhdnkgb3BlcmF0aW9uLCBzbyBJ
IHRoaW5rIHdlIHNob3VsZCBhdm9pZCB0aGF0Cj4+Pj4gaGVyZS4gSG93IGFib3V0IHlvdSB1c2Ug
ZGV2bV9yZWd1bGF0b3JfZ2V0X29wdGlvbmFsKCkgaW4gLT5wcm9iZSgpPyBUaGF0Cj4+Pj4gcmV0
dXJucyAtRU5PREVWIGlmIG5vIHJlZ3VsYXRvciB3YXMgc3BlY2lmaWVkLCBpbiB3aGljaCBjYXNl
IHlvdSBjYW4gc2V0Cj4+Pj4gZGMtPmNvcmVfcmVnID0gTlVMTCBhbmQgdXNlIHRoYXQgYXMgdGhl
IGNvbmRpdGlvbiBoZXJlLgo+IAo+Pj4gT3IgZW51bWVyYXRlIHRoZSBjb25maWd1cmFibGUgdm9s
dGFnZXMgYWZ0ZXIgZ2V0dGluZyB0aGUgcmVndWxhdG9yIGFuZAo+Pj4gaGFuZGxlIHRoYXQgYXBw
cm9wcmlhdGVseSB3aGljaCB3b3VsZCBiZSBtb3JlIHJvYnVzdCBpbiBjYXNlIHRoZXJlJ3MKPj4+
IG1pc3Npbmcgb3IgdW51c3VhbCBjb25zdHJhaW50cy4KPiAKPj4gSSBhbHJlYWR5IGNoYW5nZWQg
dGhhdCBjb2RlIHRvIHVzZSByZWd1bGF0b3JfZ2V0X29wdGlvbmFsKCkgZm9yIHYyLgo+IAo+IFRo
YXQgZG9lc24ndCBsb29rIGVudGlyZWx5IGFwcHJvcHJpYXRlIGdpdmVuIHRoYXQgdGhlIGNvcmUg
ZG9lcyBtb3N0Cj4gbGlrZWx5IHJlcXVpcmUgc29tZSBraW5kIG9mIHBvd2VyIHRvIG9wZXJhdGUu
CgpXZSB3aWxsIG5lZWQgdG8gZG8gdGhpcyBiZWNhdXNlIG9sZGVyIERUQnMgd29uJ3QgaGF2ZSB0
aGF0IHJlZ3VsYXRvciBhbmQKd2Ugd2FudCB0byBrZWVwIHRoZW0gd29ya2luZy4KCkFsc28sIHNv
bWUgZGV2aWNlLXRyZWVzIHdvbid0IGhhdmUgdGhhdCByZWd1bGF0b3IgYW55d2F5cyBiZWNhdXNl
IGJvYXJkCnNjaGVtYXRpY3MgaXNuJ3QgYXZhaWxhYmxlLCBhbmQgdGh1cywgd2UgY2FuJ3QgZml4
IHRoZW0uCgo+PiBSZWdhcmRpbmcgdGhlIGVudW1lcmF0aW5nIHN1cHBvcnRlZCB2b2x0YWdlLi4g
SSB0aGluayB0aGlzIHNob3VsZCBiZQo+PiBkb25lIGJ5IHRoZSBPUFAgY29yZSwgYnV0IHJlZ3Vs
YXRvciBjb3JlIGRvZXNuJ3Qgd29yayB3ZWxsIGlmCj4+IHJlZ3VsYXRvcl9nZXQoKSBpcyBpbnZv
a2VkIG1vcmUgdGhhbiBvbmUgdGltZSBmb3IgdGhlIHNhbWUgZGV2aWNlLCBhdAo+PiBsZWFzdCB0
aGVyZSBpcyBhIGxvdWQgZGVidWdmcyB3YXJuaW5nIGFib3V0IGFuIGFscmVhZHkgZXhpc3RpbmcK
PiAKPiBJIGRvbid0IHVuZGVyc3RhbmQgd2h5IHRoaXMgd291bGQgYmUgYW4gaXNzdWUgLSBpZiBu
b3RoaW5nIGVsc2UgdGhlIGNvcmUKPiBjb3VsZCBqdXN0IG9mZmVyIGFuIGludGVyZmFjZSB0byB0
cmlnZ2VyIHRoZSBjaGVjay4KCkl0J3Mgbm90IGFuIGlzc3VlLCBJIGp1c3QgZGVzY3JpYmVkIHdo
YXQgaGFwcGVucyB3aGVuIGRldmljZSBkcml2ZXIKdHJpZXMgdG8gZ2V0IGEgcmVndWxhdG9yIHR3
aWNlLgoKVGhlcmUgd2FzIGFuIGlzc3VlIG9uY2UgdGhhdCBjaGVjayBpcyBhZGRlZCB0byB0aGUg
cmVndWxhdG9yIGNvcmUgY29kZS4KQnV0IHBlcmhhcHMgbm90IHdvcnRoIHRvIGRpc2N1c3MgaXQg
Zm9yIG5vdyBiZWNhdXNlIEkgZG9uJ3QgcmVtZW1iZXIKZGV0YWlscy4KCj4+IGRpcmVjdG9yeSBm
b3IgYSByZWd1bGF0b3IuIEl0J3MgZWFzeSB0byBjaGVjayB3aGV0aGVyIHRoZSBkZWJ1Zwo+PiBk
aXJlY3RvcnkgZXhpc3RzIGJlZm9yZSBjcmVhdGluZyBpdCwgbGlrZSB0aGVybWFsIGZyYW1ld29y
ayBkb2VzIGl0IGZvcgo+PiBleGFtcGxlLCBidXQgdGhlbiB0aGVyZSB3ZXJlIHNvbWUgb3RoZXIg
bW9yZSBkaWZmaWN1bHQgaXNzdWVzLi4gSSBkb24ndAo+PiByZWNhbGwgd2hhdCB0aGV5IHdlcmUg
cmlnaHQgbm93LiBQZXJoYXBzIHdpbGwgYmUgZWFzaWVyIHRvIHNpbXBseSBnZXQgYQo+PiBlcnJv
ciBmcm9tIHJlZ3VsYXRvcl9zZXRfdm9sdGFnZSgpIGZvciBub3cgYmVjYXVzZSBpdCBzaG91bGRu
J3QgZXZlcgo+PiBoYXBwZW4gaW4gcHJhY3RpY2UsIHVubGVzcyBkZXZpY2UtdHJlZSBoYXMgd3Jv
bmcgY29uc3RyYWludHMuCj4gCj4gVGhlIGNvbnN0cmFpbnRzIG1pZ2h0IG5vdCBiZSB3cm9uZywg
dGhlcmUgbWlnaHQgYmUgc29tZSBib2FyZCB3aGljaCBoYXMKPiBhIGNvbnN0cmFpbnQgc29tZXdo
ZXJlIGZvciAKPiAKCkluIHRoaXMgY2FzZSBib2FyZCdzIERUIHNob3VsZG4ndCBzcGVjaWZ5IHVu
c3VwcG9ydGFibGUgT1BQcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
