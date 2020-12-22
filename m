Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B11E42E0EC1
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F32E286970;
	Tue, 22 Dec 2020 19:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWBWSiBKNqtZ; Tue, 22 Dec 2020 19:19:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4D6686757;
	Tue, 22 Dec 2020 19:19:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D7E01BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:19:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 39C5B87244
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cP+rL4Gv8boI for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:19:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 38C8487228
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:19:30 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id o17so34572720lfg.4
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ulrdoVbGsjwhkH0t5gig0hbyBd9UYXc8gP96903YDxw=;
 b=TfyVQnVt/DSKdLojw95WJ4Y3kr9B3JreJXSNeZLBEluhzjCcPf6K2C/ui4C3A+RAcn
 NzqrO2ZQ73TaLD5uGBoTA4sttmca1xpwHqU863FtGcUC88cxmEAsuxQikrmwuidA4uCP
 nm3AAm9TZcl214JdJVxmbY480arDu40d/ZRO/LMZqIPpdTU56ZnmabVMuRGGAvhILYBZ
 Lo8a4O4xH2G8xK6eSxS2dJykl50tEw6QNTNuUIOxtAh5QuaHw5oC9C+9K8KQXGYHYHDU
 yCrcC+UxT5hZUbtUNDzWRin0i+Cl3uko4BCCxLbueXyFERpjQkeXnBMSkzUwEXUzI6/8
 3Csg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ulrdoVbGsjwhkH0t5gig0hbyBd9UYXc8gP96903YDxw=;
 b=CUvJv5rHK58GSi0GCoZurb5cwMgCVHQa86gaJzkLujxi4bAxGrW+OHWby8dF47pSQ8
 b3YE6vKsiflRAc3zxGUDi7bnaisuPOv7wfKwPQMyvqc+CvieNx8dMA69Hm/39LFT6dKJ
 JMnpkEvwDeZvc6CSwBgb+sOS1r94NlPp7I6TymHqfXCB30VOWtnM7vLvTG3L9biquiXQ
 fg/JNz9nl2nrzJ7dzP6l2vvzghJZZ2EOrluNYEP8sy9UjhNLn6s1535x7Yfle2Z02n5E
 OPEz+cmy31nGLDZnmN87l6ja/1p2I6YhpK2L/kl7Cj2HFjS5+q6v0XcKpA08vOBY4BVF
 Ogeg==
X-Gm-Message-State: AOAM5337C/4sGyRRjCb8vjSR9nz/g6Seif/+pAP5AwZ+1bbKOTegtkTA
 21vvtLccgIawGAkNUJ50N+A=
X-Google-Smtp-Source: ABdhPJyniuH4JIVLYX09aJTJXG2DPOZ3u4RjQh1NfGfdwzaSui65HwnwuqSmtJhso1bwXfgrrij1mg==
X-Received: by 2002:ac2:46e4:: with SMTP id q4mr8665320lfo.413.1608664768348; 
 Tue, 22 Dec 2020 11:19:28 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id w6sm3032131lji.74.2020.12.22.11.19.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:19:27 -0800 (PST)
Subject: Re: [PATCH v2 19/48] opp: Fix adding OPP entries in a wrong order if
 rate is unavailable
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-20-digetx@gmail.com>
 <20201222091255.wentz5hyt726qezg@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <db6273e6-8406-b7ae-b51d-48ceb6d21962@gmail.com>
Date: Tue, 22 Dec 2020 22:19:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222091255.wentz5hyt726qezg@vireshk-i7>
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

