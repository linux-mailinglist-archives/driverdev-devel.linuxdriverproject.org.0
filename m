Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC662DDABA
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 22:20:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B592687B1A;
	Thu, 17 Dec 2020 21:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4KqbZTFnuxG; Thu, 17 Dec 2020 21:19:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC55287A73;
	Thu, 17 Dec 2020 21:19:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91BF41BF373
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 21:19:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88C5887A68
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 21:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wi5rtvxNeX+u for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 21:19:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01F7E87A54
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 21:19:53 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id i9so28049134wrc.4
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 13:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XsBwmgyFbdlnXiRdAhxB0KnsdRP9EX0fo8+7p/onVeM=;
 b=NyRQdJQ0TIiT6H5yuKllL5V1o0PMFLt7UrTUtmH/FewUN6IbxVKuEto8NkC2CLuJq0
 EYevYM/zZ/UNBngzu6G93EgAGA43alT1OUSBO2eHb0uZO56DXAsCGLdnR/Vs9w6H3oT2
 A59Irsjd3PGIB1rGOaQCDkvqK1ZcPEBjVRf5ZR2e9VZIvLYMkpL9oA1nRXpC5CJj8hO/
 wedNTokq3HhmiyhkviQNxhYAeRfhaswc/0hj0/uPVKZMCjcbJ7W4dBGEOkcSrtExG12h
 3KIFmdEMMLGNW2R0kHOelk52IHkiN9yqwVHqN4ZyOzJa8k5A+avRgs9jLGBhjHltfj8E
 IEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XsBwmgyFbdlnXiRdAhxB0KnsdRP9EX0fo8+7p/onVeM=;
 b=QCM0LDM3W+htG/oDOp9HuUIIx7io97sbSo+x4qelHtkqZOhyNP4I6LBbsng/OrtDZ8
 CcUcwGo35b6EqH6aLUqgROhN2Ju20kyDYL2pJke8ZcR/B5E9P6ob32+xXe6hYdIuEXle
 ZgLhBtxrjVgQoaT8Kmvkngr+NI5aU+49DznvQgQKGK806jnrF1EkviO95bQG4Pd+9QnC
 lIhnH13/muhxeELPCkH8rasFmH2kEJkwoG41PwlXjUb1UIb4Iv+RoXyEF6rJIkyQRbR6
 fSr+qzy4cD1q5hsbFUUc7Ed8zoYuegbEFWpSSlX3dMEtjPXk9Vuqgx7fGSxaAdcwAbko
 9k1w==
X-Gm-Message-State: AOAM533+oFv2N+GrRms3ke3u+9ZB/6RMoqhqyKzPNuw0gnLxQkzZGSzu
 fdp3P6J2/Nd01XISgZUbi3MPjg==
X-Google-Smtp-Source: ABdhPJz9z6Hdbu62U7P0AH8ARVxVDI3D8QgrHz9wPCZhkt1X0+MQdkHm0xs8xAdE9USd0/9DVxv2OQ==
X-Received: by 2002:adf:f101:: with SMTP id r1mr806378wro.112.1608239992221;
 Thu, 17 Dec 2020 13:19:52 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:ccb6:ce78:2bcd:4ead?
 ([2a01:e34:ed2f:f020:ccb6:ce78:2bcd:4ead])
 by smtp.googlemail.com with ESMTPSA id m8sm9617258wmc.27.2020.12.17.13.19.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Dec 2020 13:19:51 -0800 (PST)
Subject: Re: [PATCH v2 47/48] ARM: tegra: ventana: Support CPU voltage scaling
 and thermal throttling
To: Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-48-digetx@gmail.com>
 <91139f8b-0b83-dd8a-ba53-8e7a499e6344@linaro.org>
 <b39ebfc1-42b3-1fa7-efe4-6ecbc8cfcb50@gmail.com>
 <776e0e84-e395-2bfb-f1ee-c34864b1cf16@linaro.org>
 <ce603c74-3a20-7331-36a7-d7bc43ce36b6@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <6afaf91c-d0ce-265d-4b71-0ea8da19918b@linaro.org>
