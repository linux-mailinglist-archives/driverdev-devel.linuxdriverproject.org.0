Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E832AE175
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 22:17:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D34085F4B;
	Tue, 10 Nov 2020 21:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWt9n-kKcMLh; Tue, 10 Nov 2020 21:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D33F85D6F;
	Tue, 10 Nov 2020 21:17:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0D001BF3C2
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA78186151
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iUp2i1rTIo4r for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 21:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B41858613C
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 21:17:10 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id i6so177670lfd.1
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 13:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EGw/lJ2fFtGQXxuehfGhLjJtLJBME8AehCZBZ0GpWKM=;
 b=NAjhIP+3pP7247wVyMNIoqS0eBQ6Ub6VXzYDVkDW5hh7OeVhZnrCfqxE2LxWyJsKMV
 90KLTj2Sz4TgROVkbS2FdYgKiKElggblFjPltnMdRMP+LsofRfySn0ZAVRiZ/rJhCxi6
 Ihb4k6looEtRmT1ELEZ0lM7wPWjSKyFQbZqNuGGZWJnLFo6POVOBCZ35lDBdx6WUlyZo
 hFkkJUxBTXfhYM1L6nmK/Cdx6WzQfwcvnzNWLiRd/LuWn+G/zTP5qT4snC3j+huX+nYr
 tA9dCLNuMRHfewvKYy4Ua/ksZbn9fdwQO2uPYg+XI2muKxWHeQxfYp9b34Tx6cpXjg8z
 oyIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EGw/lJ2fFtGQXxuehfGhLjJtLJBME8AehCZBZ0GpWKM=;
 b=B72/uX3sMsOmgQv0hiyaRbRStNVGJBSorqxIv04hScxiv4GzQnSModdurEk5bLeTH4
 wo845l+bM5fm1X4t/OPplgV0ddJWb71xJeroKWCdpEUxy1fJEZG4ykQD8+oAtBzJEUaY
 WB2CcYLL5m94MynyYfz0UG2ZrTAiDKTqmQ/dQxVolY4MgPiKZkCW4ZAciUgbl981QFt7
 JzzfpNQLO6Zbd8AG1q99DNXmZ+/ITRc13TTk8ygL1RoC+T5GDCOw60MfKsAIHLbZGcp9
 RbjGU9jZ9TxEhYquo/zsWGxQYKSS2DGDKTU4jRnneL4sEnAGuUrU6siaXxHd3TfQlE76
 uyQw==
X-Gm-Message-State: AOAM533eTNwghmcCL5FhizmJ8ZR6jJtGYfqfBoCwzAvLlUn0UFEVc/Av
 ZyFNRXmeYpsXfmg9ELQAHzI=
X-Google-Smtp-Source: ABdhPJy9MxQ9JDqgbUxs5iJjOZhvvAhbIb4SB90wBtvxj6i+Z1NqL4Sgmd5xFUlSjTl9BiZi3p2X+g==
X-Received: by 2002:a19:6a07:: with SMTP id u7mr4706867lfu.252.1605043028710; 
 Tue, 10 Nov 2020 13:17:08 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id m7sm1658405ljb.37.2020.11.10.13.17.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 13:17:07 -0800 (PST)
Subject: Re: [PATCH v1 18/30] pwm: tegra: Support OPP and core voltage scaling
To: Thierry Reding <thierry.reding@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-19-digetx@gmail.com> <20201110205057.GH2375022@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a3bf156d-17b8-0edd-9981-a17991266e1d@gmail.com>
Date: Wed, 11 Nov 2020 00:17:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201110205057.GH2375022@ulmo>
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

