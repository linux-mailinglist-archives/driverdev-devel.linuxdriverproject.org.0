Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 623DE2AE194
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 22:23:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76FB0865E2;
	Tue, 10 Nov 2020 21:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3nh65LEpqfV; Tue, 10 Nov 2020 21:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02D318630A;
	Tue, 10 Nov 2020 21:23:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27E8A1BF3C2
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 245EB871FE
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tKM6BJ+KNWHx for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 21:22:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 436D5871DC
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 21:22:39 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id z21so115461lfe.12
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 13:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O1QtVEkYEMqrGZnO3N+ikHLcN2K0lknqNXllLeFS2LQ=;
 b=pB7fl8izxNp5oNkWX4iV/qwkw0tyT6eKEwrQECXK3mUYSaC9dEomYF01GGhBeLvlre
 IkJSckgzCF8yZam1usa2Jo4Er2ja4k4zzkpSBew8MmEZXC96xHJQk3lRcxEA4qY/zn3W
 t0glRvmScD5cdr0KuSOI087ThfQ+eKd9+Bd5BsIwlT8LB6LgNr4a8o7RktG3DzW1JazY
 6R3B+PEEKEA2UjJmoBvax2MxASTpMaQOmZDx5sptHM2orbaZVCDc7unOWMlHObXXd0ce
 1Y+U7h50J/kqvEhDvKkpVnRdNbf+D8CYHfPRYUX90/q5RRdutqjkRkS4Og8de1BLbTKb
 Tsfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O1QtVEkYEMqrGZnO3N+ikHLcN2K0lknqNXllLeFS2LQ=;
 b=BV7N9p8eVEcy34wW5O5T8XaDHGKgS4WghWxDwtxueh1lfl57iaeFx9L6G1iyXmZ0oT
 z4m82Jg8h2V+9uH3fA2HyfjTUsVP3WZ4LjC3KOmnIf17Z1wfHmjJ5TSAk8ON4J3qmfYW
 obAnxGAe1iGo1a1a6EYcNxw0LH/Xt2b1wgZM1WAMkCJE1wkYUuwW8oKSd0k/1XobD4sU
 +01MFGplMGzpBSlj3IjyWhKxIAWdko2ZN+Cn+2vPZ/hn4Bdg46do+MoJ6iEdGRuat1kY
 XKacdVAyOo43f5JtRxsaobC2cbFYruNi2VpC9FF+m3QjEQd0vQw5sfjXwjvqIAfgoiAw
 BPgw==
X-Gm-Message-State: AOAM531J0gL50MXsmX+7zveV7L5lPrSnyOJVpSpT4wwM+pDJ4/7ZMLpA
 wIjbkMaC4NIplWICQWddPiI=
X-Google-Smtp-Source: ABdhPJzi09fmTClirVB+g1KeYq8cdhWhqFsNo1yJJvug6dXImrBFIfNq2x3V49HaEnjk9uCntp5yAg==
X-Received: by 2002:a19:2d59:: with SMTP id t25mr8865987lft.480.1605043357309; 
 Tue, 10 Nov 2020 13:22:37 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id u3sm5575lfm.57.2020.11.10.13.22.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 13:22:36 -0800 (PST)
