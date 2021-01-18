Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1A22FA522
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 16:50:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 82F8420485;
	Mon, 18 Jan 2021 15:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dStGuo50zKUT; Mon, 18 Jan 2021 15:50:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DA6F12049E;
	Mon, 18 Jan 2021 15:50:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62DEB1BF33E
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 15:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5F11385198
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 15:50:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgufeUH2WsCZ for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 15:50:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6358984F33
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 15:50:30 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id 190so14029266wmz.0
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 07:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=hnlP4TCuuuU1Boi/hLdzhd2/6iQdts7ZHhXzPyMgjoQ=;
 b=C5aYq8K6u9jjD9Bxrht4BtypiJqRgY4dAlrtbgaYqLKiGopcD3CZOqogeLuBQshiC/
 rLAS9F/uord1WqD0EZA4j9vpmHY6rxDIiSOeN80PtzTh8ARftMzeDqbc78uo4fxmhH3J
 W8BtWFO05uzZsIDEUzKTpHVpsTqoN8rTqx6AlbDD7W2ngK66pKXgcB/nLEbfFpyH9F7L
 nAwKM4QM/IdBwnPo4LUsDt2Q3PBg3E1yL5dAFy/JhUVMDJ7nZ7B4Gfl0WYtsD61uPuAx
 QxIIDD6739wfYHmcmVuZJM6p55gXqigdlDAlJEhGaA8bIWjtLnqzZU3858Zfa+hDNi1x
 tuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=hnlP4TCuuuU1Boi/hLdzhd2/6iQdts7ZHhXzPyMgjoQ=;
 b=uNqFh9YepYqaldlpjatY4W37bk8hNZ1C3+ODz5R0no9r4rek5emkwk7Fio2QGQcb3L
 /H980E9hkjAtBsAUqPN42Y9W6CTyCyzwlmPJk+o+lJL3ImjNq3Wd5Fweac2FiPV2uylz
 ubTFb/iKG4gJI/hVeezsOLceCTwLagGF9sxwiVX7AOKB4Fss6eDfTh6U7HZe5a6UAzSq
 IxrisqX8ZhYPtkaR5ingn8UcbNt4yXNkJ2yEJ8iE1C+Pna7yxV1NfBuKsV01qXwhhfzN
 sBlMMrX5oBlxzemYOQzpq85lj+iqBTQ0Sw0oA33hMum2mLR2sdr+IYWrQewpbrfY3JYB
 mb6g==
X-Gm-Message-State: AOAM532Ha2pKn+J0x7NCTnAklXBgtNpQVyP7eujlG78z46kAW7+u+OWH
 cRniVZg3M7/JCyYCCjl0oVPvkg==
X-Google-Smtp-Source: ABdhPJyGQlmjNpAe5FPf9+L9SpVO6HOy+hRWw/s3IfHIcDSQDh6vMYL2r/2lCncdI6UxCHS92rQYVA==
X-Received: by 2002:a1c:6383:: with SMTP id x125mr37380wmb.46.1610985028772;
 Mon, 18 Jan 2021 07:50:28 -0800 (PST)
Received: from dell ([91.110.221.158])
 by smtp.gmail.com with ESMTPSA id m14sm30211665wrh.94.2021.01.18.07.50.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jan 2021 07:50:28 -0800 (PST)
Date: Mon, 18 Jan 2021 15:50:26 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 10/13] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210118155026.GH4903@dell>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
 <8a152819ef89c73dd6afb5c2deb5441402fcd2fa.1610975633.git.mchehab+huawei@kernel.org>
 <20210118151227.GF4903@dell> <20210118163222.6161f9a2@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118163222.6161f9a2@coco.lan>
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
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCAxOCBKYW4gMjAyMSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgoKPiBFbSBN
b24sIDE4IEphbiAyMDIxIDE1OjEyOjI3ICswMDAwCj4gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gZXNjcmV2ZXU6Cj4gCj4gPiBPbiBNb24sIDE4IEphbiAyMDIxLCBNYXVybyBDYXJ2
YWxobyBDaGVoYWIgd3JvdGU6Cj4gPiAKPiA+ID4gVGhpcyBkcml2ZXIgaXMgcmVhZHkgZm9yIG1h
aW5zdHJlYW0uIFNvLCBtb3ZlIGl0IG91dCBvZiBzdGFnaW5nLgo+ID4gPiAKPiA+ID4gU2lnbmVk
LW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3Jn
Pgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9tZmQvaGlzaWxpY29uLGhpNjQyMS1zcG1pLXBtaWMueWFt
bCAgICAgICB8IDEzMyArKysrKysrCj4gPiA+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgIDcgKwo+ID4gPiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDE1ICsKPiA+ID4gIGRyaXZlcnMvbWZkL01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4gPiA+ICBkcml2ZXJzL21mZC9oaTY0
MjEtc3BtaS1wbWljLmMgICAgICAgICAgICAgICAgfCAzNDIgKysrKysrKysrKysrKysrKysrCj4g
PiA+ICBkcml2ZXJzL3N0YWdpbmcvaGlrZXk5eHgvS2NvbmZpZyAgICAgICAgICAgICAgfCAgMTYg
LQo+ID4gPiAgZHJpdmVycy9zdGFnaW5nL2hpa2V5OXh4L01ha2VmaWxlICAgICAgICAgICAgIHwg
ICAxIC0KPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9oaWtleTl4eC9oaTY0MjEtc3BtaS1wbWljLmMg
ICB8IDM0MiAtLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gIC4uLi9oaWtleTl4eC9oaXNpbGljb24s
aGk2NDIxLXNwbWktcG1pYy55YW1sICB8IDEzMyAtLS0tLS0tCj4gPiA+ICA5IGZpbGVzIGNoYW5n
ZWQsIDQ5OCBpbnNlcnRpb25zKCspLCA0OTIgZGVsZXRpb25zKC0pICAKPiA+IAo+ID4gQ291bGQg
eW91IHBsZWFzZSByZXN1Ym1pdCB0aGlzIHdpbGwgdGhlIGNvcnJlY3QgZmxhZ3MuCj4gPiAKPiA+
IEkgYmVsaWV2ZSBpdCdzIHRoZSBgZ2l0IGZvcm1hdC1wYXRjaGAgLU0gZmxhZyB0aGF0IHlvdSB3
YW50Lgo+IAo+IEFzIGV4cGxhaW5lZCBhdCBwYXRjaCAwMC8xMywgdGhpcyB3YXMgaW50ZW50aW9u
YWxseSBnZW5lcmF0ZWQgd2l0aAo+IC0tbm8tbWVyZ2VzLCBpbiBvcmRlciB0byBhbGxvdyByZXZp
ZXdlcnMgdG8gdmlldyB0aGUgZW50aXJlIHNvdXJjZQo+IGNvZGUgYXQgdGhlIHBhdGNoLiAKClRo
YXQncyBhIGZhaXIgcG9pbnQuICBQbGVhc2UgbGVhdmUgaXQgYXMgaXQgaXMgZm9yIG5vdyB0aGVu
LgoKSSdsbCBnZXQgYXJvdW5kIHRvIHRoZSByZXZpZXcgc29vbiBJIGhvcGUuCgo+IEFueXdheSwg
SSdsbCByZS1zZW5kIHRoZSBzZXJpZXMgd2l0aCAtTSwgYXMgaXQgbWFrZXMgZWFzaWVyIHRvIG1l
cmdlLAo+IGlmIGV2ZXJ5dGhpbmcgaXMgb2suCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNl
bmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
