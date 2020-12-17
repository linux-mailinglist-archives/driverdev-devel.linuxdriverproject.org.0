Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC352DD9E2
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 21:29:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C3EBC2E2D6;
	Thu, 17 Dec 2020 20:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SqM68nFNPdRt; Thu, 17 Dec 2020 20:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B54C52E287;
	Thu, 17 Dec 2020 20:29:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DB741BF418
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 20:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8928286EBA
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 20:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtUWwtkAsM9Z for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 20:29:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62F5A86DB4
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 20:29:00 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id m12so61031957lfo.7
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 12:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GKljy0FefLQb5prsvrnmqmrfVAtuVTCWN2SoJppsiGI=;
 b=VYw3hMep39JaWr4RwvGdOrkGOk9i1d6L30sa3pEZc7Jv57OKRk5xzJobClTKgPsGz4
 Ux2rqCf61N62ecUxjuf+FhwgZuq6/I5KHRjnZ7diKnsWDfTW/SukvhsBUZlxuHES2tBx
 KA6mi1x/TTsvr79mP2iIAy6rt5BtlZov6lwj0Q/GroxAz5jbgQjbT6zgJMSIwELBKf2g
 /n0gYoohxBFjsnmUc/HOVz4oKc+nh6akNPzNKQgP+4u5qyrHWzuQTI0sEJ5e7lGr1KM4
 Iv71/evpjH/o4eVLGPr6hFsFvEMIGycEsSNOAE3yZWz2nbBq0cBhHetzYDI877dr1BgC
 x8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GKljy0FefLQb5prsvrnmqmrfVAtuVTCWN2SoJppsiGI=;
 b=oP7PxFt5q5G0GqiUjJWEu76J2e3nkHnBQYAW9Rq3knG85qysz6/FfsPanyW5deriD0
 sTeMIjBvaO/08erd5MmJ5GROiRVT3cQCzZsdQ93V1yS70f3J+Da3xLwXHt4zwliMUo6t
 SJDHo4nCuu1V+P0Cum9/KE7xbsA9F4+32tMYnqh49odjheiWrjRRyhiw6/paxFZ8heYB
 1p4dFMUpAUq5wyQNAFRBB3uhrhbp/47BPc7ejKELs3LQ/zpxg7yzPrpethBY+Ev41W6x
 Z/crfnz0+quFSp/947LrzKZpU/PnBtZKCIQ7YgzGla+o3hjqV0DuCYOih5aPbr7a/KCK
 1Kqg==
X-Gm-Message-State: AOAM531IC6PUBsd+d8iawFQspdMLtwMtNbNgqfP5y2KuDn+XfNDOuccX
 uJqjyOVu4ir/Wvfzum8V7hw=
X-Google-Smtp-Source: ABdhPJyk0uEwMqjubAd1x7PylZGa1gcruRNAfNVBuufl026RTe1WSf8KkEES9wW9uq7xDnyQwzJAbA==
X-Received: by 2002:a05:651c:101:: with SMTP id
 a1mr421137ljb.277.1608236938516; 
 Thu, 17 Dec 2020 12:28:58 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id z26sm781859ljn.98.2020.12.17.12.28.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Dec 2020 12:28:57 -0800 (PST)
Subject: Re: [PATCH v2 47/48] ARM: tegra: ventana: Support CPU voltage scaling
 and thermal throttling
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
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
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <ce603c74-3a20-7331-36a7-d7bc43ce36b6@gmail.com>
Date: Thu, 17 Dec 2020 23:28:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <776e0e84-e395-2bfb-f1ee-c34864b1cf16@linaro.org>
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

