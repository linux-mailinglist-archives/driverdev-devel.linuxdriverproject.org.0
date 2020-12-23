Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3078D2E181D
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 05:30:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9330085BDF;
	Wed, 23 Dec 2020 04:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A-Gba7rToipl; Wed, 23 Dec 2020 04:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 251BE85C05;
	Wed, 23 Dec 2020 04:30:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C08F1BF349
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 04:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 350112034C
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 04:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hElhZwXwzxY6 for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 04:29:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 by silver.osuosl.org (Postfix) with ESMTPS id DCBFE20242
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 04:29:58 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id x13so17119888oic.5
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 20:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=vFPBACuSZLmFwKfzTZBK29MSltq37ELB0qaT/YRoFRY=;
 b=IpGc94bYryxmTwQjxV0XiBy+F4O5lVtghSrxEz/IB5lG/bE1epAtZMErAAzi3cYsf3
 VvGlaBeqLlBLA4p3RCHh8GUg0YUIbEBfJJpYVXlBHEE0jAMFJRa95EKnwi2RqZ615dWN
 YevqvsZaZWfs9EV1uQe8PwIvpJwXm6R19TuPZ8v8f7Rhw9+Hv9ETOM7t122FAz4tdO2c
 L8avA55nUCv9EIjhwz3mGd07csNFfkX0fEz/ixCBF7Sz3iIDU5AY+DIld6fxQJefByQZ
 KcwESs6ZbcAlvTm6yHttIP4VkC+QBk0ZbsUCyLUgLvc09112Gj99IpGEq533s7VebyPB
 VOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=vFPBACuSZLmFwKfzTZBK29MSltq37ELB0qaT/YRoFRY=;
 b=uRCSfCaSTg2TTZo9QEeNbkaJxWcnbdlTmCFgiMSycYJPw7AXWp1Z7vhIdhQN+2MMRE
 zgIJiuxHIoq+ISmS1lCKRCECvOAW1MYjgz+ks2EJOavHbdqa108NraPu6IE/TcM192U9
 tAlZq8CMv6AM9zavnUowEOjsnxu9v58yab46t7qNzvnc0nbPxqpvunt/YL/HSWTwblYc
 rfU/m9Ay9AI6uN06FgPc+WBisPhvTzYK5rJrzFSOCavmZ9SpId2DFEALdJKGyueP4lkQ
 aPUyADaja/8Pi80bKKNvOOwAxwmDZmi6git0w2xIprIs62feH4aqB+avOQl6/Wqnb5Yb
 Kkag==
X-Gm-Message-State: AOAM531eUZjBqOX5qdFd16ZCrXFCxmGJLj9EW/sPTBjwfhJSZkTP8Zgn
 EoTwrBOuBehL3c0k0Qv4SZ0xm0vxJzri1Q==
X-Google-Smtp-Source: ABdhPJxgtdKyvR1thUteXsp8n8u1tUpiDzW8vaTCpk7yHVskegF0VKZCmCi8HGyvB/579lHHSRqmQA==
X-Received: by 2002:a17:90a:67ce:: with SMTP id
 g14mr25301218pjm.33.1608697326249; 
 Tue, 22 Dec 2020 20:22:06 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id x23sm8679028pgk.14.2020.12.22.20.22.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 20:22:05 -0800 (PST)
Date: Wed, 23 Dec 2020 09:52:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 14/48] opp: Filter out OPPs based on availability of a
 required-OPP
Message-ID: <20201223042200.ey2azaqizazrz6bp@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-15-digetx@gmail.com>
 <20201222085940.y625zxee4tevbqm5@vireshk-i7>
 <9ed8bde3-f7b5-025c-c038-87f35ea39e5f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ed8bde3-f7b5-025c-c038-87f35ea39e5f@gmail.com>
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

