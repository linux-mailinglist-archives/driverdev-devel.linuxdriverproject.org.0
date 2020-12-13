Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D92562D8B61
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 06:14:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B2D7866D1;
	Sun, 13 Dec 2020 05:14:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z1aSZVbPinjG; Sun, 13 Dec 2020 05:14:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AB6C86B15;
	Sun, 13 Dec 2020 05:14:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A25DD1BF4DD
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 05:14:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EADE86B15
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 05:14:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R40JdaSoZHhB for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 05:14:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 56E25866D1
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 05:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607836443;
 bh=VaeAUus1rNjDVdpneM1XXAW2srOZQ+w5dltPlY5NNS0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=TVSR2uV8fXibrDJR0JsFRK2z5DyNUykiQtSg7rHx7t60763vOPg5/eidNeG8tT1zW
 u9zOoF1TQi0lCyDjSJ3GSUHjq44LtCbqOB34mPkWM+k2NbMWZH3KaqGhbF4o780yQY
 6PNWK+rWJ8rCKerWpESwn7BlzoSFe4gv17J2aEVa3OUqvSVfgCLLdWiRu+pK4xkWzg
 WAmafQpCldA8y/U4XSsZD02KWyOhiXyxGsWMQh5qnbTlKd8kxYpHQ3mmH+bBmc2y/A
 v0Gfbv3pUnNrlJsqBY9oNZB4BbXCSU2SIt8hICHfLSKvYpYwqnB751wqsXTZxeeJsU
 1SSrLT9hUv3Sg==
MIME-Version: 1.0
In-Reply-To: <20201211164801.7838-2-nsaenzjulienne@suse.de>
References: <20201211164801.7838-1-nsaenzjulienne@suse.de>
 <20201211164801.7838-2-nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 01/11] firmware: raspberrypi: Keep count of all
 consumers
From: Stephen Boyd <sboyd@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Date: Sat, 12 Dec 2020 21:14:01 -0800
Message-ID: <160783644171.1580929.15619962172135112128@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UXVvdGluZyBOaWNvbGFzIFNhZW56IEp1bGllbm5lICgyMDIwLTEyLTExIDA4OjQ3OjUwKQo+IFdo
ZW4gdW5iaW5kaW5nIHRoZSBmaXJtd2FyZSBkZXZpY2Ugd2UgbmVlZCB0byBtYWtlIHN1cmUgaXQg
aGFzIG5vCj4gY29uc3VtZXJzIGxlZnQuIE90aGVyd2lzZSB3ZSdkIGxlYXZlIHRoZW0gd2l0aCBh
IGZpcm13YXJlIGhhbmRsZQo+IHBvaW50aW5nIGF0IGZyZWVkIG1lbW9yeS4KPiAKPiBLZWVwIGEg
cmVmZXJlbmNlIGNvdW50IG9mIGFsbCBjb25zdW1lcnMgYW5kIGludHJvZHVjZSBycGlfZmlybXdh
cmVfcHV0KCkKPiB3aGljaCB3aWxsIHBlcm1pdCBhdXRvbWF0aWNhbGx5IGRlY3JlYXNlIHRoZSBy
ZWZlcmVuY2UgY291bnQgdXBvbgo+IHVuYmluZGluZyBjb25zdW1lciBkcml2ZXJzLgo+IAo+IFN1
Z2dlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25p
eC5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxp
ZW5uZUBzdXNlLmRlPgo+IFJldmlld2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxp
QGdtYWlsLmNvbT4KPiAKPiAtLS0KClJldmlld2VkLWJ5OiBTdGVwaGVuIEJveWQgPHNib3lkQGtl
cm5lbC5vcmc+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