MTcuMTIuMjAyMCAyMjozNiwgRGFuaWVsIExlemNhbm8g0L/QuNGI0LXRgjoKPj4+PiArCQkJCQl0
eXBlID0gImNyaXRpY2FsIjsKPj4+PiArCQkJCX07Cj4+Pj4gKwkJCX07Cj4+Pj4gKwo+Pj4+ICsJ
CQljb29saW5nLW1hcHMgewo+Pj4+ICsJCQkJbWFwMCB7Cj4+Pj4gKwkJCQkJdHJpcCA9IDwmdHJp
cDA+Owo+Pj4+ICsJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHUwIFRIRVJNQUxfTk9fTElNSVQg
VEhFUk1BTF9OT19MSU1JVD47Cj4+PiBZb3Ugc2hvdWxkIGFkZCBhbGwgQ1BVcyBoZXJlLgo+Pgo+
PiBBbGwgQ1BVIGNvcmVzIGFyZSBjb3VwbGVkIG9uIFRlZ3JhIGluIHJlZ2FyZHMgdG8gQ1BVRnJl
cSwgaGVuY2UgSSB0aGluawo+PiBpdCB3b24ndCBtYWtlIGFueSBkaWZmZXJlbmNlIGlmIHNlY29u
ZGFyeSBDUFUgY29yZXMgd2lsbCBiZSBhZGRlZCBoZXJlLAo+PiBpc24ndCBpdD8KPiBUaGUgZXhw
bGFuYXRpb24gaXMgaW4gdGhlIGRlc2NyaXB0aW9uIG9mIGNvbW1pdCBlZjQ3MzQ1MDA0MDdjZTRk
CgpJIHRoaW5rIHRoYXQgcmVhbGx5IG9ubHkgbWFrZXMgc2Vuc2UgaWYgQ1BVIGNvcmVzIGhhdmUg
aW5kZXBlbmRlbnQgY2xvY2sKcmF0ZSBtYW5hZ2VtZW50LiBJSVJDLCBJIGFjdHVhbGx5IG1hZGUg
c29tZSByZXNlYXJjaCBhYm91dCB0aGlzIGluIHRoZQpwYXN0IGFuZCBpbnRlbnRpb25hbGx5IHJl
bW92ZWQgdGhlIHNlY29uZGFyeSBjb3JlcyBmcm9tIHRoZQpjb29saW5nLWRldmljZSBzaW5jZSB0
aGV5IGRpZG4ndCBtYWtlIGFueSBkaWZmZXJlbmNlIGZvciBhIGNvdXBsZWQgQ1BVCmNvcmVzLgoK
VGhhdCBjb21taXQgYWxzbyBzYXlzOgoKIkJ1dCBhcyBzb29uIGFzIHRoaXMgQ1BVIG9yZGVyaW5n
IGNoYW5nZXMgYW5kIGFueSBvdGhlciBDUFUgaXMgdXNlZCB0bwpicmluZyB1cCB0aGUgY29vbGlu
ZyBkZXZpY2UsIHdlIHdpbGwgc3RhcnQgc2VlaW5nIGZhaWx1cmVzLiIKCkkgZG9uJ3QgcXVpdGUg
dW5kZXJzdGFuZCB0byB3aGF0ICJmYWlsdXJlcyIgdGhhdCBjb21taXQgcmVmZXJyZXJzLiBJCnRy
aWVkIHRvIGNoYW5nZSB0aGUgY3B1MCB0byBjcHUxIGluIHRoZSBjb29saW5nLWRldmljZSBhbmQg
ZG9uJ3Qgc2VlIGFueQpmYWlsdXJlcy4gQ291bGQgeW91IHBsZWFzZSBjbGFyaWZ5IHRoaXM/CgpJ
biBnZW5lcmFsIGl0IHNob3VsZCBiZSBmaW5lIHRvIGFkZCBhbGwgdGhlIGNvcmVzIHRvIHRoZSBj
b29saW5nLWRldmljZQphbmQgSSdsbCBkbyBpdCBpbiB2MywgYnV0IEkgd2FudCB0byBtYWtlIGl0
IGNsZWFyIHdoeSB0aGlzIGlzIG5lZWRlZC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