T24gMjItMTItMjAsIDIyOjE3LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjIuMTIuMjAyMCAx
MTo1OSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiBPbiAxNy0xMi0yMCwgMjE6MDYsIERt
aXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+PiBBIHJlcXVpcmVkIE9QUCBtYXkgbm90IGJlIGF2YWls
YWJsZSwgYW5kIHRodXMsIGFsbCBPUFBzIHdoaWNoIGFyZSB1c2luZwo+ID4+IHRoaXMgcmVxdWly
ZWQgT1BQIHNob3VsZCBiZSB1bmF2YWlsYWJsZSB0b28uCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5
OiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4gPj4gLS0tCj4gPj4gIGRyaXZl
cnMvb3BwL2NvcmUuYyB8IDExICsrKysrKysrKystCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IFBsZWFzZSBzZW5kIGEgc2VwYXJh
dGUgcGF0Y2hzZXQgZm9yIGZpeGVzLCBhcyB0aGVzZSBjYW4gYWxzbyBnbyB0byA1LjExIGl0c2Vs
Zi4KPiAKPiBBbHJpZ2h0LCBhbHRob3VnaCBJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyBwYXRjaCBm
aXhlcyBhbnkgcHJvYmxlbXMgZm9yCj4gZXhpc3RpbmcgT1BQIHVzZXJzLgoKQmVjYXVzZSBub2Jv
ZHkgaXMgdXNpbmcgdGhpcyBmZWF0dXJlLCBidXQgb3RoZXJ3aXNlIHRoaXMgaXMgYSBmaXggZm9y
IG1lLgoKPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9vcHAvY29yZS5jIGIvZHJpdmVycy9vcHAv
Y29yZS5jCj4gPj4gaW5kZXggZDlmZWI3NjM5NTk4Li4zZDAyZmUzMzYzMGIgMTAwNjQ0Cj4gPj4g
LS0tIGEvZHJpdmVycy9vcHAvY29yZS5jCj4gPj4gKysrIGIvZHJpdmVycy9vcHAvY29yZS5jCj4g
Pj4gQEAgLTE1ODgsNyArMTU4OCw3IEBAIGludCBfb3BwX2FkZChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCBkZXZfcG1fb3BwICpuZXdfb3BwLAo+ID4+ICAJICAgICBzdHJ1Y3Qgb3BwX3RhYmxl
ICpvcHBfdGFibGUsIGJvb2wgcmF0ZV9ub3RfYXZhaWxhYmxlKQo+ID4+ICB7Cj4gPj4gIAlzdHJ1
Y3QgbGlzdF9oZWFkICpoZWFkOwo+ID4+IC0JaW50IHJldDsKPiA+PiArCWludCBpLCByZXQ7Cj4g
Pj4gIAo+ID4+ICAJbXV0ZXhfbG9jaygmb3BwX3RhYmxlLT5sb2NrKTsKPiA+PiAgCWhlYWQgPSAm
b3BwX3RhYmxlLT5vcHBfbGlzdDsKPiA+PiBAQCAtMTYxNSw2ICsxNjE1LDE1IEBAIGludCBfb3Bw
X2FkZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZfcG1fb3BwICpuZXdfb3BwLAo+ID4+
ICAJCQkgX19mdW5jX18sIG5ld19vcHAtPnJhdGUpOwo+ID4+ICAJfQo+ID4+ICAKPiA+PiArCWZv
ciAoaSA9IDA7IGkgPCBvcHBfdGFibGUtPnJlcXVpcmVkX29wcF9jb3VudCAmJiBuZXdfb3BwLT5h
dmFpbGFibGU7IGkrKykgewo+ID4+ICsJCWlmIChuZXdfb3BwLT5yZXF1aXJlZF9vcHBzW2ldLT5h
dmFpbGFibGUpCj4gPj4gKwkJCWNvbnRpbnVlOwo+ID4+ICsKPiA+PiArCQluZXdfb3BwLT5hdmFp
bGFibGUgPSBmYWxzZTsKPiA+PiArCQlkZXZfd2FybihkZXYsICIlczogT1BQIG5vdCBzdXBwb3J0
ZWQgYnkgcmVxdWlyZWQgT1BQICVwT0YgKCVsdSlcbiIsCj4gPj4gKwkJCSBfX2Z1bmNfXywgbmV3
X29wcC0+cmVxdWlyZWRfb3Bwc1tpXS0+bnAsIG5ld19vcHAtPnJhdGUpOwo+ID4gCj4gPiBXaHkg
bm90IGp1c3QgYnJlYWsgZnJvbSBoZXJlID8KPiAKPiBUaGUgbmV3X29wcCBjb3VsZCBiZSBhbHJl
YWR5IG1hcmtlZCBhcyB1bmF2YWlsYWJsZSBieSBhIHByZXZpb3VzIHZvbHRhZ2UKPiBjaGVjaywg
aGVuY2UgdGhpcyBsb29wIHNob3VsZCBiZSBza2lwcGVkIGVudGlyZWx5IGluIHRoYXQgY2FzZS4K
ClRoZW4gYWRkIGEgc2VwYXJhdGUgY2hlY2sgZm9yIHRoYXQgYmVmb3JlIHRoZSBsb29wIGFzIHdl
IGRvbid0IG5lZWQgdGhhdCBjaGVjawpvbiBldmVyeSBpdGVyYXRpb24gaGVyZS4KCi0tIAp2aXJl
c2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
