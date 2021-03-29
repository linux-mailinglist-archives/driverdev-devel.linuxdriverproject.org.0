Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC3E34C52D
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 09:47:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B0EE607A1;
	Mon, 29 Mar 2021 07:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZrLYyDCHPsmb; Mon, 29 Mar 2021 07:47:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98243606D5;
	Mon, 29 Mar 2021 07:47:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D0721BF358
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 07:46:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5552E402DD
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 07:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ihTQM4FL3QB3 for <devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 07:46:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03892402D5
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 07:46:56 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id x13so11765568wrs.9
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 00:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=gKqOr9BTXct/tRsLbZ99P7dlk5cf6Eud2sZybPk3YFo=;
 b=kaPRrDWVtSv6ShmZ7l0uPXzHIzC5TB8pxZhs6iM8eklwxyqkk3hSXri0EW3sEsdSGZ
 RYCosMqpvYPmWWK3Olvp7jvfSIGhDkPsQKuk7lJkUEASFm3Wq1vve2XYqAesVqVKWacb
 IM0SwInTrz2+8mBitRL5PfkWeFKG2RijXhy57LrcyzeHwtdEoCTCgFdfENO55ziqjP+V
 vNrESlDG8snaSn2HAQB/eOCuWt2JqREsKn+UGUGZxecGRwCsrUsU7QRUiugwtTmWzPtS
 2SEGvscbjiki2IqS3XojMj1mgyecW99Fz8h5nRRNOnkmecGF6OJSGCOtapM9VIC0/Sgb
 I1mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=gKqOr9BTXct/tRsLbZ99P7dlk5cf6Eud2sZybPk3YFo=;
 b=R4C2B+8pRwQ0eEo9K41Spbjg2WfvLb0zCGxIyK9obDuHQjzPH2LQOUCt5DZjkILLrY
 XEm2BjcTV3Rj9zkD+pu7Ts60w84flFXh786p87Gs+kG//f8OqkgNA5TKcgit415MeOSS
 5Q2OHOZ4DS+ER/O3oZ34lkeWrYpSp4AasrXK59rdqLYdnjhzx4lwnqzd9vTEc0mSMCIe
 ceBt3zXF8FdmPmv2/MNVuMfXfWuBJuSJfq8Dq5ZWD5G/+LDgF2KAB+rBqWW2et3JjbOq
 iN5mvzrJyISD7mq1Cqc3V5KVKAm7hZnwSuXiv2V3nQ2Bi8US3AaNWVM62kHMWF36WImx
 ML8Q==
X-Gm-Message-State: AOAM5333AiJbp+jOXWhMoxUgl2Sa3KbtP/IAXSLmxqrUl8eGQWwC4wdk
 Y2ufuLcriKDNtHGN0THFJvP7oQ==
X-Google-Smtp-Source: ABdhPJzWzZhMRMPnCKckhJQXhaq4Dq6bmLUHi3xHIiorsZ6H00ywKErdNka2kYZzNUgvcZShJCKXEg==
X-Received: by 2002:a05:6000:1149:: with SMTP id
 d9mr26758779wrx.347.1617004015168; 
 Mon, 29 Mar 2021 00:46:55 -0700 (PDT)
Received: from dell ([91.110.221.217])
 by smtp.gmail.com with ESMTPSA id r206sm18457285wma.46.2021.03.29.00.46.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 00:46:54 -0700 (PDT)
Date: Mon, 29 Mar 2021 08:46:50 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v7 01/13] dt-bindings: mfd: Add 'nxp,imx8mq-vpu-ctrl' to
 syscon list
Message-ID: <20210329074650.GC2916463@dell>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
 <20210329065743.11961-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210329065743.11961-2-benjamin.gaignard@collabora.com>
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org,
 Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org,
 wens@csie.org, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 jernej.skrabec@siol.net, gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCAyOSBNYXIgMjAyMSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cgo+IEFkZCAnbnhw
LGlteDhtcS12cHUtY3RybCcgaW4gdGhlIGxpc3Qgb2YgcG9zc2libGUgc3lzY29uLgo+IEl0IHdp
bGwgdXNlZCB0byBhY2Nlc3MgdG8gdGhlIFZQVSBjb250cm9sIHJlZ2lzdGVycy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3Jh
LmNvbT4KPiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiB2
ZXJzaW9uIDc6Cj4gIC0gQWRkIFJvYiBhY2sKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21mZC9zeXNjb24ueWFtbCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKCkFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2Vy
dmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZv
bGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
