Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4CF2E0EE3
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:24:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FA3186769;
	Tue, 22 Dec 2020 19:24:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id az-g4G+QX2Np; Tue, 22 Dec 2020 19:24:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22F3786969;
	Tue, 22 Dec 2020 19:24:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53B001BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FF388727E
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CDaLkdnPEmec for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:24:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 700C28725C
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:24:36 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id a12so34580037lfl.6
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bAwwHu8Zr+LCIdaN1acypQRIs//vA5Gvg6O61PVJ5mE=;
 b=c2K1a/cpIhUUaOI0qDQpFJM2ZCQd5hThZcs2neSK9H1wGNa8CimSkraGF0sL1scq/8
 WswPZF4gZBN9DVesn7KAGoVxq3+CKFwEFKk8eMLcQwmI8tXlheOlQToM5e+qq5x9CH7d
 gGRnePeI58LqvhhZAh0PDxDXGBGsFxAbPqQ1eT7AdcAZSTO/TVQ/YqJC7j/D6x5lmzkY
 2rhI+dRUkVgurQcXCc1VApxu6CelcvRBFzPcKnKksOnC41AncyxrO8+GRWqQq4tHF1bj
 iB16a4iL8DG35UcBGIPZnG4mgTkXMbKFZAqjBJmhYgupC5zTIdYps8IKTSrONTFdafOj
 69Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bAwwHu8Zr+LCIdaN1acypQRIs//vA5Gvg6O61PVJ5mE=;
 b=fPxuvRDEWKAgFEkJcW4pz5PhIWw/WtyUEf/b9Z42ro4eIUftCkDgTGkRCNbHG48S2Z
 9wFoerXcecmknT1tEvV8CPeIQhLSz9oUVRqLFcdydqd1xb3rfl0izs1K51sbfGmssZs+
 1bHEbzF5LiLuNV7SpvCMKUKbt3XQ+K/fiufrKC3sudxB/RD0CkqIyJKCbx/BamHk0xde
 4/U9xK2YJbvHYRHDHr+Wcm+1u3Jzv7lufOIw343qzGdCYJaYEh0QldEzZl/lsF/8sq+n
 FWtu1dPoQ5a/DLTmjoMgb+6pW+f3Fiwd2JLBufq0zFhBbDD6LvO+il/j1P9GmIhsYtRm
 vT9Q==
X-Gm-Message-State: AOAM533PoUBgTyt7MsQZsFS3WokC+hbBUPWB9w1uNQ3VnGyPVxKeLILQ
 W+9RMhk0wPnHbB5tuSTQxkM=
X-Google-Smtp-Source: ABdhPJx317Mwb/pjlxKQylOoep3u9EFCLyet/MQ0xMeM0WG7ENaXqps6+2cF3iNKM4R0oCScJj45zw==
X-Received: by 2002:ac2:5ec1:: with SMTP id d1mr8840565lfq.589.1608665074730; 
 Tue, 22 Dec 2020 11:24:34 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id n22sm2806790lfe.230.2020.12.22.11.24.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:24:34 -0800 (PST)
Subject: Re: [PATCH v2 43/48] ARM: tegra: Add OPP tables and power domains to
 Tegra20 device-tree
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-44-digetx@gmail.com>
 <20201222054745.2am4bcbk5df5aqzj@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <e3ed3b17-b549-860b-1dc2-cb1d6eb3b90b@gmail.com>
Date: Tue, 22 Dec 2020 22:24:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222054745.2am4bcbk5df5aqzj@vireshk-i7>
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

MjIuMTIuMjAyMCAwODo0NywgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy90ZWdyYTIwLXBlcmlwaGVyYWxzLW9wcC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
dGVncmEyMC1wZXJpcGhlcmFscy1vcHAuZHRzaQo+PiBpbmRleCBiODRhZmVjZWExNTQuLjdlMDE1
Y2RmYmM1NSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvdGVncmEyMC1wZXJpcGhl
cmFscy1vcHAuZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy90ZWdyYTIwLXBlcmlwaGVy
YWxzLW9wcC5kdHNpCj4+IEBAIC0xLDYgKzEsNDYgQEAKPj4gIC8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wCj4+ICAKPj4gIC8gewo+PiArCWNvcmVfb3BwX3RhYmxlOiBjb3JlLXBv
d2VyLWRvbWFpbi1vcHAtdGFibGUgewo+PiArCQljb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2lu
dHMtdjIiOwo+PiArCQlvcHAtc2hhcmVkOwo+PiArCj4+ICsJCWNvcmVfb3BwXzk1MDogb3BwQDk1
MDAwMCB7Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDk1MDAwMCA5NTAwMDAgMTMwMDAwMD47Cj4+
ICsJCQlvcHAtbGV2ZWwgPSA8OTUwMDAwPjsKPj4gKwkJfTsKPiAKPiBJIGFtIG5vdCBzdXJlIEkg
ZnVsbHkgdW5kZXJzdGFuZCB0aGlzLCB3aHkgZG9lcyBpdCBoYXZlIGJvdGggbWljcm92b2x0IGFu
ZCBsZXZlbAo+IHByb3BlcnRpZXMgPwo+IAoKVGhlIGxldmVsIGlzIHVzZWQgYnkgZXZlcnl0aGlu
ZyByZWxhdGVkIHRvIEdFTlBELCB3aGlsZSB2b2x0YWdlIGlzIHVzZWQKYnkgdGhlIGRvbWFpbiBk
cml2ZXIuCgpJIHRoaW5rIGl0J3MgY2xlYW5lciB0byBzZXBhcmF0ZSB0aGUgbGV2ZWwgZnJvbSB2
b2x0YWdlLCBldmVuIHRob3VnaAp0aGV5IGFyZSBzZXQgdG8gdGhlIHNhbWUgdmFsdWVzLCB3aGlj
aCBpcyBkb25lIHB1cmVseSBmb3IgY29udmVuaWVuY2UuClRoZSAwLDEsMiwzIGxldmVscyBhcmUg
bWVhbmluZ2xlc3MgaW4gdGhlIGNvbnRleHQgb2YgdGhpcyBwb3dlciBkb21haW4sCndoaWxlIHZv
bHRhZ2VzIG1ha2UgdG90YWwgc2Vuc2UuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
