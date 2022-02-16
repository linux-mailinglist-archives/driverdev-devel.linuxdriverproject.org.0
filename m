Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A78C4B85DC
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Feb 2022 11:36:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB33F4030F;
	Wed, 16 Feb 2022 10:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZiDRArHmUGSd; Wed, 16 Feb 2022 10:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63A4C4032C;
	Wed, 16 Feb 2022 10:36:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8362F1BF5B3
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 10:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D655082A8F
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 10:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X4-m2ZOUFB6E for <devel@linuxdriverproject.org>;
 Wed, 16 Feb 2022 10:36:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 978F8829F2
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 10:36:04 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id j15so2943232lfe.11
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 02:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DPYWkKQW0nFWmY1xKFD4WRaxOqq/BeFHyxszPN5EPVU=;
 b=sUG7rjTRD6NrI48dGWwKOWJyGgjS5g2H1DjFZUQiMmRJj/ir9Wv7S+f3pcYhwB3G21
 jgW2ghTrDeTyWExposS8pU9olgt0OSFSsKqTWvFBrZtYeR1hzrMRB/QHZbRFsmF8Z2S0
 H/h0PiEEIFA7GmMAI2JMN3sa/fyLmEXYE57MT9xMELnMPIGAArOM53KTMVRbp5J3baMB
 isLqyWoSSBY1G4sXiIcXWs7lxW91pyd5h21jcWCoFLVEL0Fbk7le1PLdPy5uxaXftMdu
 5wLQBv6dJWYyW7H1/lavO2wyNL8O5n34jBSkfOXmCyy+T54Vr7Az+AHoRojt+05MRAOP
 vMsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DPYWkKQW0nFWmY1xKFD4WRaxOqq/BeFHyxszPN5EPVU=;
 b=ju7qmQisR7aQpPO6yNPW+4y1SJShpJPaYya0XIg8/myZZrBahv3GtZg+NJxu1465Pn
 T+Xwtc/bv5pREPkhm8Bs6aQdj3ge+QDPI7KjGKDObuLE8k6IvIiV7AEjInnhFyewwb5E
 czZODMvnIJGtzSh22JWxG0tL4zT9AC8dwi1MnlRAnJPSNr8fZA2ThtiknBaMQNq19Gcd
 yODxcr8mxMPwRPjkh7i07TyF7dLFe11b2VIqsFUGh3xG3YtZvIynqjGEfZIcRJfwYOq7
 Ls27c2W21Sh0nQGgcLeRNwK9TMJOhi+ycV2GBerCLlJoSPnbzjMg0EUlBZmW2eHb6wdj
 V/iw==
X-Gm-Message-State: AOAM533yvHHbdQe9vTNPTDkjR2B5tal/RWVN/VqJrmJZDexzY2HbHh2p
 EcN6KzTSh9hBXZIVpztxgCc8LjdAIkJl7yvZRiCMgw==
X-Google-Smtp-Source: ABdhPJz9lTvKXYqNUYEUwJcowusuOCgV3hil3k2PW920Mo0Cq3dd/tLhknO2IA4VJElhIgGQWuFNWTFzEa2t3lXDQAk=
X-Received: by 2002:a05:6512:388d:b0:443:6066:2c8d with SMTP id
 n13-20020a056512388d00b0044360662c8dmr1552732lft.184.1645007762118; Wed, 16
 Feb 2022 02:36:02 -0800 (PST)
MIME-Version: 1.0
References: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 16 Feb 2022 11:35:25 +0100
Message-ID: <CAPDyKFreMJigpAgE95EgkStNrE+r+_k9iRuTXsFk6t9d66e0TQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] staging: wfx: apply SDIO suggestions
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAxNiBGZWIgMjAyMiBhdCAxMDozMSwgSmVyb21lIFBvdWlsbGVyCjxKZXJvbWUuUG91
aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVy
b21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBIaSBVbGYsIEdyZWcsCj4KPiBUaGUgc2Vjb25k
IHBhdGNoIG9mIHRoaXMgc2VyaWVzIHRvdWNoIHRvIHRoZSBzdGFnaW5nIHRyZWUgYW5kIHRvIHRo
ZSBNTUMKPiBmcmFtZXdvcmsuIEkgZG9uJ3Qga25vdyB3aGF0IGlzIHRoZSBydWxlIGZvciB0aGVz
ZSBjYXNlcywgYnV0IEkgdGhpbmsgaXQKPiBtYWtlcyBtb3JlIHNlbnNlIHRvIGNhcnJ5IHRoaXMg
cGF0Y2ggd2l0aCB0aGUgc3RhZ2luZyB0cmVlLgoKSSBkb24ndCBiZWxpZXZlIHRoZSBjaGFuZ2Vz
IHRvIHRoZSBtbWMgY29yZSB3aWxsIGNhdXNlIGFueSBtZXJnZQpjb25mbGljdCwgc28gZmVlbCBm
cmVlIHRvIGZ1bm5lbCB0aGlzIHRocm91Z2ggd2hhdGV2ZXIgdHJlZSBtYWtlcyBiZXN0CnNlbnNl
LgoKRm9yIHRoZSBzZXJpZXM6ClJldmlld2VkLWJ5OiBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25A
bGluYXJvLm9yZz4KCktpbmQgcmVnYXJkcwpVZmZlCgo+Cj4KPiBKw6lyw7RtZSBQb3VpbGxlciAo
Mik6Cj4gICBzdGFnaW5nOiB3Zng6IFdGMjAwIGhhcyBubyBvZmZpY2lhbCBTRElPIElEcwo+ICAg
c3RhZ2luZzogd2Z4OiBhcHBseSB0aGUgbmVjZXNzYXJ5IFNESU8gcXVpcmtzIGZvciB0aGUgU2ls
YWJzIFdGMjAwCj4KPiAgZHJpdmVycy9tbWMvY29yZS9xdWlya3MuaCAgICAgIHwgNSArKysrKwo+
ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMgfCA4ICsrLS0tLS0tCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjM0LjEK
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
