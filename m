Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B42305926
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 12:06:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 540E485A4B;
	Wed, 27 Jan 2021 11:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjRcC1aQB3zb; Wed, 27 Jan 2021 11:06:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26082847DE;
	Wed, 27 Jan 2021 11:06:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 086101BF5E9
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 11:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 052B386F65
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 11:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BClTLcmSl30F for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 11:06:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A32786E5B
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 11:06:29 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id h9so1432096wrr.9
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 03:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=VeqjA/wicjimRdjKgW3gCPCLjpuPLB3M16o7vA4ERuM=;
 b=oMt7K9zf2itl851ZOGUZzulzwVl13zZrK+/kOtSkpAM2PVllIIufXsJly+t014S6JZ
 iFdXDmnJLyOeF5pnmuMj09nA/DqxuuxL5NM2xmee/nvzucRIzeUcjyAYcrWp487x9TMC
 vSvwxjis5JqI15fmZ7yGF5OELCtu6IRaFUH+O09BlvhQC8HvbeBkLhRrIoliLZNxF0hG
 RgCH6kPF4EnqOWMxJWsFZbS5+e7vp3XgBB0Ahx3wElsph7d8ruRC80SGofX1qQ2RMHDV
 ScSEHmNsor/mMHhL76BYFdy9oH8+/qx8ieIO0Os7mvhaOMnIMdTuKCgt0MC93xX2/PTU
 9Xwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=VeqjA/wicjimRdjKgW3gCPCLjpuPLB3M16o7vA4ERuM=;
 b=N0Va2a/00kk/okv10+ia7xjP/ZJkK+GyvraBQPSqjo6Rf1n7qD8sxWv+bEoP07pY1w
 ojx9z7Yvwg9N7LSeGm9dt2uQiFBxWxGZd+azrA+wMZ5M/GxcTuIzVjMBWzylGYBE+ccf
 0Yj9XsGzaC0C632Krb9kmraQr4bvJL5Wzut+CYjpefe4KbFTmIsk+os7Hdq6ezpnT/RM
 zceMfjm+u4Rtm4jZm/f38pZlJ5G20nSQJ3MLOgy6dkBXv4g7hlRt+gYke9bjtIbJEKMD
 DO+xYNYWfHyWF0vWAwOQA7AnMetVnLDBfhIu1ggizB2V0hxEUhzOw+JUr7qyir9RzG1U
 kgEQ==
X-Gm-Message-State: AOAM531AzadNwiggfUhb4vjsTvFSyHQHT7fOprpwFQMHNVG+TPBDqqx9
 VO2XsDTceMxjjOEbgyG6DeXySA==
X-Google-Smtp-Source: ABdhPJwEm7EwrekmzyrqrvDmlkk06yBK6A47PQ1Kb8BOXn1oj/MishxBm8lbOfrL87DXPaGxZAtSag==
X-Received: by 2002:a5d:4386:: with SMTP id i6mr10282565wrq.411.1611745587466; 
 Wed, 27 Jan 2021 03:06:27 -0800 (PST)
Received: from dell ([91.110.221.188])
 by smtp.gmail.com with ESMTPSA id s4sm2456879wrt.85.2021.01.27.03.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 03:06:26 -0800 (PST)
Date: Wed, 27 Jan 2021 11:06:25 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v5 19/21] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210127110625.GJ4903@dell>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <97696bbe44202ae4af15c4f799de65dca7de6d37.1611212783.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97696bbe44202ae4af15c4f799de65dca7de6d37.1611212783.git.mchehab+huawei@kernel.org>
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

T24gVGh1LCAyMSBKYW4gMjAyMSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgoKPiBUaGlz
IGRyaXZlciBpcyByZWFkeSBmb3IgbWFpbnN0cmVhbS4gU28sIG1vdmUgaXQgb3V0IG9mIHN0YWdp
bmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1
YXdlaUBrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vbWZkfS9oaXNpbGljb24saGk2NDIxLXNwbWkt
cG1pYy55YW1sICAgICAgICAgfCAgMAo+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgNyArKysrKysrCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE1ICsrKysrKysrKysrKysrKwo+ICBkcml2ZXJz
L21mZC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArCj4gIC4uLi97
c3RhZ2luZy9oaWtleTl4eCA9PiBtZmR9L2hpNjQyMS1zcG1pLXBtaWMuYyB8ICAwCj4gIGRyaXZl
cnMvc3RhZ2luZy9oaWtleTl4eC9LY29uZmlnICAgICAgICAgICAgICAgICB8IDE2IC0tLS0tLS0t
LS0tLS0tLS0KPiAgZHJpdmVycy9zdGFnaW5nL2hpa2V5OXh4L01ha2VmaWxlICAgICAgICAgICAg
ICAgIHwgIDEgLQo+ICA3IGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDE3IGRlbGV0
aW9ucygtKQo+ICByZW5hbWUge2RyaXZlcnMvc3RhZ2luZy9oaWtleTl4eCA9PiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkfS9oaXNpbGljb24saGk2NDIxLXNwbWktcG1pYy55
YW1sICgxMDAlKQo+ICByZW5hbWUgZHJpdmVycy97c3RhZ2luZy9oaWtleTl4eCA9PiBtZmR9L2hp
NjQyMS1zcG1pLXBtaWMuYyAoMTAwJSkKClJlcGxpZWQgdG8gYW4gZWFybGllciBzdWJtaXNzaW9u
IHdoZXJlIEkgd2FzIGFibGUgdG8gcmVwbHkgaW4tbGluZS4KCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBG
YWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
