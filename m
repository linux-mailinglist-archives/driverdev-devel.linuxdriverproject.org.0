Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E452E21B7
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 21:48:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEFAE87383;
	Wed, 23 Dec 2020 20:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1FkOQARHN2Zs; Wed, 23 Dec 2020 20:48:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32607872FD;
	Wed, 23 Dec 2020 20:48:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4FCF1BF86B
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 20:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A987385FA5
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 20:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SPVCObDwJb6h for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 20:48:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3073885F83
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 20:48:15 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id h205so363497lfd.5
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 12:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XAOZFX5PmO3BnjJ+pCRmO9VP1XkSYch3y2iUGGqB3o8=;
 b=Hkvv+mPSRToI5mHA8J6YUX4CFXMXssDIGtVj6ay0ksThjJWupHF+KIutY8dH4sL7ed
 du7+7yoSg/YOCXgiTfEyg4CyB2NpnVsLGJ89dV9SqoWOqPUSKFl+2NZOIeKzMxyTNXs6
 pvuhxNC+RAkVqtQKrSVHWh94rQCm6AEAARMEmMKIyG0Cczj8D1kgdOX+ldMR9yzqHekC
 yDjSgnsDvou5/c8J+cRX0bs8foGprzKYHTXElxVD89Q6W5OlGffGLeI2A5ZfRV+Jo9KY
 pbKavgg6wX3W4BZM+XSfnGSMohsNPFg6mW2yFVUGZi/CUBKgPDlW8uQkMqeBWYVO60Tr
 617g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XAOZFX5PmO3BnjJ+pCRmO9VP1XkSYch3y2iUGGqB3o8=;
 b=nE+OxKorQsiOzLjl+JrBwTylcd1/q9PU7SnrUHYGftUU/a68P8CjBEAl7KQc7ELCcC
 sYzUK7yzlVywoVf1BZUflTcqSMb/ua3Kr+jlv4EfXK6CjH3sY/1RjtwNnSjPf2D72EcA
 SpyJqts253sF0GcX8EyX6lFbSaiGcRJJ2VgAWhaYV2HBYOgbGFxJt7Hil0E9n15jIWdZ
 0zWw20WHj1kirGOr2C0recjjD9hRoY5zERrlelbjEaW1KCixD0w7iNi3Vjw1e0PiIUaj
 D93JcCBH6jg4tS+5xqP3i+9reDDJYhyyfnbRXVx7EGahnPTyk3GIZ8fD7W1M4/OPzao9
 i4vw==
X-Gm-Message-State: AOAM5334B1zneIJTx9U7/FzDmtVyyP/MIYfe3mhjyzkT6RySGLdPQjZh
 agivCRm+wpXNylykVfX7v/s=
X-Google-Smtp-Source: ABdhPJzjYrLYkWsalFBLSailKegbFX3ZOqy7cBTjqEzJ0UJwKuOkOkF6TKPSPxQv5z+pj73dmBDjnA==
X-Received: by 2002:a2e:9053:: with SMTP id n19mr10022964ljg.283.1608756493408; 
 Wed, 23 Dec 2020 12:48:13 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id n8sm3351553lfi.48.2020.12.23.12.48.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Dec 2020 12:48:12 -0800 (PST)
Subject: Re: [PATCH v2 14/48] opp: Filter out OPPs based on availability of a
 required-OPP
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-15-digetx@gmail.com>
 <20201222085940.y625zxee4tevbqm5@vireshk-i7>
 <9ed8bde3-f7b5-025c-c038-87f35ea39e5f@gmail.com>
 <20201223042200.ey2azaqizazrz6bp@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3c6a1e43-02c7-30d3-3aee-fde1dbf76472@gmail.com>
Date: Wed, 23 Dec 2020 23:48:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201223042200.ey2azaqizazrz6bp@vireshk-i7>
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

