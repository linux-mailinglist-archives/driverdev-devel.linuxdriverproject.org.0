Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E8748C3D2
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 13:14:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E15340A20;
	Wed, 12 Jan 2022 12:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UGGdAAgqpDeK; Wed, 12 Jan 2022 12:14:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C6904019F;
	Wed, 12 Jan 2022 12:14:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6C491BF3EB
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 12:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B59A8428E8
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 12:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7cu2ch61BMnJ for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 12:14:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 316F8428CC
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 12:14:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 72A40618BC;
 Wed, 12 Jan 2022 12:14:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD7EAC36AE9;
 Wed, 12 Jan 2022 12:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641989653;
 bh=QOw9mjKrUhdFLq+aqixvaYpTbivRVrm6xPbrSyuS6cA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=keT2ISvWVQwMZpjmj8yQBAFJRHOcZnLatdTj+fKDt5uyzg94gSxO72qYzoZmNrEEW
 9oZEZZPE/L3fTX5Nma8gV5LkjA/PJXrEf0X6cC0b/kqoNS/cnx5lHjLEwoi+8PYGrW
 ZR+nOYafp2QQomJcdhafLIvmQ+4FlHe6McKmtf1jZr/n+mlUkCWng7NN9a1EEE/Z86
 q/Q90BZGkDtj0BmIQtyseH8MjINrWAqLEEKxr0d20n2zXLye9ubhHyNrVohDS4ucvR
 b0K3tgfdc1AKf2Wd1O9WAyKz3nGbUQINDNQjUHwh63PGzf6W58Drz7tqCcZyma65Ac
 Y3LA6EV6sRNZg==
Received: by pali.im (Postfix)
 id 3E5A1768; Wed, 12 Jan 2022 13:14:11 +0100 (CET)
Date: Wed, 12 Jan 2022 13:14:11 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v9 08/24] wfx: add bus_sdio.c
Message-ID: <20220112121411.qq2egpoujtsvswla@pali>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
 <20220112105859.u4j76o7cpsr4znmb@pali> <42104281.b1Mx7tgHyx@pc-42>
 <20220112114332.jadw527pe7r2j4vv@pali> <Yd7EOcx/zHJFeJUv@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yd7EOcx/zHJFeJUv@kroah.com>
User-Agent: NeoMutt/20180716
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5IDEyIEphbnVhcnkgMjAyMiAxMzowNjoxNyBHcmVnIEtyb2FoLUhhcnRtYW4g
d3JvdGU6Cj4gT24gV2VkLCBKYW4gMTIsIDIwMjIgYXQgMTI6NDM6MzJQTSArMDEwMCwgUGFsaSBS
b2jDoXIgd3JvdGU6Cj4gPiBCdHcsIGlzIHRoZXJlIGFueSBwcm9qZWN0IHdoaWNoIG1haW50YWlu
cyBTRElPIGlkcywgbGlrZSB0aGVyZSBpcwo+ID4gcGNpLWlkcy51Y3cuY3ogZm9yIFBDSSBvciB3
d3cubGludXgtdXNiLm9yZy91c2ItaWRzLmh0bWwgZm9yIFVTQj8KPiAKPiBCb3RoIG9mIHRob3Nl
IHByb2plY3RzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBrZXJuZWwgZHJpdmVycyBvcgo+
IHZhbHVlcyBhdCBhbGwsIHRoZXkgYXJlIG9ubHkgZm9yIHVzZXJzcGFjZSB0b29scyB0byB1c2Uu
Cj4gCj4gU28gZXZlbiBpZiB0aGVyZSB3YXMgc3VjaCBhIHRoaW5nIGZvciBTRElPIGlkcywgSSBk
b3VidCBpdCB3b3VsZCBoZWxwCj4gaGVyZS4KCldoeSBkbyB5b3UgZG91YnQ/IEZvciBzdXJlIGlm
IHdvdWxkIGhlbHAhIEp1c3QgY2hlY2tpbmcgY29tbWVudHMgaWYgc29tZQp1c2VyIHJlcG9ydGVk
IGRpZmZlcmVudCBjYXJkIHdpdGggdGhpcyBpZCB3b3VsZCB0ZWxsIHVzIGhvdyBicm9rZW4gaXQg
aXMKYW5kIGhvdyBzYW5lIGl0IGlzIHRvIGRlZmluZSBtYWNybyBmb3IgcGFydGljdWxhciBpZC4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
