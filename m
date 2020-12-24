Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAFE2E26B0
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 13:14:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1136F87393;
	Thu, 24 Dec 2020 12:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id By8Fov2qAH9U; Thu, 24 Dec 2020 12:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 881DE871E0;
	Thu, 24 Dec 2020 12:14:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 139921BF42C
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 12:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CF48203E8
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 12:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dR6KBMI-g4hN for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 12:14:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by silver.osuosl.org (Postfix) with ESMTPS id E9C75203E3
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 12:14:14 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id m12so4352157lfo.7
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 04:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8PDZgsN8e1S8iAJgIQWFmcr5fqcA+olCtue62G+IMw8=;
 b=TzwQmYoGBJneEduxVkHeih8tyjwayvE8Paw1EAbvJPYfRWwf5wl7gJpHoffaWPAqzA
 gkxltgA/7vOHWv9svpEcEc3IG2HxGpkghaYBf2XIMzsinMqbBtujP+Jw2pjyCRGMKs06
 ZiLF3z/136SRi41HS5B8JsCPEaANBUpc/yqLFNv+8dNU7lSqEnUdID+8+NdFN1+Au+iQ
 ZPbnoxblSmR/SdnhZOU7IzD7+ZrjASKOXESjqeA+j6UYLymmX8rArmcX3yOGAJeNGJT9
 Fp0+pe5erEjpIwmBUZmB2TzoQw+geHtOf8EFHq7qDATHcIOYEmmHR/WG0FDtfzNC1TqU
 27lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8PDZgsN8e1S8iAJgIQWFmcr5fqcA+olCtue62G+IMw8=;
 b=K5IclREGWpckaoclzBp2wr5GGyLKvclh3fD9S1Su9okck8wbCyD1bs/JFnG02JJgmb
 DJABio/1UdxRD3Dwb/Eytv4NZb00y9nE+Ogm+cPwM1zMpMm0v8r6XVhmVzlNHGnEcT3+
 GQ0Y8qep0ZaA/+MpC2Tdn5I+GEK4ABDwwQMMXGIie+hdUaAyaU51eeX7uuRXFyuPCsX7
 f5OTMyhc4Krwq5Bhl3UK+fE1N/bmPRY5PWtlfSqWzqfQLhhpH+zWimU61+GXxzaEqDuG
 GdDJWpdPnvMUJQmNc7+XfuJx+8Up4Myct3I8ENnEaKZHW9USmQh0lEzHGUemym/gF6jK
 hEtg==
X-Gm-Message-State: AOAM53329v4Traq52572G3BMnakDIU1HAv5B10cgFyNa2PtuoYOfrDKr
 0mYXH3UNA5fBvLmit42BJRI=
X-Google-Smtp-Source: ABdhPJy0FtRlrX1oY3an/KZ/D2LqStJoY/x45Ai7s8zxNVRWUuDeJ92oqKSWsgI+TI+TTfP1kTILOg==
X-Received: by 2002:a19:4c06:: with SMTP id z6mr13550389lfa.284.1608812053002; 
 Thu, 24 Dec 2020 04:14:13 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id k20sm3898808ljc.61.2020.12.24.04.14.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Dec 2020 04:14:12 -0800 (PST)
Subject: Re: [PATCH v2 28/48] soc/tegra: Introduce core power domain driver
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-29-digetx@gmail.com>
 <20201222064029.duuzcsj53rt7xzvt@vireshk-i7>
 <c130f78d-3d97-9b26-be77-951fee0d8680@gmail.com>
 <3a5c00e5-2cdd-35ce-2714-d4ffbf9d516a@gmail.com>
 <20201223055715.2n5eba7fohrwpgr5@vireshk-i7>
 <239642ad-d7e9-364e-80d3-1da67625e247@gmail.com>
 <20201224065142.7rhfx37wgg3ejjqm@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a1e3c706-9a8a-00b2-6ccb-08b95ee0b45b@gmail.com>
Date: Thu, 24 Dec 2020 15:14:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201224065142.7rhfx37wgg3ejjqm@vireshk-i7>
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