MTAuMTEuMjAyMCAyMzo1MCwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBPbiBUaHUsIE5v
diAwNSwgMjAyMCBhdCAwMjo0NDoxNUFNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4g
Wy4uLl0KPj4gK3N0YXRpYyB2b2lkIHRlZ3JhX3B3bV9kZWluaXRfb3BwX3RhYmxlKHZvaWQgKmRh
dGEpCj4+ICt7Cj4+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gZGF0YTsKPj4gKwlzdHJ1Y3Qgb3Bw
X3RhYmxlICpvcHBfdGFibGU7Cj4+ICsKPj4gKwlvcHBfdGFibGUgPSBkZXZfcG1fb3BwX2dldF9v
cHBfdGFibGUoZGV2KTsKPj4gKwlkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZShkZXYpOwo+PiAr
CWRldl9wbV9vcHBfcHV0X3JlZ3VsYXRvcnMob3BwX3RhYmxlKTsKPj4gKwlkZXZfcG1fb3BwX3B1
dF9vcHBfdGFibGUob3BwX3RhYmxlKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGludCBkZXZtX3Rl
Z3JhX3B3bV9pbml0X29wcF90YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICt7Cj4+ICsJc3Ry
dWN0IG9wcF90YWJsZSAqb3BwX3RhYmxlOwo+PiArCWNvbnN0IGNoYXIgKnJuYW1lID0gImNvcmUi
Owo+PiArCWludCBlcnI7Cj4+ICsKPj4gKwkvKiB2b2x0YWdlIHNjYWxpbmcgaXMgb3B0aW9uYWwg
Ki8KPj4gKwlpZiAoZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQoZGV2LCAiY29yZS1zdXBwbHkiKSkK
Pj4gKwkJb3BwX3RhYmxlID0gZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycyhkZXYsICZybmFtZSwg
MSk7Cj4+ICsJZWxzZQo+PiArCQlvcHBfdGFibGUgPSBkZXZfcG1fb3BwX2dldF9vcHBfdGFibGUo
ZGV2KTsKPj4gKwo+PiArCWlmIChJU19FUlIob3BwX3RhYmxlKSkKPj4gKwkJcmV0dXJuIGRldl9l
cnJfcHJvYmUoZGV2LCBQVFJfRVJSKG9wcF90YWJsZSksCj4+ICsJCQkJICAgICAiZmFpbGVkIHRv
IHByZXBhcmUgT1BQIHRhYmxlXG4iKTsKPj4gKwo+PiArCS8qCj4+ICsJICogT1BQIHRhYmxlIHBy
ZXNlbmNlIGlzIG9wdGlvbmFsIGFuZCB3ZSB3YW50IHRoZSBzZXRfcmF0ZSgpIG9mIE9QUAo+PiAr
CSAqIEFQSSB0byB3b3JrIHNpbWlsYXJseSB0byBjbGtfc2V0X3JhdGUoKSBpZiB0YWJsZSBpcyBt
aXNzaW5nIGluIGEKPj4gKwkgKiBkZXZpY2UtdHJlZS4gIFRoZSBhZGRfdGFibGUoKSBlcnJvcnMg
b3V0IGlmIE9QUCBpcyBtaXNzaW5nIGluIERULgo+PiArCSAqLwo+PiArCWlmIChkZXZpY2VfcHJv
cGVydHlfcHJlc2VudChkZXYsICJvcGVyYXRpbmctcG9pbnRzLXYyIikpIHsKPj4gKwkJZXJyID0g
ZGV2X3BtX29wcF9vZl9hZGRfdGFibGUoZGV2KTsKPj4gKwkJaWYgKGVycikgewo+PiArCQkJZGV2
X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIE9QUCB0YWJsZTogJWRcbiIsIGVycik7Cj4+ICsJCQln
b3RvIHB1dF90YWJsZTsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiArCWVyciA9IGRldm1fYWRkX2Fj
dGlvbihkZXYsIHRlZ3JhX3B3bV9kZWluaXRfb3BwX3RhYmxlLCBkZXYpOwo+PiArCWlmIChlcnIp
Cj4+ICsJCWdvdG8gcmVtb3ZlX3RhYmxlOwo+PiArCj4+ICsJcmV0dXJuIDA7Cj4+ICsKPj4gK3Jl
bW92ZV90YWJsZToKPj4gKwlkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZShkZXYpOwo+PiArcHV0
X3RhYmxlOgo+PiArCWRldl9wbV9vcHBfcHV0X3JlZ3VsYXRvcnMob3BwX3RhYmxlKTsKPj4gKwo+
PiArCXJldHVybiBlcnI7Cj4+ICt9Cj4gCj4gVGhlc2UgdHdvIGZ1bmN0aW9ucyBzZWVtIHRvIGJl
IGhlYXZpbHkgYm9pbGVycGxhdGUgYWNyb3NzIGFsbCB0aGVzZQo+IGRyaXZlcnMuIEhhdmUgeW91
IGNvbnNpZGVyZWQgc3BsaXR0aW5nIHRoZXNlIG91dCBpbnRvIHNlcGFyYXRlIGhlbHBlcnM/CgpU
aGUgaGVscGVyIGlzIGFscmVhZHkgcHJlcGFyZWQgZm9yIHYyLgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
