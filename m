Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A0D2E0E99
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:14:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C21DA8698C;
	Tue, 22 Dec 2020 19:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SX0f+JN0hU3Z; Tue, 22 Dec 2020 19:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC1F6867B6;
	Tue, 22 Dec 2020 19:14:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F2FE1BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:14:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B475867B6
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ueBvqSYG2n8 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D4D28673C
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:14:39 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id o13so34519888lfr.3
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XzA+IxTqOiwjX/OrglCXeb/ESpno+XzmysujmIzCZFM=;
 b=h6Un3O0GRIs20IfATLi+caPIyTbxDAcApXIG4ly+tb+Ff/AsSFUMzbqRg8x3QcB6R+
 /lifUSEyU9TWfJc8mLHdB9d8Y9qRGestdhGRPway3GOSGQ8cuy0pUSKXN4e5DxzEnKwD
 fYR1YIf05Ra2zD+xV/OtVJhAAejE7qDSsealn/k6wRndcA+Kr9Qd5G4O+fFM4ffhZQx5
 iWL+fsem7uxnvLNF9sQvi3DoxjBI8dadxS+frkf0ytoCPFY3u7CLr3wTEKUDK5cvpLd6
 ZVfYRe9qC4R3pywKEw8dY8c5wQiJMnxeiGLjUsFSzmvoCygv4r2QJhnbSecDGxF5TC88
 NxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XzA+IxTqOiwjX/OrglCXeb/ESpno+XzmysujmIzCZFM=;
 b=UagIqHVBjMImUPSyfXL8fxyvENVLvFxrR1Fb+txyZhIfq4iO9cy6XqErIuOKGOQ4gr
 D8XOkt1WvRTdnwyt8A/jbTbI5IRFHJqywlud2gZ+GusaTxpUw/x3XK0ruElQGt1NmFq2
 iCxjXXnAaxSeWMw++IcRkbyVzf4NllEOV2wuJ73xx84rbeY4v5g8gFcfSyaCNUVq5f/H
 V9zRf2Mcs1eaQXbsMn0eBirbWl+GsXd3E90phjKbfBfX/kf1c/3FTxbs6EEjdAw+VKaM
 cpHTzrGONCsE4h0mpmEehtodY6NLFfYuhBjOdDOyrt6RmwWwzT7RRb/ylUqiEPp08PJ2
 3Jxg==
X-Gm-Message-State: AOAM53299s4O4ShBWtB+GYMHcYi44Mg7X72x3iZeVVOlYK3QtA3n5EcA
 vNNQksqNl2GuH4ITdS1oVAo=
X-Google-Smtp-Source: ABdhPJx7qPXV3sur6eNMVZg5jfo2nbqg0IGWfAP0Kv+mCCycwkuquOyLrOc/kJVZYxAbFZWEAV5uLg==
X-Received: by 2002:a2e:a366:: with SMTP id i6mr10568406ljn.427.1608664477207; 
 Tue, 22 Dec 2020 11:14:37 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id h23sm3018460ljh.115.2020.12.22.11.14.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:14:36 -0800 (PST)
Subject: Re: [PATCH v2 00/48] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201218071455.vdeozvvnmkjtrejt@vireshk-i7>
 <c0976db7-ae66-740c-d95f-501d81c99fa0@gmail.com>
 <20201222091558.mhqf4oytviwc6b3h@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <6281108a-5d76-bf6e-13ea-e27808c829b9@gmail.com>
Date: Tue, 22 Dec 2020 22:14:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222091558.mhqf4oytviwc6b3h@vireshk-i7>
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

MjIuMTIuMjAyMCAxMjoxNSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTgtMTItMjAs
IDE2OjUxLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEFscmlnaHQsIGFsdGhvdWdoIEkgaGF2
ZW4ndCBwcmV0ZW5kZWQgdGhhdCB2MiBwYXRjaGVzIHNob3VsZCBiZSBtZXJnZWQKPj4gcmlnaHQg
YXdheSBzaW5jZSB0aGV5IGFyZSBmdW5kYW1lbnRhbGx5IGRpZmZlcmVudCBmcm9tIHYxLCBhbmQg
dGh1cywgYWxsCj4+IHBhdGNoZXMgbmVlZCB0byBiZSByZXZpZXdlZCBmaXJzdC4KPiAKPiBJIGFn
cmVlLiBJIGhhdmUgZG9uZSBzb21lIGJhc2ljIHJldmlldyBmb3IgdGhlIHN0dWZmLgoKVGhhbmsg
eW91IGZvciB0aGUgcmV2aWV3LgoKPj4gSWYgdGhlIGN1cnJlbnQgT1BQIGNoYW5nZXMgbG9vayBn
b29kIHRvIHlvdSwgdGhlbiBwbGVhc2UgZ2l2ZSB5b3VycyByLWIKPj4gdG8gdGhlIHBhdGNoZXMu
IFRoYW5rcyBpbiBhZHZhbmNlIQo+IAo+IHItYi15IGlzbid0IHJlcXVpcmVkIGFzIHRoZXkgd2ls
bCBnbyB0aHJvdWdoIG15IHRyZWUgaXRzZWxmLiBTbyBpZiBldmVyeW9uZSBpcwo+IGhhcHB5IHdp
dGggdGhlIGlkZWEsIHBsZWFzZSBzdWJtaXQgdGhlIHBhdGNoZXMgc2VwYXJhdGVseSAoZml4ZXMs
IGltcHJvdmVtZW50cywKPiBkZXZtXyosIGV0YykuCgpva2F5Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
