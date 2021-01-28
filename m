Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7483070EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 09:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16CB5864F4;
	Thu, 28 Jan 2021 08:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hU6FN2pQqpOY; Thu, 28 Jan 2021 08:16:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 686A186508;
	Thu, 28 Jan 2021 08:16:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E7511BF3F7
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 08:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 366CB2041A
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 08:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5oyUG9Ju-4Ue for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 08:16:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by silver.osuosl.org (Postfix) with ESMTPS id E1F09203DA
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 08:16:36 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id s7so1467063wru.5
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 00:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=UeimYJSD/BbdilP/QsnJ5hxblqoSqeJXssbZW1GuA/E=;
 b=HLDco07WIOI0eRFrC4jndd4L8LCMXW0F+aUl9EIn2JpFOtTztYSUhXSqu9mjB1ioMJ
 2sMiLjA0fs5EjoOfH+6ae16pwEgx0Vz/GaRY03tRa59UCnqaSJGMERAVLi92/G1LPO7y
 /2q4IBj6bHwKIii0su+YEfEDRtAVYtJJorqFU7WM40gL3nxqURSOXN6123lu3p03ZkGD
 1xdATKryVyMbwSBPrLiSxu6FOXvoFfDYg1vCUW4a3wVomTQH4VUx++wSlvHf+O8dcdEG
 g11wNZZnagd45iHVfLFiJYSbAhNFWtCRwXCez7z7D1ec7q1GsbBf0aEmLgTWmnSf4rwe
 WvNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=UeimYJSD/BbdilP/QsnJ5hxblqoSqeJXssbZW1GuA/E=;
 b=FJC/NYzOGD/l8RXehQ0ecTFG4vGMCwdBo/fzLfo06P+ZoCByn3LOTVufNoM03j1dnf
 lfjpluhLDExlygWLDtw61wS79gMjQT+mHVj7HLhjhXUdSYFB+YiGWCoK/PfBX+lfRsHe
 J6GDnk02USEIZNbRR8jkrq5k+CfeUY7qSPhrEaJI7p7xTz7Sm3VKe4yrmoxIaDuq8DmQ
 lpFObShXr49l3E6fA+eXt/q4xkoQSWXt9YQjjs14BVCHBuWCsINpfKEdZR8N9+7NanT0
 gdOfVtxZDtFGFG2I/z44kUkOwIeX+fObhaYe0AYYRxY81yR2n8CtFSA2nlliJ5wMCgmD
 dalQ==
X-Gm-Message-State: AOAM533caXrpL3yEyj0VGOSBszfRM4IBya0CAvf9Y0wWHNOQvfcZo17i
 4Tgd5WM7lOvmxaZr8lUBxj0j7w==
X-Google-Smtp-Source: ABdhPJwk4pcrmzfuCbnjS9kjUUrQd6dcq75GhqojTwB1b/FrDLAyrcZHVKoo6nED2QAu8b6oqCCoLg==
X-Received: by 2002:adf:b78d:: with SMTP id s13mr15032680wre.344.1611821795387; 
 Thu, 28 Jan 2021 00:16:35 -0800 (PST)
Received: from dell ([91.110.221.188])
 by smtp.gmail.com with ESMTPSA id f4sm5952787wrs.34.2021.01.28.00.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 00:16:34 -0800 (PST)
Date: Thu, 28 Jan 2021 08:16:33 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v6 5/7] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210128081633.GB4774@dell>
References: <cover.1611773727.git.mchehab+huawei@kernel.org>
 <2b0e6f6cef0aaa914956792088c554c57f5ec644.1611773727.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b0e6f6cef0aaa914956792088c554c57f5ec644.1611773727.git.mchehab+huawei@kernel.org>
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
 Wang Hai <wanghai38@huawei.com>, Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 David Gow <davidgow@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAyNyBKYW4gMjAyMSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgoKPiBUaGlz
IGRyaXZlciBpcyByZWFkeSBmb3IgbWFpbnN0cmVhbS4gU28sIG1vdmUgaXQgb3V0IG9mIHN0YWdp
bmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1
YXdlaUBrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vbWZkfS9oaXNpbGljb24saGk2NDIxLXNwbWkt
cG1pYy55YW1sICAgICAgICB8ICAwCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDcgKysrKysrKwo+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8IDE1ICsrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL21m
ZC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsKPiAgLi4uL2hpa2V5
OXh4ID0+IG1mZH0vaGk2NDIxLXNwbWktcG1pYy5jICAgICAgICAgfCAgMAo+ICBkcml2ZXJzL3N0
YWdpbmcvaGlrZXk5eHgvS2NvbmZpZyAgICAgICAgICAgICAgICB8IDE3IC0tLS0tLS0tLS0tLS0t
LS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9oaWtleTl4eC9NYWtlZmlsZSAgICAgICAgICAgICAgIHwg
IDEgLQo+ICA3IGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygt
KQo+ICByZW5hbWUge2RyaXZlcnMvc3RhZ2luZy9oaWtleTl4eCA9PiBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWZkfS9oaXNpbGljb24saGk2NDIxLXNwbWktcG1pYy55YW1sICgx
MDAlKQo+ICByZW5hbWUgZHJpdmVycy97c3RhZ2luZy9oaWtleTl4eCA9PiBtZmR9L2hpNjQyMS1z
cG1pLXBtaWMuYyAoMTAwJSkKCkkndmUgYWxyZWFkeSByZXZpZXdlZCB0aGlzOgoKICBodHRwczov
L2xvcmUua2VybmVsLm9yZy9kcml2ZXJkZXYtZGV2ZWwvMjAyMTAxMjcxMTA1MzcuR0k0OTAzQGRl
bGwvCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERl
dmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