Date: Thu, 17 Dec 2020 22:19:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <ce603c74-3a20-7331-36a7-d7bc43ce36b6@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTcvMTIvMjAyMCAyMToyOCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDE3LjEyLjIwMjAg
MjI6MzYsIERhbmllbCBMZXpjYW5vINC/0LjRiNC10YI6Cj4+Pj4+ICsJCQkJCXR5cGUgPSAiY3Jp
dGljYWwiOwo+Pj4+PiArCQkJCX07Cj4+Pj4+ICsJCQl9Owo+Pj4+PiArCj4+Pj4+ICsJCQljb29s
aW5nLW1hcHMgewo+Pj4+PiArCQkJCW1hcDAgewo+Pj4+PiArCQkJCQl0cmlwID0gPCZ0cmlwMD47
Cj4+Pj4+ICsJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHUwIFRIRVJNQUxfTk9fTElNSVQgVEhF
Uk1BTF9OT19MSU1JVD47Cj4+Pj4gWW91IHNob3VsZCBhZGQgYWxsIENQVXMgaGVyZS4KPj4+Cj4+
PiBBbGwgQ1BVIGNvcmVzIGFyZSBjb3VwbGVkIG9uIFRlZ3JhIGluIHJlZ2FyZHMgdG8gQ1BVRnJl
cSwgaGVuY2UgSSB0aGluawo+Pj4gaXQgd29uJ3QgbWFrZSBhbnkgZGlmZmVyZW5jZSBpZiBzZWNv
bmRhcnkgQ1BVIGNvcmVzIHdpbGwgYmUgYWRkZWQgaGVyZSwKPj4+IGlzbid0IGl0Pwo+PiBUaGUg
ZXhwbGFuYXRpb24gaXMgaW4gdGhlIGRlc2NyaXB0aW9uIG9mIGNvbW1pdCBlZjQ3MzQ1MDA0MDdj
ZTRkCj4gCj4gSSB0aGluayB0aGF0IHJlYWxseSBvbmx5IG1ha2VzIHNlbnNlIGlmIENQVSBjb3Jl
cyBoYXZlIGluZGVwZW5kZW50IGNsb2NrCj4gcmF0ZSBtYW5hZ2VtZW50LiAKCkFUTSBJIGRpZCBu
b3Qgc2VlIGFueSBBUk0gcGxhdGZvcm0gaGF2aW5nIGEgY2xvY2sgbGluZSBwZXIgQ1BVIGJ1dCBJ
IG1heQpiZSB3cm9uZy4KCj4gSUlSQywgSSBhY3R1YWxseSBtYWRlIHNvbWUgcmVzZWFyY2ggYWJv
dXQgdGhpcyBpbiB0aGUKPiBwYXN0IGFuZCBpbnRlbnRpb25hbGx5IHJlbW92ZWQgdGhlIHNlY29u
ZGFyeSBjb3JlcyBmcm9tIHRoZQo+IGNvb2xpbmctZGV2aWNlIHNpbmNlIHRoZXkgZGlkbid0IG1h
a2UgYW55IGRpZmZlcmVuY2UgZm9yIGEgY291cGxlZCBDUFUKPiBjb3Jlcy4KPiAKPiBUaGF0IGNv
bW1pdCBhbHNvIHNheXM6Cj4gCj4gIkJ1dCBhcyBzb29uIGFzIHRoaXMgQ1BVIG9yZGVyaW5nIGNo
YW5nZXMgYW5kIGFueSBvdGhlciBDUFUgaXMgdXNlZCB0bwo+IGJyaW5nIHVwIHRoZSBjb29saW5n
IGRldmljZSwgd2Ugd2lsbCBzdGFydCBzZWVpbmcgZmFpbHVyZXMuIgo+IAo+IEkgZG9uJ3QgcXVp
dGUgdW5kZXJzdGFuZCB0byB3aGF0ICJmYWlsdXJlcyIgdGhhdCBjb21taXQgcmVmZXJyZXJzLiBJ
Cj4gdHJpZWQgdG8gY2hhbmdlIHRoZSBjcHUwIHRvIGNwdTEgaW4gdGhlIGNvb2xpbmctZGV2aWNl
IGFuZCBkb24ndCBzZWUgYW55Cj4gZmFpbHVyZXMuIENvdWxkIHlvdSBwbGVhc2UgY2xhcmlmeSB0
aGlzPwo+IAo+IEluIGdlbmVyYWwgaXQgc2hvdWxkIGJlIGZpbmUgdG8gYWRkIGFsbCB0aGUgY29y
ZXMgdG8gdGhlIGNvb2xpbmctZGV2aWNlCj4gYW5kIEknbGwgZG8gaXQgaW4gdjMsIGJ1dCBJIHdh
bnQgdG8gbWFrZSBpdCBjbGVhciB3aHkgdGhpcyBpcyBuZWVkZWQuCgpBRkFJUiwgaWYgQ1BVMCBp
cyB1bnBsdWdnZWQgdGhlIGNvb2xpbmcgZGV2aWNlIGNhbiBub3QgcmViaW5kIHRvIENQVTEuCkFu
ZCBpZiBDUFUwIGlzIHBsdWdnZWQgaW4gYWdhaW4sIHRoZSBjb29saW5nIGRldmljZSBmYWlscyB0
byBpbml0aWFsaXplLgoKQW5kLCBpZiB0aGUgQ1BVcyBhcmUgbWFwcGVkIHdpdGggdGhlIHBoeXNp
Y2FsIENQVTAgdG8gTGludXggbnVtYmVyaW5nCkNQVTEsIHRoZSBjb29saW5nIGRldmljZSBtYXBw
aW5nIHdpbGwgZmFpbC4KCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8
aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8v
dHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy9saW5hcm8tYmxvZy8+IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
