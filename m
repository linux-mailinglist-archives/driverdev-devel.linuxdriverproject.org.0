Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ED72FA439
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 16:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CF8E8672F;
	Mon, 18 Jan 2021 15:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XmYh1+tB-Rpr; Mon, 18 Jan 2021 15:12:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C3A8866EF;
	Mon, 18 Jan 2021 15:12:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B9D31BF33E
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 15:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 280418584A
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 15:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l4dkzEHU9CpL for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 15:12:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 091E385816
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 15:12:30 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id j18so2913682wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 07:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Xo4cfkUgfZMwC1kcTh+R01wsHW/timugPtkqWQyq1DI=;
 b=xD37iht/mX4OjCu50q30WVuJw8ug84GNpWeC1JL2TB7xhU5hKbQfiU1vLzwWbzm7ai
 9orgji42XdrU3QnvTDmdjggPxxvglJGnlz95r2S66iBqvQXcz//CAoJsNahRiV7Ll27i
 NobhaxidQcItjvL5pN4Q3cUtYeq1aJyLnZh8cJHs410I/DANGnS6Yzi3ihw8RWy2lu9d
 COgWWo8U8YpgLefjAnZIz2AzXy55VFULwirjd9/QLhowjQbSyqaH7/nQIzgZ9xjXuFDo
 Dz83tFfdL3S4ksJIFGNd6rIIKjpr4y7TOcJzxXa+qegAMg0OaEPbhlaySUHDN1HqgH9e
 /GVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Xo4cfkUgfZMwC1kcTh+R01wsHW/timugPtkqWQyq1DI=;
 b=YFS98tQTYkFTugWQIBd0ApQBP4NeYfNHTtwxTPbmjqHMowfB5zgqXfYWxYMW4FElaY
 PKYfRA2Ar2K14osdYnuJSj7J4mEtRJUL0CL/Ao+x8is/AeMMpww3CN7uYov30BcpMWBR
 wyeMB3etnef8rgm7GDykGSB2p7u3WJXD5AbR9Ujm0/Izw6vAb9VeyNFUWWnNPmY1DXBp
 06MxeSOn9O2vangEYU9JoLH/wZT9FM8Y1C8HgRkRysCtN5lrjLM+re4kcWgbpp1bOcyg
 V6Yj12z5keVG+FJeHQuPL51Mt20gS3hkaX1xo8rpTZdNcA0zArOgajCCWIYYBzNmCesZ
 qrxw==
X-Gm-Message-State: AOAM530+e9SNCfrCXt65nRfhPRGOKpcT5VAw8L/4qOB0o9TY+QsR8Kw7
 RT3uY3G2ZcICHejnaDMbBbf78w==
X-Google-Smtp-Source: ABdhPJx4wJ3iWN/75//5uN5rSPB596jGvskqnfTUg7OUGpbWugtg2dTzaLAbLvzLzgowUjrEcYT4CQ==
X-Received: by 2002:a1c:483:: with SMTP id 125mr21070988wme.80.1610982749381; 
 Mon, 18 Jan 2021 07:12:29 -0800 (PST)
Received: from dell ([91.110.221.158])
 by smtp.gmail.com with ESMTPSA id u5sm10156512wmg.9.2021.01.18.07.12.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jan 2021 07:12:28 -0800 (PST)
Date: Mon, 18 Jan 2021 15:12:27 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 10/13] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210118151227.GF4903@dell>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
 <8a152819ef89c73dd6afb5c2deb5441402fcd2fa.1610975633.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a152819ef89c73dd6afb5c2deb5441402fcd2fa.1610975633.git.mchehab+huawei@kernel.org>
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

T24gTW9uLCAxOCBKYW4gMjAyMSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgoKPiBUaGlz
IGRyaXZlciBpcyByZWFkeSBmb3IgbWFpbnN0cmVhbS4gU28sIG1vdmUgaXQgb3V0IG9mIHN0YWdp
bmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1
YXdlaUBrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vbWZkL2hpc2lsaWNvbixoaTY0MjEtc3BtaS1w
bWljLnlhbWwgICAgICAgfCAxMzMgKysrKysrKwo+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDcgKwo+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgMTUgKwo+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL21mZC9oaTY0MjEtc3BtaS1w
bWljLmMgICAgICAgICAgICAgICAgfCAzNDIgKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMv
c3RhZ2luZy9oaWtleTl4eC9LY29uZmlnICAgICAgICAgICAgICB8ICAxNiAtCj4gIGRyaXZlcnMv
c3RhZ2luZy9oaWtleTl4eC9NYWtlZmlsZSAgICAgICAgICAgICB8ICAgMSAtCj4gIGRyaXZlcnMv
c3RhZ2luZy9oaWtleTl4eC9oaTY0MjEtc3BtaS1wbWljLmMgICB8IDM0MiAtLS0tLS0tLS0tLS0t
LS0tLS0KPiAgLi4uL2hpa2V5OXh4L2hpc2lsaWNvbixoaTY0MjEtc3BtaS1wbWljLnlhbWwgIHwg
MTMzIC0tLS0tLS0KPiAgOSBmaWxlcyBjaGFuZ2VkLCA0OTggaW5zZXJ0aW9ucygrKSwgNDkyIGRl
bGV0aW9ucygtKQoKQ291bGQgeW91IHBsZWFzZSByZXN1Ym1pdCB0aGlzIHdpbGwgdGhlIGNvcnJl
Y3QgZmxhZ3MuCgpJIGJlbGlldmUgaXQncyB0aGUgYGdpdCBmb3JtYXQtcGF0Y2hgIC1NIGZsYWcg
dGhhdCB5b3Ugd2FudC4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNh
bCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBC
bG9nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
