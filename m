Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB3C2CC38D
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 18:26:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F3D68723B;
	Wed,  2 Dec 2020 17:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LNMW_dfrsi6N; Wed,  2 Dec 2020 17:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B2F88721B;
	Wed,  2 Dec 2020 17:26:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3F141BF3BE
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B050787843
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PL3z5s9bcnLy for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 17:26:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E96F687841
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 17:26:20 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id o5so1477002pgm.10
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 09:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+ImcfZLvvBHYTsDO30kABBGCYuRzWZL4tNLUXZUAuvg=;
 b=MAQoRwiVDhTQ6Ub6BSmEB45rRexBqKhTBoqOebc0RP+LnrSgRXwxM68WZwNwl1UHNW
 UJYMjaX3bXAjVzGfXz7DG+Zzm+9Jx8XWvy/L1MUbQIhv625BAbzflWfXSUUS48fVHNFD
 eApJoZ+qchvmIPi21of4/K11CrOmV/yZpk12TmoiV2UaUlnszyUYLORhWLSeBrzam7HI
 NhlYDfAumfunnJX6BCpzPmkzRCWqS55BC8Kfx0Y3UmVv1hOjFn3A9e400Fpe3ArJb2HY
 FyebhMDtYqtyojkj0gyOMdZ6A7qy93Co51f77Zppx7pInGPb0ZpoJjXY4Tzsm1r1Hwjx
 vahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+ImcfZLvvBHYTsDO30kABBGCYuRzWZL4tNLUXZUAuvg=;
 b=VOI5+t9nm1vMzSsV33VrJCDtKeOKHt3lCyzXE7gyanYVwEd9qBlu2XCZ3zT10muWT+
 3Y4XAlXLOFBtxZEsAH6c6TscOkcdXC7jvisUTJ5zYnalLIiLlInNO+yxFEZUscXP4BHU
 yfkBrtDnmG2SsDHcRLq/tHeih+UvztMlTVFECd9nC7fHSHX5XNHI2ArNxzS6wruJTVNS
 r2Ja4JrKhNXAEKaD9l/8zbp6BktCRQv7HPBvHe4tksji4UN/AjvRGUUrUnnvy4qB71Pl
 N2nkEcGu8sk9dNz6DwcFXRSuYCYazH9U66MSbAcYkeULOmEsibR8WVWbfQWQKkJbN5SC
 sY2Q==
X-Gm-Message-State: AOAM53211/OqQ1b5bzDssjgJ5k2rHXtGo6pJq5YaouzpFHBQJ4mirOVF
 C4qiN+r1yG//fso3F1UKF8k=
X-Google-Smtp-Source: ABdhPJyxF+Y0NQAkwkYnU2mgmQOhTo1yEH5GDBb1+SLp7aPVK2X1GOo8Gie7sldyvHPUZqw2992YFg==
X-Received: by 2002:a63:5a22:: with SMTP id o34mr776276pgb.187.1606929980486; 
 Wed, 02 Dec 2020 09:26:20 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y21sm424018pfr.90.2020.12.02.09.26.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 09:26:19 -0800 (PST)
Subject: Re: [PATCH v5 01/11] firmware: raspberrypi: Keep count of all
 consumers
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-2-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <e78cde23-5a5e-5e46-fde4-a299629ec6d6@gmail.com>
Date: Wed, 2 Dec 2020 09:26:15 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201123183833.18750-2-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAxMS8yMy8yMDIwIDEwOjM4IEFNLCBOaWNvbGFzIFNhZW56IEp1bGllbm5lIHdyb3RlOgo+
IFdoZW4gdW5iaW5kaW5nIHRoZSBmaXJtd2FyZSBkZXZpY2Ugd2UgbmVlZCB0byBtYWtlIHN1cmUg
aXQgaGFzIG5vCj4gY29uc3VtZXJzIGxlZnQuIE90aGVyd2lzZSB3ZSdkIGxlYXZlIHRoZW0gd2l0
aCBhIGZpcm13YXJlIGhhbmRsZQo+IHBvaW50aW5nIGF0IGZyZWVkIG1lbW9yeS4KPiAKPiBLZWVw
IGEgcmVmZXJlbmNlIGNvdW50IG9mIGFsbCBjb25zdW1lcnMgYW5kIGludHJvZHVjZSBycGlfZmly
bXdhcmVfcHV0KCkKPiB3aGljaCB3aWxsIHBlcm1pdCBhdXRvbWF0aWNhbGx5IGRlY3JlYXNlIHRo
ZSByZWZlcmVuY2UgY291bnQgdXBvbgo+IHVuYmluZGluZyBjb25zdW1lciBkcml2ZXJzLgo+IAo+
IFN1Z2dlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2Flbnpq
dWxpZW5uZUBzdXNlLmRlPgoKVGhpcyBsb29rcyBmaW5lIHRvIG1lLCBqdXN0IG9uZSBuaXQgYmVs
b3c6Cgpbc25pcF0KCj4gIC8qKgo+IC0gKiBycGlfZmlybXdhcmVfZ2V0IC0gR2V0IHBvaW50ZXIg
dG8gcnBpX2Zpcm13YXJlIHN0cnVjdHVyZS4KCklzIG5vdCByZW1vdmluZyB0aGlzIGxpbmUgZ29p
bmcgdG8gY3JlYXRlIGEga2VybmVsIGRvYyB3YXJuaW5nPwoKV2l0aCB0aGF0IGZpeGVkOgoKUmV2
aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgotLSAKRmxv
cmlhbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