Subject: Re: [PATCH v1 07/30] soc/tegra: Add sync state API
To: Thierry Reding <thierry.reding@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-8-digetx@gmail.com> <20201110204727.GG2375022@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <71934373-8425-345b-7719-0903f846119f@gmail.com>
Date: Wed, 11 Nov 2020 00:22:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201110204727.GG2375022@ulmo>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTAuMTEuMjAyMCAyMzo0NywgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gdGVncmFf
c29jX2Zvcl9lYWNoX2RldmljZQo+IAo+IEkgd29uZGVyIGlmIHlvdSBjb3B5L3Bhc3RlZCB0aGlz
IG9yIGlmIHlvdSBnb3QgcmVhbGx5IGx1Y2t5IHRvIG1pc3R5cGUKPiB0aGlzIGFsbCB0aHJlZSB0
aW1lcy4KCkNvcGllZCBvZiBjb3Vyc2UgOikKCkkgYWRkZWQgYSBzcGVjaWFsIHNwZWxsIGNoZWNr
aW5nIHJ1bGUgZm9yIHRoaXMgdHlwbywgYnV0IGl0IGRvZXMgaGVscApyZWxpYWJseS4KCi4uLgo+
PiArCXRlcmdhX3NvY19mb3JfZWFjaF9kZXZpY2Uoc29jX2Rldikgewo+PiArCQlkbyB7Cj4+ICsJ
CQkvKgo+PiArCQkJICogRGV2aWNlcyBsaWtlIGRpc3BsYXkgY29udHJvbGxlciBoYXZlIG11bHRp
cGxlCj4+ICsJCQkgKiBpbnN0YW5jZXMgd2l0aCB0aGUgc2FtZSBjb21wYXRpYmxlLiBIZW5jZSB3
ZSBuZWVkCj4+ICsJCQkgKiB0byB3YWxrIHVwIHRoZSB3aG9sZSB0cmVlIGluIG9yZGVyIHRvIGFj
Y291bnQgdGhvc2UKPj4gKwkJCSAqIG11bHRpcGxlIGluc3RhbmNlcy4KPj4gKwkJCSAqLwo+PiAr
CQkJbnAgPSBvZl9maW5kX2NvbXBhdGlibGVfbm9kZShwcmV2X25wLCBOVUxMLAo+PiArCQkJCQkJ
ICAgICBzb2NfZGV2LT5jb21wYXRpYmxlKTsKPj4gKwkJCW9mX25vZGVfcHV0KHByZXZfbnApOwo+
PiArCQkJcHJldl9ucCA9IG5wOwo+PiArCj4+ICsJCQlpZiAob2ZfZGV2aWNlX2lzX2F2YWlsYWJs
ZShucCkpIHsKPj4gKwkJCQlwcl9kZWJ1ZygiYWRkZWQgJXNcbiIsIHNvY19kZXYtPmNvbXBhdGli
bGUpOwo+PiArCQkJCXNvY19kZXYtPnN5bmNfY291bnQrKzsKPj4gKwkJCX0KPj4gKwkJfSB3aGls
ZSAobnApOwo+IAo+IE1heWJlIHVzZSBmb3JfZWFjaF9jb21wYXRpYmxlX25vZGUoKSBmb3IgdGhh
dCBpbnNpZGUgbG9vcD8KCkdvb2QgcG9pbnQhIEkgdGhpbmsgdGhlcmUgaXMgYWN0dWFsbHkgYW4g
b2Zfbm9kZV9wdXQoKSBidWcgaW4gY3VycmVudAp2YXJpYW50LCB3aGljaCBmb3JfZWFjaF9jb21w
YXRpYmxlX25vZGUoKSB3b3VsZCBzYWZlIGZyb20uCgo+PiArCX0KPj4gKwo+PiArCXJldHVybiAw
Owo+PiAgfQo+PiArcG9zdGNvcmVfaW5pdGNhbGxfc3luYyh0ZWdyYV9zb2NfZGV2aWNlc19pbml0
KTsKPiAKPiBUaGlzIGlzIHVuZm9ydHVuYXRlLiBJIHJlY2FsbCBoYXZpbmcgdGhpcyBkaXNjdXNz
aW9uIG11bHRpcGxlIHRpbWVzIGFuZAo+IG9uZSBpZGVhIHRoYXQgaGFzIGJlZW4gZmxvYXRpbmcg
YXJvdW5kIGZvciBhIHdoaWxlIHdhcyB0byBsZXQgYSBkcml2ZXIKPiBiaW5kIGFnYWluc3QgdGhl
IHRvcC1sZXZlbCAiYnVzIiBub2RlLiBUaGF0IGhhcyB0aGUgYWR2YW50YWdlIHRoYXQgaXQKPiBi
b3RoIGFuY2hvcnMgdGhlIGNvZGUgc29tZXdoZXJlLCBzbyB3ZSBkb24ndCBoYXZlIHRvIHBsYXkg
dGhpcyBnYW1lIG9mCj4gY2hlY2tpbmcgZm9yIHRoZSBTb0Mgd2l0aCBzb2NfaXNfdGVncmEoKSwg
YW5kIGl0IHByb3Blcmx5IG9yZGVycyB0aGlzCj4gd2l0aCByZXNwZWN0IHRvIHRoZSBjaGlsZCBk
ZXZpY2VzLCBzbyB3ZSB3b3VsZG4ndCBoYXZlIHRvIG1ha2UgdGhpcyBhCj4gcG9zdGNvcmVfaW5p
dGNhbGwuCj4gCj4gTWlnaHQgYmUgd29ydGggbG9va2luZyBhdCB0aGF0IGFnYWluLCBidXQgZm9y
IG5vdyB0aGlzIHNlZW1zIG9rYXkuCgpUaGFua3MKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
