Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8578F2E2178
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 21:37:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2072D87398;
	Wed, 23 Dec 2020 20:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TX-boSEyqKZM; Wed, 23 Dec 2020 20:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9496687350;
	Wed, 23 Dec 2020 20:37:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B13981BF86B
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 20:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ADD9A86960
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 20:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9orhYPwuvBWU for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 20:37:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E60A486945
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 20:37:50 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id o13so331349lfr.3
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 12:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3ureyQ26WVdvpPiApVvGnYNle5Fa1VHsYVcg9Aec3Z4=;
 b=JB7ZNM87FEjcnjJQONVUuTF17BvJ9V9ZS3hebD+x6uzZg2DGPHE7Lj1X+o+J9ISuus
 85ihjaar8Lr4oCD3QODU4FGkYnl2eCgmVKKIopMmCAmQ/KoYdSiq45M2PLliJt5mggct
 kbQvz4I/RnBpUtpDfvzstCJx9yCv5A+xF1dc3waB/YCRipctvTjPnf7xPX8lKAn0lIyg
 /ebkOqGUMAUeBqGUgJZBD1K+4lyYODAmeakH/EFLCs6V/OvqtWh98BegqF1PG/j41Vcv
 CBmasECEhUJ0viZjm5sowMCRQ1vgelVHsqCnS+LtFcP0F8Jn0Z7f5agO/J+nwc1xMDWE
 EGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3ureyQ26WVdvpPiApVvGnYNle5Fa1VHsYVcg9Aec3Z4=;
 b=icR3Q6+gcrwbJqve9YrCmjrxN8T9bJaSxzrVttt4ijNQuW6C5+w84pztGKHpfrt+Ka
 bgnln7whRaih2gCDEvLIbzE8ZBJzy+WzyqP4rRXPCgMrOUxwlshnv3/eXLKo154uPVcS
 qzeULaK7hVL8KydiWWgK5oXc3hBiD6WrsvKFT+lyJtNy0x7QAp/8+567OeMoJz5SFQIS
 WTU+dUszqnuG4Tl2cvfOzVChzJ+0S2Jea1mfT0BUn0mUchKSt+cNPoT/RnaeTVWvScwS
 hgI/tKBMfpkbRTZ7cjTsbfKOu+oOcRKKNtf6CicdtyJZehJ96UbMnW7hGrQMS39b+nUG
 sHLg==
X-Gm-Message-State: AOAM530KcXcWg+r/PhBcZeNOSTXeEZ4kUoH69VZmULaEer9ITh6ZZc9i
 ptY/MT/c6PycXgH1URbNHriFB1ezHfc=
X-Google-Smtp-Source: ABdhPJxs2A1nOlz1juXuG3l0yvblA/Eo3IZZbB6Wrfw9MxG4tEEGohUi/FH/Bgb4gz3Fw9m3GGijnw==
X-Received: by 2002:a2e:9f01:: with SMTP id u1mr12029965ljk.386.1608755869072; 
 Wed, 23 Dec 2020 12:37:49 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id z14sm3349336lfd.283.2020.12.23.12.37.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Dec 2020 12:37:48 -0800 (PST)
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
 <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
 <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
 <20201223041931.klnppy4fu3sdgtsz@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <f00e0c74-8d9a-d3d3-81bb-3ac25a74175d@gmail.com>
Date: Wed, 23 Dec 2020 23:37:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201223041931.klnppy4fu3sdgtsz@vireshk-i7>
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

MjMuMTIuMjAyMCAwNzoxOSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMjItMTItMjAs
IDIyOjE1LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDIyLjEyLjIwMjAgMDk6NDIsIFZpcmVz
aCBLdW1hciDQv9C40YjQtdGCOgo+Pj4gT24gMTctMTItMjAsIDIxOjA2LCBEbWl0cnkgT3NpcGVu
a28gd3JvdGU6Cj4+Pj4gQWRkIGEgY2VpbCB2ZXJzaW9uIG9mIHRoZSBkZXZfcG1fb3BwX2ZpbmRf
bGV2ZWwoKS4gSXQncyBoYW5keSB0byBoYXZlIGlmCj4+Pj4gbGV2ZWxzIGRvbid0IHN0YXJ0IGZy
b20gMCBpbiBPUFAgdGFibGUgYW5kIHplcm8gdXN1YWxseSBtZWFucyBhIG1pbmltYWwKPj4+PiBs
ZXZlbC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdt
YWlsLmNvbT4KPj4+Cj4+PiBXaHkgZG9lc24ndCB0aGUgZXhhY3QgdmVyc2lvbiB3b3JrIGZvciB5
b3UgaGVyZSA/Cj4+Pgo+Pgo+PiBUaGUgZXhhY3QgdmVyc2lvbiB3b24ndCBmaW5kIE9QUCBmb3Ig
bGV2ZWw9MCBpZiBsZXZlbHMgZG9uJ3Qgc3RhcnQgd2l0aAo+PiAwLCB3aGVyZSAwIG1lYW5zIHRo
YXQgbWluaW1hbCBsZXZlbCBpcyBkZXNpcmVkLgo+IAo+IFJpZ2h0LCBidXQgd2h5IGRvIHlvdSBu
ZWVkIHRvIHNlbmQgMCBmb3IgeW91ciBwbGF0Zm9ybSA/Cj4gCgpUbyBwdXQgcG93ZXIgZG9tYWlu
IGludG8gdGhlIGxvd2VzdCBwZXJmb3JtYW5jZSBzdGF0ZSB3aGVuIGRldmljZSBpcyBpZGxpbmcu
CgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4xMC1yYzIvc291cmNlL2RyaXZl
cnMvb3BwL2NvcmUuYyNMODk3CgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4x
MC1yYzIvc291cmNlL2RyaXZlcnMvb3BwL2NvcmUuYyNMNzg1CgpBbHNvIHBsZWFzZSBzZWUgcGF0
Y2ggMzIsIHRlZ3JhX2Nsb2NrX3J1bnRpbWVfc3VzcGVuZCgpLgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