MjIuMTIuMjAyMCAxMjoxMiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEZpeCBhZGRpbmcgT1BQIGVudHJpZXMg
aW4gYSB3cm9uZyAob3Bwb3NpdGUpIG9yZGVyIGlmIE9QUCByYXRlIGlzCj4+IHVuYXZhaWxhYmxl
LiBUaGUgT1BQIGNvbXBhcmlzb24gaXMgZXJyb25lb3VzbHkgc2tpcHBlZCBpZiBPUFAgcmF0ZSBp
cwo+PiBtaXNzaW5nLCB0aHVzIE9QUHMgYXJlIGxlZnQgdW5zb3J0ZWQuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPj4gLS0tCj4+ICBkcml2
ZXJzL29wcC9jb3JlLmMgfCAyMyArKysrKysrKysrKystLS0tLS0tLS0tLQo+PiAgZHJpdmVycy9v
cHAvb3BwLmggIHwgIDIgKy0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
MTIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL29wcC9jb3JlLmMgYi9k
cml2ZXJzL29wcC9jb3JlLmMKPj4gaW5kZXggMzRmN2U1MzBkOTQxLi41YzdmMTMwYThkZTIgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvb3BwL2NvcmUuYwo+PiArKysgYi9kcml2ZXJzL29wcC9jb3Jl
LmMKPj4gQEAgLTE1MzEsOSArMTUzMSwxMCBAQCBzdGF0aWMgYm9vbCBfb3BwX3N1cHBvcnRlZF9i
eV9yZWd1bGF0b3JzKHN0cnVjdCBkZXZfcG1fb3BwICpvcHAsCj4+ICAJcmV0dXJuIHRydWU7Cj4+
ICB9Cj4+ICAKPj4gLWludCBfb3BwX2NvbXBhcmVfa2V5KHN0cnVjdCBkZXZfcG1fb3BwICpvcHAx
LCBzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwMikKPj4gK2ludCBfb3BwX2NvbXBhcmVfa2V5KHN0cnVj
dCBkZXZfcG1fb3BwICpvcHAxLCBzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwMiwKPj4gKwkJICAgICBi
b29sIHJhdGVfbm90X2F2YWlsYWJsZSkKPj4gIHsKPj4gLQlpZiAob3BwMS0+cmF0ZSAhPSBvcHAy
LT5yYXRlKQo+PiArCWlmICghcmF0ZV9ub3RfYXZhaWxhYmxlICYmIG9wcDEtPnJhdGUgIT0gb3Bw
Mi0+cmF0ZSkKPiAKPiByYXRlIHdpbGwgYmUgMCBmb3IgYm90aCB0aGUgT1BQcyBoZXJlIGlmIHJh
dGVfbm90X2F2YWlsYWJsZSBpcyB0cnVlIGFuZCBzbyB0aGlzCj4gY2hhbmdlIHNob3VsZG4ndCBi
ZSByZXF1aXJlZC4KClRoZSByYXRlX25vdF9hdmFpbGFibGUgaXMgbmVnYXRlZCBpbiB0aGUgY29u
ZGl0aW9uLiBUaGlzIGNoYW5nZSBpcwpyZXF1aXJlZCBiZWNhdXNlIGJvdGggcmF0ZXMgYXJlIDAg
YW5kIHRoZW4gd2Ugc2hvdWxkIHByb2NlZWQgdG8gdGhlCmxldmVscyBjb21wYXJpc29uLgoKSSBn
dWVzcyBpdCdzIG5vdCBjbGVhciBieSBsb29raW5nIGF0IHRoaXMgcGF0Y2gsIHBsZWFzZSBzZWUg
YSBmdWxsCnZlcnNpb24gb2YgdGhlIGZ1bmN0aW9uOgoKaW50IF9vcHBfY29tcGFyZV9rZXkoc3Ry
dWN0IGRldl9wbV9vcHAgKm9wcDEsIHN0cnVjdCBkZXZfcG1fb3BwICpvcHAyLAogICAgICAgICBi
b29sIHJhdGVfbm90X2F2YWlsYWJsZSkKewogIGlmICghcmF0ZV9ub3RfYXZhaWxhYmxlICYmIG9w
cDEtPnJhdGUgIT0gb3BwMi0+cmF0ZSkKICAgIHJldHVybiBvcHAxLT5yYXRlIDwgb3BwMi0+cmF0
ZSA/IC0xIDogMTsKICBpZiAob3BwMS0+YmFuZHdpZHRoICYmIG9wcDItPmJhbmR3aWR0aCAmJgog
ICAgICBvcHAxLT5iYW5kd2lkdGhbMF0ucGVhayAhPSBvcHAyLT5iYW5kd2lkdGhbMF0ucGVhaykK
ICAgIHJldHVybiBvcHAxLT5iYW5kd2lkdGhbMF0ucGVhayA8IG9wcDItPmJhbmR3aWR0aFswXS5w
ZWFrID8gLTEgOiAxOwogIGlmIChvcHAxLT5sZXZlbCAhPSBvcHAyLT5sZXZlbCkKICAgIHJldHVy
biBvcHAxLT5sZXZlbCA8IG9wcDItPmxldmVsID8gLTEgOiAxOwogIHJldHVybiAwOwp9CgpQZXJo
YXBzIHdlIGNvdWxkIGNoZWNrIHdoZXRoZXIgb3BwMS0+cmF0ZT0wLCBsaWtlIGl0J3MgZG9uZSBm
b3IgdGhlCm9wcDEtPmJhbmR3aWR0aC4gSSdsbCBjb25zaWRlciB0aGlzIHZhcmlhbnQgZm9yIHYz
LCB0aGFua3MuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
