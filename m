Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C2F2AB089
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 06:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F941869A2;
	Mon,  9 Nov 2020 05:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C0cFBQvatqmB; Mon,  9 Nov 2020 05:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30B9386904;
	Mon,  9 Nov 2020 05:12:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA6021BF417
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B7101870A7
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lzU7EYmw8hHD for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 05:12:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B90F870B2
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 05:12:05 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id g7so7007351pfc.2
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 21:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=9NivTOlvjK/Ba6sd1R/nO7+Ag7q8swSruWnqhahAopA=;
 b=tp5iGDWUBJG38ehlRwddPMdGWPeEgd/9hxrOkPBXCZ+SO+iKPWOTmiDH+Cwobq6HPT
 7vViE0zYr9ka9ct70t9K8SnqDWzqSZUNXqheS/mqDinvCmYbULlqw2fzNKKZZaDq/JNb
 SWH5tFz0k2jHt20E9oRMK11Ae5ls9HWwjMDNYTyHI5Kbrg2pXvF7zI87YhubQ1EzyJad
 mYObBw7x8IKnecPqF3HhzwVgvVPOJjAHFuR3lQc5Ja5UpKwpy+OW+jfM2KcYeMFpwo6k
 xonZDBUdvpRiXtq7I+1C2kznYzCUVp0KodvX7o2vRCAs/T26JnMogAFl+HGWAbBD7yH/
 NzTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=9NivTOlvjK/Ba6sd1R/nO7+Ag7q8swSruWnqhahAopA=;
 b=hZeNhnsCNlVdkFFEkl9ZRWqG6bP43mGGfqk6mxFPeYoU5USd2Xe12RiN4HfRr8ZYKD
 qJb4QMwyMoji0ka5orLU5LwfO3uWBUq5M/ktFxQg8e3HfNSdQ1zMmmrFmInIXi8wM/Gu
 9ioBp5j4jdcrgmTD2EaQgVlw6+iQ/NfWW4j+uX4gMK7vBwRuD+K3aLKrrMYynok50FtU
 d5PNgPkeaBPUCa2IKDPX094fqEhd82+AmWnTlZunESzs9Tr8CdtEJD0QaPmq6fKrswjT
 5/IA862nu33zGngVrqCyu32eKTvlVdskNjop8LxiJnTXql/w7Q9oqrB1kVSyvncY2xXC
 gOzA==
X-Gm-Message-State: AOAM533WqLFjO9onXWlyo+18OfZb/RYeqZX8/DIqr+zXSVgHnfMf7g3Z
 wfeT+A3XoE/YrjJqSAL6tYCEQw==
X-Google-Smtp-Source: ABdhPJwQdhAu2WnSRc9rOfl6s0FMnSAISb0fkEJE0pdYKUv8rT41JTM2g1xJQDNhC7f/+oC7XdSzGA==
X-Received: by 2002:a17:90a:8086:: with SMTP id
 c6mr11331387pjn.147.1604898724873; 
 Sun, 08 Nov 2020 21:12:04 -0800 (PST)
Received: from localhost ([122.172.12.172])
 by smtp.gmail.com with ESMTPSA id v23sm9687090pfn.141.2020.11.08.21.12.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 Nov 2020 21:12:04 -0800 (PST)
Date: Mon, 9 Nov 2020 10:42:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
Message-ID: <20201109051202.e4lkosy6kk334akq@vireshk-i7>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
 <2716c195-083a-112f-f1e5-2f6b7152a4b5@gmail.com>
 <20201109044354.ljd5pomhob6b7u5v@vireshk-i7>
 <713b319e-bb7b-4743-59f0-b9892c3da92d@gmail.com>
 <aba1fcac-74b8-f370-ab45-312975da66e6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aba1fcac-74b8-f370-ab45-312975da66e6@gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 DTML <devicetree@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMDktMTEtMjAsIDA4OjEwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMDkuMTEuMjAyMCAw
Nzo0NywgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gPiAwOS4xMS4yMDIwIDA3OjQzLCBW
aXJlc2ggS3VtYXIg0L/QuNGI0LXRgjoKPiA+PiBPbiAwOC0xMS0yMCwgMTU6MTksIERtaXRyeSBP
c2lwZW5rbyB3cm90ZToKPiA+Pj4gSSB0b29rIGEgZGV0YWlsZWQgbG9vayBhdCB0aGUgR0VOUEQg
YW5kIHRyaWVkIHRvIGltcGxlbWVudCBpdC4gSGVyZSBpcwo+ID4+PiB3aGF0IHdhcyBmb3VuZDoK
PiA+Pj4KPiA+Pj4gMS4gR0VOUEQgZnJhbWV3b3JrIGRvZXNuJ3QgYWdncmVnYXRlIHBlcmZvcm1h
bmNlIHJlcXVlc3RzIGZyb20gdGhlCj4gPj4+IGF0dGFjaGVkIGRldmljZXMuIFRoaXMgbWVhbnMg
dGhhdCBpZiBkZXZpY2VBIHJlcXVlc3RzIHBlcmZvcm1hbmNlIHN0YXRlCj4gPj4+IDEwIGFuZCB0
aGVuIGRldmljZUIgcmVxdWVzdHMgc3RhdGUgMywgdGhlbiBmcmFtZXdvcmsgd2lsbCBzZXQgZG9t
YWluJ3MKPiA+Pj4gc3RhdGUgdG8gMyBpbnN0ZWFkIG9mIDEwLgo+ID4+Cj4gPj4gSXQgZG9lcy4g
TG9vayBhdCBfZ2VucGRfcmVldmFsX3BlcmZvcm1hbmNlX3N0YXRlKCkuCj4gPj4KPiA+IAo+ID4g
VGhhbmtzLCBJIHByb2JhYmx5IGhhZCBhIGJ1ZyBpbiB0aGUgcXVpY2sgcHJvdG90eXBlIGFuZCB0
aGVuIG92ZXJsb29rZWQKPiA+IHRoYXQgZnVuY3Rpb24uCj4gPiAKPiAKPiBJZiBhIG5vbi1oYXJk
d2FyZSBkZXZpY2UtdHJlZSBub2RlIGlzIG9rYXkgdG8gaGF2ZSBmb3IgdGhlIGRvbWFpbiwgdGhl
bgo+IEkgY2FuIHRyeSBhZ2Fpbi4KPiAKPiBXaGF0IEkgYWxzbyBoYXZlbid0IG1lbnRpb25lZCBp
cyB0aGF0IEdFTlBEIGFkZHMgc29tZSBleHRyYSBjb21wbGV4aXR5Cj4gdG8gc29tZSBkcml2ZXJz
ICgzZCwgdmlkZW8gZGVjb2RlcikgYmVjYXVzZSB3ZSB3aWxsIG5lZWQgdG8gaGFuZGxlIGJvdGgK
PiBuZXcgR0VOUEQgYW5kIGxlZ2FjeSBUZWdyYSBzcGVjaWZpYyBwcmUtZ2VucGQgZXJhIGRvbWFp
bnMuCj4gCj4gSSdtIGFsc28gbm90IGV4YWN0bHkgc3VyZSBob3cgdGhlIHRvcG9sb2d5IG9mIGRv
bWFpbnMgc2hvdWxkIGxvb2sgbGlrZQo+IGJlY2F1c2UgVGVncmEgaGFzIGEgcG93ZXItY29udHJv
bGxlciAoUE1DKSB3aGljaCBtYW5hZ2VzIHBvd2VyIHJhaWwgb2YgYQo+IGZldyBoYXJkd2FyZSB1
bml0cy4gUGVyaGFwcyBpdCBzaG91bGQgYmUKPiAKPiAgIGRldmljZSAtPiBQTUMgZG9tYWluIC0+
IENPUkUgZG9tYWluCj4gCj4gYnV0IG5vdCBleGFjdGx5IHN1cmUgZm9yIG5vdy4KCkkgYW0gYWxz
byBjb25mdXNlZCBvbiBpZiBpdCBzaG91bGQgYmUgYSBkb21haW4gb3IgcmVndWxhdG9yLCBidXQg
dGhhdAppcyBmb3IgVWxmIHRvIHRlbGwgOikKCi0tIAp2aXJlc2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