MjMuMTIuMjAyMCAwNzoyMiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMjItMTItMjAs
IDIyOjE3LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDIyLjEyLjIwMjAgMTE6NTksIFZpcmVz
aCBLdW1hciDQv9C40YjQtdGCOgo+Pj4gT24gMTctMTItMjAsIDIxOjA2LCBEbWl0cnkgT3NpcGVu
a28gd3JvdGU6Cj4+Pj4gQSByZXF1aXJlZCBPUFAgbWF5IG5vdCBiZSBhdmFpbGFibGUsIGFuZCB0
aHVzLCBhbGwgT1BQcyB3aGljaCBhcmUgdXNpbmcKPj4+PiB0aGlzIHJlcXVpcmVkIE9QUCBzaG91
bGQgYmUgdW5hdmFpbGFibGUgdG9vLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9z
aXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+Pj4+IC0tLQo+Pj4+ICBkcml2ZXJzL29wcC9jb3Jl
LmMgfCAxMSArKysrKysrKysrLQo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IFBsZWFzZSBzZW5kIGEgc2VwYXJhdGUgcGF0Y2hzZXQg
Zm9yIGZpeGVzLCBhcyB0aGVzZSBjYW4gYWxzbyBnbyB0byA1LjExIGl0c2VsZi4KPj4KPj4gQWxy
aWdodCwgYWx0aG91Z2ggSSBkb24ndCB0aGluayB0aGF0IHRoaXMgcGF0Y2ggZml4ZXMgYW55IHBy
b2JsZW1zIGZvcgo+PiBleGlzdGluZyBPUFAgdXNlcnMuCj4gCj4gQmVjYXVzZSBub2JvZHkgaXMg
dXNpbmcgdGhpcyBmZWF0dXJlLCBidXQgb3RoZXJ3aXNlIHRoaXMgaXMgYSBmaXggZm9yIG1lLgo+
IAo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL29wcC9jb3JlLmMgYi9kcml2ZXJzL29wcC9jb3Jl
LmMKPj4+PiBpbmRleCBkOWZlYjc2Mzk1OTguLjNkMDJmZTMzNjMwYiAxMDA2NDQKPj4+PiAtLS0g
YS9kcml2ZXJzL29wcC9jb3JlLmMKPj4+PiArKysgYi9kcml2ZXJzL29wcC9jb3JlLmMKPj4+PiBA
QCAtMTU4OCw3ICsxNTg4LDcgQEAgaW50IF9vcHBfYWRkKHN0cnVjdCBkZXZpY2UgKmRldiwgc3Ry
dWN0IGRldl9wbV9vcHAgKm5ld19vcHAsCj4+Pj4gIAkgICAgIHN0cnVjdCBvcHBfdGFibGUgKm9w
cF90YWJsZSwgYm9vbCByYXRlX25vdF9hdmFpbGFibGUpCj4+Pj4gIHsKPj4+PiAgCXN0cnVjdCBs
aXN0X2hlYWQgKmhlYWQ7Cj4+Pj4gLQlpbnQgcmV0Owo+Pj4+ICsJaW50IGksIHJldDsKPj4+PiAg
Cj4+Pj4gIAltdXRleF9sb2NrKCZvcHBfdGFibGUtPmxvY2spOwo+Pj4+ICAJaGVhZCA9ICZvcHBf
dGFibGUtPm9wcF9saXN0Owo+Pj4+IEBAIC0xNjE1LDYgKzE2MTUsMTUgQEAgaW50IF9vcHBfYWRk
KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldl9wbV9vcHAgKm5ld19vcHAsCj4+Pj4gIAkJ
CSBfX2Z1bmNfXywgbmV3X29wcC0+cmF0ZSk7Cj4+Pj4gIAl9Cj4+Pj4gIAo+Pj4+ICsJZm9yIChp
ID0gMDsgaSA8IG9wcF90YWJsZS0+cmVxdWlyZWRfb3BwX2NvdW50ICYmIG5ld19vcHAtPmF2YWls
YWJsZTsgaSsrKSB7Cj4+Pj4gKwkJaWYgKG5ld19vcHAtPnJlcXVpcmVkX29wcHNbaV0tPmF2YWls
YWJsZSkKPj4+PiArCQkJY29udGludWU7Cj4+Pj4gKwo+Pj4+ICsJCW5ld19vcHAtPmF2YWlsYWJs
ZSA9IGZhbHNlOwo+Pj4+ICsJCWRldl93YXJuKGRldiwgIiVzOiBPUFAgbm90IHN1cHBvcnRlZCBi
eSByZXF1aXJlZCBPUFAgJXBPRiAoJWx1KVxuIiwKPj4+PiArCQkJIF9fZnVuY19fLCBuZXdfb3Bw
LT5yZXF1aXJlZF9vcHBzW2ldLT5ucCwgbmV3X29wcC0+cmF0ZSk7Cj4+Pgo+Pj4gV2h5IG5vdCBq
dXN0IGJyZWFrIGZyb20gaGVyZSA/Cj4+Cj4+IFRoZSBuZXdfb3BwIGNvdWxkIGJlIGFscmVhZHkg
bWFya2VkIGFzIHVuYXZhaWxhYmxlIGJ5IGEgcHJldmlvdXMgdm9sdGFnZQo+PiBjaGVjaywgaGVu
Y2UgdGhpcyBsb29wIHNob3VsZCBiZSBza2lwcGVkIGVudGlyZWx5IGluIHRoYXQgY2FzZS4KPiAK
PiBUaGVuIGFkZCBhIHNlcGFyYXRlIGNoZWNrIGZvciB0aGF0IGJlZm9yZSB0aGUgbG9vcCBhcyB3
ZSBkb24ndCBuZWVkIHRoYXQgY2hlY2sKPiBvbiBldmVyeSBpdGVyYXRpb24gaGVyZS4KPiAKClBl
cmhhcHMgdGhlIGJyZWFrIHdpbGwgYmUgYSBiZXR0ZXIgb3B0aW9uIGluIHRoaXMgY2FzZSwgc2lu
Y2UgaXQgd29uJ3QKaHVydCBhdCBhbGwgdG8gcHJpbnQgdGhlIGFkZGl0aW9uYWwgbWVzc2FnZSBl
dmVuIGlmIE9QUCB3YXMgYWxyZWFkeQpkaXNhYmxlZCBieSBhbm90aGVyIGNoZWNrLiBJJ2xsIHVw
ZGF0ZSBpdCBpbiBuZXh0IHJldmlzaW9uLCB0aGFua3MuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
