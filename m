Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7092954D3
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 00:30:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF17A86DA6;
	Wed, 21 Oct 2020 22:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CfdVRxCCYydp; Wed, 21 Oct 2020 22:30:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8BE518610F;
	Wed, 21 Oct 2020 22:30:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83E6E1BF387
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 22:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8036F86D56
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 22:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rz21AvhtM4I2 for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 22:30:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F26438610F
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 22:30:23 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F2AD241A6;
 Wed, 21 Oct 2020 22:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603319423;
 bh=cBtXpIIfhVm6w9APhIRH4zZW2n9okENfsHWwVXqkh9E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uudD92JS8Rp5LZ+HGLEOwObocJh9sdHq6wjae/U14waD7vjJIC49BnBAMnaYgJ6C2
 zvYE/ITJsmbOHcWerZyV8CQ9PkiQoedVGgkG3D3pSZ0Od90psxiTWL28Wa3FfX6pi6
 AzhINpqA4vgAwHRChu3LrC31Tvq3yY5yeoah+WcY=
Received: by pali.im (Postfix)
 id 7537BA83; Thu, 22 Oct 2020 00:30:20 +0200 (CEST)
Date: Thu, 22 Oct 2020 00:30:20 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v2 01/24] mmc: sdio: add SDIO IDs for Silabs WF200 chip
Message-ID: <20201021223020.btkgdo7cgzavxbpk@pali>
References: <20201020125817.1632995-1-Jerome.Pouiller@silabs.com>
 <20201020125817.1632995-2-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020125817.1632995-2-Jerome.Pouiller@silabs.com>
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
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlc2RheSAyMCBPY3RvYmVyIDIwMjAgMTQ6NTc6NTQgSmVyb21lIFBvdWlsbGVyIHdyb3Rl
Ogo+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4K
PiAKPiBBZGQgU2lsYWJzIFNESU8gSUQgdG8gc2Rpb19pZHMuaC4KPiAKPiBOb3RlIHRoYXQgdGhl
IHZhbHVlcyB1c2VkIGJ5IFNpbGFicyBhcmUgdW5jb21tb24uIEEgZHJpdmVyIGNhbm5vdCBmdWxs
eQo+IHJlbHkgb24gdGhlIFNESU8gUG5QLiBJdCBzaG91bGQgYWxzbyBjaGVjayBpZiB0aGUgZGV2
aWNlIGlzIGRlY2xhcmVkIGluCj4gdGhlIERULgo+IAo+IFNpZ25lZC1vZmYtYnk6IErDqXLDtG1l
IFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KCkxvb2tzIGdvb2QhCgpBY2tl
ZC1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KCj4gLS0tCj4gIGluY2x1ZGUvbGlu
dXgvbW1jL3NkaW9faWRzLmggfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaCBiL2lu
Y2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKPiBpbmRleCAxMjAzNjYxOTM0NmMuLjIwYTQ4MTYy
ZjdmYyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCj4gKysrIGIv
aW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaAo+IEBAIC0yNSw2ICsyNSwxMSBAQAo+ICAgKiBW
ZW5kb3JzIGFuZCBkZXZpY2VzLiAgU29ydCBrZXk6IHZlbmRvciBmaXJzdCwgZGV2aWNlIG5leHQu
Cj4gICAqLwo+ICAKPiArLy8gU2lsYWJzIGRvZXMgbm90IHVzZSBhIHJlbGlhYmxlIHZlbmRvciBJ
RC4gVG8gYXZvaWQgY29uZmxpY3RzLCB0aGUgZHJpdmVyCj4gKy8vIHdvbid0IHByb2JlIHRoZSBk
ZXZpY2UgaWYgaXQgaXMgbm90IGFsc28gZGVjbGFyZWQgaW4gdGhlIERULgo+ICsjZGVmaW5lIFNE
SU9fVkVORE9SX0lEX1NJTEFCUwkJCTB4MDAwMAo+ICsjZGVmaW5lIFNESU9fREVWSUNFX0lEX1NJ
TEFCU19XRjIwMAkJMHgxMDAwCj4gKwo+ICAjZGVmaW5lIFNESU9fVkVORE9SX0lEX1NURQkJCTB4
MDAyMAo+ICAjZGVmaW5lIFNESU9fREVWSUNFX0lEX1NURV9DVzEyMDAJCTB4MjI4MAo+ICAKPiAt
LSAKPiAyLjI4LjAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
