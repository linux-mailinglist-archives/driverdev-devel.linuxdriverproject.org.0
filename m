Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ADC2E0EC0
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:18:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1E241274ED;
	Tue, 22 Dec 2020 19:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9FBcm8FST1-g; Tue, 22 Dec 2020 19:18:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8CA22237C8;
	Tue, 22 Dec 2020 19:18:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D46D51BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D10F685E60
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZHhhwI_CDf3w for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:18:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00CDF85E51
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:18:25 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id o19so34608016lfo.1
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lcB/y6qU20WLnd5c6LTo3G6tp/OwhO3SBtrWVG5rCFc=;
 b=EejIC70QVALti28WPnuavpGynvc0S9z9Vat1lwcwhaT/aIgj9d4pqxEwv3zOyTaIDP
 wGnbYvDmOM6vimG54VEZjIQp4HBfaJWqDOmjLZ/8vaQ6pr2vm+hcXu+xBS1YQKE6uu/q
 kr+/N6OrkpQtpLJ8kOlg9V+0EWS9C9q8vkq77I+5GgvFDikfZsnl+6INCAImnw1+EMTk
 f0qcHVrmlK+RsBEVlZ6PyDiIHvFqVURHyeE0Q0HQ0L7Dw2nQxQ5thn19hiB9bz6Mr+nX
 WDGhtJrdSJtXUrKHzMntzzgWLTBClIU28dTWDdENyX/ey1+pWizesNNPD1LK+s6g9qni
 ZyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lcB/y6qU20WLnd5c6LTo3G6tp/OwhO3SBtrWVG5rCFc=;
 b=emTklDfwfwSUOMWqfK6+vJbq7N+nKEW6gnHNdRizCtTxCklG4HE+TA1+w9XZ0zUOb6
 FFdYBqc+8iSTKnjC2p4vU2zPTdghWcc1Gze0eH2aoeGNoKYANNInZSY9M5sbuOJkg76x
 4r4WJ/Msg03PsnWgsK0j46SfeCE33A2zMKd9gkgyoooTUE0i7I9prniKvR2494Ds+yiD
 +Q6YlkKeS+rmhkwDnuGG69d7SrZ5jrJEmVu21TlL+Huv04iK+AUL/3KqfdGV6YEiOkbZ
 7qMrIv5yx04F73s8WAfce6T+nKvyGG8pgiK2zS74VGmIRcvh4B6OLyG/BpZBKh1kBQk4
 0tFQ==
X-Gm-Message-State: AOAM533sGTti4Ki1FjuSeESyJ2Yw18cyoLfT6pfTyrSTgFNAdLaDVtOm
 vRM/RgILf56AmIkLfVXzAPn/UFoaDuo=
X-Google-Smtp-Source: ABdhPJxW/f8t8lnOY/9IpSrJMD5QC3Uvhw+YOcc4pHXTNt7pE46dn90vPQ/S9qMKb9XmV6y5yqIGrQ==
X-Received: by 2002:a19:950:: with SMTP id 77mr9116995lfj.133.1608664704345;
 Tue, 22 Dec 2020 11:18:24 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id b5sm2782768lfg.13.2020.12.22.11.18.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:18:23 -0800 (PST)
Subject: Re: [PATCH v2 15/48] opp: Support set_opp() customization without
 requiring to use regulators
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-16-digetx@gmail.com>
 <20201222090139.vopgc2ju72kr4ujy@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <8fb90b3c-dcfe-e5e2-124e-bbb6d4bda0ad@gmail.com>
Date: Tue, 22 Dec 2020 22:18:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222090139.vopgc2ju72kr4ujy@vireshk-i7>
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

MjIuMTIuMjAyMCAxMjowMSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IFN1cHBvcnQgc2V0X29wcCgpIGN1c3Rv
bWl6YXRpb24gd2l0aG91dCByZXF1aXJpbmcgdG8gdXNlIHJlZ3VsYXRvcnMuIFRoaXMKPj4gaXMg
bmVlZGVkIGJ5IGRyaXZlcnMgd2hpY2ggd2FudCB0byB1c2UgZGV2X3BtX29wcF9zZXRfcmF0ZSgp
IGZvciBjaGFuZ2luZwo+PiByYXRlcyBvZiBhIG11bHRpcGxlIGNsb2NrcyBhbmQgZG9uJ3QgbmVl
ZCB0byB0b3VjaCByZWd1bGF0b3IuCj4+Cj4+IE9uZSBleGFtcGxlIGlzIE5WSURJQSBUZWdyYTMw
LzExNCBTb0NzIHdoaWNoIGhhdmUgdHdvIHNpYmxpbmcgM0QgaGFyZHdhcmUKPj4gdW5pdHMgd2hp
Y2ggc2hvdWxkIGJlIHVzZSB0byB0aGUgc2FtZSBjbG9jayByYXRlLCBtZWFud2hpbGUgdm9sdGFn
ZQo+PiBzY2FsaW5nIGlzIGRvbmUgdXNpbmcgYSBwb3dlciBkb21haW4uIEluIHRoaXMgY2FzZSBP
UFAgdGFibGUgZG9lc24ndCBoYXZlCj4+IGEgcmVndWxhdG9yLCBjYXVzaW5nIGEgTlVMTCBkZXJl
ZmVyZW5jZSBpbiBfc2V0X29wcF9jdXN0b20oKS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5
IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvb3BwL2NvcmUu
YyB8IDE2ICsrKysrKysrKysrKy0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9vcHAvY29yZS5j
IGIvZHJpdmVycy9vcHAvY29yZS5jCj4+IGluZGV4IDNkMDJmZTMzNjMwYi4uNjI1ZGFlN2E1ZWNi
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL29wcC9jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9vcHAv
Y29yZS5jCj4+IEBAIC04MjgsMTcgKzgyOCwyNSBAQCBzdGF0aWMgaW50IF9zZXRfb3BwX2N1c3Rv
bShjb25zdCBzdHJ1Y3Qgb3BwX3RhYmxlICpvcHBfdGFibGUsCj4+ICAJCQkgICBzdHJ1Y3QgZGV2
X3BtX29wcF9zdXBwbHkgKm9sZF9zdXBwbHksCj4+ICAJCQkgICBzdHJ1Y3QgZGV2X3BtX29wcF9z
dXBwbHkgKm5ld19zdXBwbHkpCj4+ICB7Cj4+IC0Jc3RydWN0IGRldl9wbV9zZXRfb3BwX2RhdGEg
KmRhdGE7Cj4+ICsJc3RydWN0IGRldl9wbV9zZXRfb3BwX2RhdGEgKmRhdGEsIHRtcF9kYXRhOwo+
PiArCXVuc2lnbmVkIGludCByZWd1bGF0b3JfY291bnQ7Cj4+ICAJaW50IHNpemU7Cj4+ICAKPj4g
LQlkYXRhID0gb3BwX3RhYmxlLT5zZXRfb3BwX2RhdGE7Cj4+ICsJaWYgKG9wcF90YWJsZS0+c2V0
X29wcF9kYXRhKSB7Cj4+ICsJCWRhdGEgPSBvcHBfdGFibGUtPnNldF9vcHBfZGF0YTsKPj4gKwkJ
cmVndWxhdG9yX2NvdW50ID0gb3BwX3RhYmxlLT5yZWd1bGF0b3JfY291bnQ7Cj4+ICsJfSBlbHNl
IHsKPj4gKwkJZGF0YSA9ICZ0bXBfZGF0YTsKPj4gKwkJcmVndWxhdG9yX2NvdW50ID0gMDsKPj4g
Kwl9Cj4+ICsKPj4gIAlkYXRhLT5yZWd1bGF0b3JzID0gb3BwX3RhYmxlLT5yZWd1bGF0b3JzOwo+
PiAtCWRhdGEtPnJlZ3VsYXRvcl9jb3VudCA9IG9wcF90YWJsZS0+cmVndWxhdG9yX2NvdW50Owo+
PiArCWRhdGEtPnJlZ3VsYXRvcl9jb3VudCA9IHJlZ3VsYXRvcl9jb3VudDsKPj4gIAlkYXRhLT5j
bGsgPSBvcHBfdGFibGUtPmNsazsKPj4gIAlkYXRhLT5kZXYgPSBkZXY7Cj4+ICAKPj4gIAlkYXRh
LT5vbGRfb3BwLnJhdGUgPSBvbGRfZnJlcTsKPj4gLQlzaXplID0gc2l6ZW9mKCpvbGRfc3VwcGx5
KSAqIG9wcF90YWJsZS0+cmVndWxhdG9yX2NvdW50Owo+PiArCXNpemUgPSBzaXplb2YoKm9sZF9z
dXBwbHkpICogcmVndWxhdG9yX2NvdW50Owo+PiAgCWlmICghb2xkX3N1cHBseSkKPj4gIAkJbWVt
c2V0KGRhdGEtPm9sZF9vcHAuc3VwcGxpZXMsIDAsIHNpemUpOwo+PiAgCWVsc2UKPiAKPiBJIGRv
bid0IHNlZSB5b3UgbWFraW5nIHVzZSBvZiB0aGlzIGluIHRoaXMgcGF0Y2hzZXQuIEhvdyBkaWQg
eW91IGdldCB0aGlzIHRvCj4gY3Jhc2ggPwo+IAoKUGxlYXNlIHNlZSBwYXRjaCAzOCB3aGVyZSAz
ZCBkcml2ZXIgbWFrZXMgdXNlIG9mCmRldm1fcG1fb3BwX3JlZ2lzdGVyX3NldF9vcHBfaGVscGVy
KCkuCgpUaGUgb3BwX3RhYmxlLT5zZXRfb3BwX2RhdGE9TlVMTCBhbmQgb3BwX3RhYmxlLT5yZWd1
bGF0b3JfY291bnQ9LTEgaWYKT1BQIHRhYmxlIGRvZXNuJ3QgdXNlIGEgcmVndWxhdG9yLCBoZW5j
ZSB0aGUgY3Jhc2ggaGFwcGVucy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
