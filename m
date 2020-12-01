Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F9A2CA541
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 15:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B84987579;
	Tue,  1 Dec 2020 14:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z2oJ3Xw+Mw30; Tue,  1 Dec 2020 14:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB8EE87551;
	Tue,  1 Dec 2020 14:17:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D85951BF290
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 14:17:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C6709203CE
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 14:17:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6C84CbXAtg5w for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 14:17:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 10C132038A
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 14:17:24 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id s30so4440730lfc.4
 for <devel@driverdev.osuosl.org>; Tue, 01 Dec 2020 06:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+/VDVLzOBDjqiEu/N1C0eMmuynbTWK2RMfkKzr3b440=;
 b=NFS1gJ6qIMEM0tjrCNFlTLXIiKzLUz8Gnm9RoDkDgAGoOrAmFH665FazAn65xfep9j
 q1MzYJOj3Zlv/6l+94KjbYlkwVpip2977xGSaKfNO/trDYc5k7c4/WcDtCzjHhJivaw4
 R3wSqZQpSfK8urUC+KUWSI03zjKLD2qUjSA1Sh36Vv3gkEPtGffag2dP6CvSTvSq3UKY
 YylNKX7Dx4eifs+51m341bLnClw1F91DSN9xMT666b1NKXE2m8BabsDyn4Az/aDh03d7
 EAnoQKdNqE2iVos9mifhxROnB6lM4QDKR2vwmfs0SCZYZPWhyhwrUHdSXnF5Z6q3a5OU
 KfeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+/VDVLzOBDjqiEu/N1C0eMmuynbTWK2RMfkKzr3b440=;
 b=HXrmaXrgskteO1XkakM3vBg6vm9mLoohFrHSZ5BPZKjwXomrFefFXVaUGiBSQZf4sI
 BbmgJoVzqTZKxCOqAa8U+CguCwdFX1LSkOHKiCKdf2evy1Ni5RMfO7PPag+3gqwNcOIV
 Ayc/uBSKMy3sBiTNV99eSfjtiuY8+Yu0gktUDRi0k4aNAClyJcN78g3zLfTHbwur8PyL
 wxYrLUTjnKXHP3E5MbdEUG+8NDF2Q+dJgrYiE17LqYnOJEwU1uKvAGYIwWhkuXS8FUZQ
 r4VuKiKj/UgAyXw7IgbZVnq6phF/Jqhcr0OEz0Wp9e/XAEANXFoInpYAbyzt6ULNLe2v
 +OTQ==
X-Gm-Message-State: AOAM531MDFNWf7a0DgHCJOxl5HOzQyAevDEl402fiYlq+wp6vuhyzlMt
 K3v6ocmFLdcZ3i3Qiav0kZE=
X-Google-Smtp-Source: ABdhPJy45twU6WKpFARyvJXmOYuPohM+PTgEg36doZmYuxa+KLwfB3LOW5+S25YIdNCijAJHOc0fgg==
X-Received: by 2002:ac2:5503:: with SMTP id j3mr1305836lfk.94.1606832242037;
 Tue, 01 Dec 2020 06:17:22 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-53.dynamic.spd-mgts.ru.
 [109.252.192.53])
 by smtp.googlemail.com with ESMTPSA id p16sm214803lfe.255.2020.12.01.06.17.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Dec 2020 06:17:21 -0800 (PST)
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Peter Chen <Peter.Chen@nxp.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 Adrian Hunter <adrian.hunter@intel.com>, Peter Geis <pgwipeout@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Nicolas Chauvet <kwizart@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones
 <lee.jones@linaro.org>, Thierry Reding <thierry.reding@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <160683107675.35139.13466076210885462180.b4-ty@kernel.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <858e4183-5064-084f-9b80-870e118c3edc@gmail.com>
Date: Tue, 1 Dec 2020 17:17:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <160683107675.35139.13466076210885462180.b4-ty@kernel.org>
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
 linux-samsung-soc@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDEuMTIuMjAyMCAxNjo1NywgTWFyayBCcm93biDQv9C40YjQtdGCOgo+IE9uIFRodSwgNSBOb3Yg