MjQuMTIuMjAyMCAwOTo1MSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMjMtMTItMjAs
IDIzOjM3LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDIzLjEyLjIwMjAgMDg6NTcsIFZpcmVz
aCBLdW1hciDQv9C40YjQtdGCOgo+Pj4gV2hhdCdzIHdyb25nIHdpdGggZ2V0dGluZyB0aGUgcmVn
dWxhdG9yIGluIHRoZSBkcml2ZXIgYXMgd2VsbCA/IEFwYXJ0IGZyb20gdGhlCj4+PiBPUFAgY29y
ZSA/Cj4+Cj4+IFRoZSB2b2x0YWdlIHN5bmNpbmcgc2hvdWxkIGJlIGRvbmUgZm9yIGVhY2ggY29u
c3VtZXIgcmVndWxhdG9yCj4+IGluZGl2aWR1YWxseSBbMV0uCj4+Cj4+IFNlY29uZGx5LCByZWd1
bGF0b3IgY29yZSBkb2Vzbid0IHdvcmsgd2VsbCB0b2RheSBpZiB0aGUgc2FtZSByZWd1bGF0b3IK
Pj4gaXMgcmVxdWVzdGVkIG1vcmUgdGhhbiBvbmUgdGltZSBmb3IgdGhlIHNhbWUgZGV2aWNlLgo+
IAo+IEhtbS4uLgo+IAo+Pj4+IHdpbGwgcmV0dXJuIHRoZSBPUFAgdGFibGUgcmVndWxhdG9yIGlu
IG9yZGVyIHRvIGFsbG93IGRyaXZlciB0byB1c2UgdGhlCj4+Pj4gcmVndWxhdG9yIGRpcmVjdGx5
LiBCdXQgSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhpcyBpcyBhIG11Y2ggYmV0dGVyCj4+Pj4gb3B0
aW9uIHRoYW4gdGhlIG9wcF9zeW5jX3JlZ3VsYXRvcnMoKSBhbmQgb3BwX3NldF92b2x0YWdlKCkg
QVBJcy4KPj4+Cj4+PiBzZXRfdm9sdGFnZSgpIGlzIHN0aWxsIGZpbmUgYXMgdGhlcmUgaXMgc29t
ZSBkYXRhIHRoYXQgdGhlIE9QUCBjb3JlIGhhcywgYnV0Cj4+PiBzeW5jX3JlZ3VsYXRvcigpIGhh
cyBub3RoaW5nIHRvIGRvIHdpdGggT1BQIGNvcmUuCj4+Pgo+Pj4gQW5kIHRoaXMgbWF5IGxlYWQg
dG8gbW9yZSB3cmFwcGVyIGhlbHBlcnMgaW4gdGhlIE9QUCBjb3JlLCB3aGljaCBJIGFtIGFmcmFp
ZCBvZi4KPj4+IEFuZCBzbyBldmVuIGlmIGl0IGlzIG5vdCB0aGUgYmVzdCwgSSB3b3VsZCBsaWtl
IHRoZSBPUFAgY29yZSB0byBwcm92aWRlIHRoZSBkYXRhCj4+PiBhbmQgbm90IGdldCBpbnRvIHRo
aXMuIE9mY291cnNlIHRoZXJlIGlzIGFuIGV4Y2VwdGlvbiB0byB0aGlzLCBvcHBfc2V0X3JhdGUu
Cj4+Pgo+Pgo+PiBUaGUgcmVndWxhdG9yX3N5bmNfdm9sdGFnZSgpIHNob3VsZCBiZSBpbnZva2Vk
IG9ubHkgaWYgdm9sdGFnZSB3YXMKPj4gY2hhbmdlZCBwcmV2aW91c2x5IFsxXS4KPj4KPj4gVGhl
IE9QUCBjb3JlIGFscmVhZHkgaGFzIHRoZSBpbmZvIGFib3V0IHdoZXRoZXIgdm9sdGFnZSB3YXMg
Y2hhbmdlZCBhbmQKPj4gaXQgcHJvdmlkZXMgdGhlIG5lY2Vzc2FyeSBsb2NraW5nIGZvciBib3Ro
IHNldF92b2x0YWdlKCkgYW5kCj4+IHN5bmNfcmVndWxhdG9yKCkuIFBlcmhhcHMgSSdsbCBuZWVk
IHRvIGR1cGxpY2F0ZSB0aGF0IGZ1bmN0aW9uYWxpdHkgaW4KPj4gdGhlIFBEIGRyaXZlciwgaW5z
dGVhZCBvZiBtYWtpbmcgaXQgYWxsIGdlbmVyaWMgYW5kIHJlLXVzYWJsZSBieSBvdGhlcgo+PiBk
cml2ZXJzLgo+Pgo+PiBbMV0KPj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUu
MTAuMi9zb3VyY2UvZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jI0w0MTA3Cj4gCj4gTGV0cyBkbyBp
dCBpbiB0aGUgT1BQIGNvcmUgYW5kIHNlZSB3aGVyZSB3ZSBnby4KPiAKCkFscmlnaHQsIHRoYW5r
IHlvdS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