MjAyMCAwMjo0Mzo1NyArMDMwMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiBJbnRyb2R1Y2Ug
Y29yZSB2b2x0YWdlIHNjYWxpbmcgZm9yIE5WSURJQSBUZWdyYTIwLzMwIFNvQ3MsIHdoaWNoIHJl
ZHVjZXMKPj4gcG93ZXIgY29uc3VtcHRpb24gYW5kIGhlYXRpbmcgb2YgdGhlIFRlZ3JhIGNoaXBz
LiBUZWdyYSBTb0MgaGFzIG11bHRpcGxlCj4+IGhhcmR3YXJlIHVuaXRzIHdoaWNoIGJlbG9uZyB0
byBhIGNvcmUgcG93ZXIgZG9tYWluIG9mIHRoZSBTb0MgYW5kIHNoYXJlCj4+IHRoZSBjb3JlIHZv
bHRhZ2UuIFRoZSB2b2x0YWdlIG11c3QgYmUgc2VsZWN0ZWQgaW4gYWNjb3JkYW5jZSB0byBhIG1p
bmltdW0KPj4gcmVxdWlyZW1lbnQgb2YgZXZlcnkgY29yZSBoYXJkd2FyZSB1bml0Lgo+Pgo+PiBU
aGUgbWluaW11bSBjb3JlIHZvbHRhZ2UgcmVxdWlyZW1lbnQgZGVwZW5kcyBvbjoKPj4KPj4gWy4u
Ll0KPiAKPiBBcHBsaWVkIHRvCj4gCj4gICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvYnJvb25pZS9zb3VuZC5naXQgZm9yLW5leHQKPiAKPiBUaGFua3Mh
Cj4gCj4gWzEvMV0gcmVndWxhdG9yOiBBbGxvdyBza2lwcGluZyBkaXNhYmxlZCByZWd1bGF0b3Jz
IGluIHJlZ3VsYXRvcl9jaGVja19jb25zdW1lcnMoKQo+ICAgICAgIChubyBjb21taXQgaW5mbykK
PiAKPiBBbGwgYmVpbmcgd2VsbCB0aGlzIG1lYW5zIHRoYXQgaXQgd2lsbCBiZSBpbnRlZ3JhdGVk
IGludG8gdGhlIGxpbnV4LW5leHQKPiB0cmVlICh1c3VhbGx5IHNvbWV0aW1lIGluIHRoZSBuZXh0
IDI0IGhvdXJzKSBhbmQgc2VudCB0byBMaW51cyBkdXJpbmcKPiB0aGUgbmV4dCBtZXJnZSB3aW5k
b3cgKG9yIHNvb25lciBpZiBpdCBpcyBhIGJ1ZyBmaXgpLCBob3dldmVyIGlmCj4gcHJvYmxlbXMg
YXJlIGRpc2NvdmVyZWQgdGhlbiB0aGUgcGF0Y2ggbWF5IGJlIGRyb3BwZWQgb3IgcmV2ZXJ0ZWQu
Cj4gCj4gWW91IG1heSBnZXQgZnVydGhlciBlLW1haWxzIHJlc3VsdGluZyBmcm9tIGF1dG9tYXRl
ZCBvciBtYW51YWwgdGVzdGluZwo+IGFuZCByZXZpZXcgb2YgdGhlIHRyZWUsIHBsZWFzZSBlbmdh
Z2Ugd2l0aCBwZW9wbGUgcmVwb3J0aW5nIHByb2JsZW1zIGFuZAo+IHNlbmQgZm9sbG93dXAgcGF0
Y2hlcyBhZGRyZXNzaW5nIGFueSBpc3N1ZXMgdGhhdCBhcmUgcmVwb3J0ZWQgaWYgbmVlZGVkLgo+
IAo+IElmIGFueSB1cGRhdGVzIGFyZSByZXF1aXJlZCBvciB5b3UgYXJlIHN1Ym1pdHRpbmcgZnVy
dGhlciBjaGFuZ2VzIHRoZXkKPiBzaG91bGQgYmUgc2VudCBhcyBpbmNyZW1lbnRhbCB1cGRhdGVz
IGFnYWluc3QgY3VycmVudCBnaXQsIGV4aXN0aW5nCj4gcGF0Y2hlcyB3aWxsIG5vdCBiZSByZXBs
YWNlZC4KPiAKPiBQbGVhc2UgYWRkIGFueSByZWxldmFudCBsaXN0cyBhbmQgbWFpbnRhaW5lcnMg
dG8gdGhlIENDcyB3aGVuIHJlcGx5aW5nCj4gdG8gdGhpcyBtYWlsLgoKSGVsbG8gTWFyaywKCkNv
dWxkIHlvdSBwbGVhc2UgaG9sZCBvbiB0aGlzIHBhdGNoPyBJdCB3b24ndCBiZSBuZWVkZWQgaW4g
YSB2Miwgd2hpY2gKd2lsbCB1c2UgcG93ZXIgZG9tYWlucy4KCkFsc28sIEknbSBub3Qgc3VyZSB3
aGV0aGVyIHRoZSAic291bmQiIHRyZWUgaXMgc3VpdGFibGUgZm9yIGFueSBvZiB0aGUKcGF0Y2hl
cyBpbiB0aGlzIHNlcmllcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
