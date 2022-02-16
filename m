Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0124B84E2
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Feb 2022 10:51:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBA6A400FB;
	Wed, 16 Feb 2022 09:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7DNJUDXItwL; Wed, 16 Feb 2022 09:51:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DB824002B;
	Wed, 16 Feb 2022 09:51:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59BED1BF488
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 09:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47A90415B1
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 09:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wyff1h7LDT6K for <devel@linuxdriverproject.org>;
 Wed, 16 Feb 2022 09:51:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1ED44410A8
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 09:51:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 02902616FE;
 Wed, 16 Feb 2022 09:51:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BCCEC004E1;
 Wed, 16 Feb 2022 09:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645005101;
 bh=jrCG01kuZtoWFzJMK4a9MI6BlNvCp9nP8W6TDqdJUAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VUio0Q9vJ7wTrHosofFUk73FdcSLNbwzOeAyvASdGD/Q4N7+9MJl+CTVhqiBNpg4S
 DGTKAi4HIUXaAR3ys4yo0utRqVdAWLfS4yYWUe3M8OwUWJ61wp8PSe7FFzU0X6cn65
 B8IFJjpTymndDJJJDQJYNFVGJPaxHYzt3oVJvIuKNu1XHTQYZIVPRMZ/gnHAh7ceUG
 lCrQHvRaaXU+ZqI33DQICXUdbQXJZJRcrukEfgk6QRr0KUxIWN3MXpO4PA7n09ds4O
 sNw33JAQyj3fSlwdvTaFreL703xgCLwy/YyqPa91IwU3K50xIQGIwVAfzVYB/W7pia
 /Y3vOfVtO88Ew==
Received: by pali.im (Postfix)
 id 583107F4; Wed, 16 Feb 2022 10:51:39 +0100 (CET)
Date: Wed, 16 Feb 2022 10:51:39 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 2/2] staging: wfx: apply the necessary SDIO quirks for
 the Silabs WF200
Message-ID: <20220216095139.2oulgq2vwvpsmnan@pali>
References: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
 <20220216093112.92469-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220216093112.92469-3-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, Ulf Hansson <ulf.hansson@linaro.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5IDE2IEZlYnJ1YXJ5IDIwMjIgMTA6MzE6MTIgSmVyb21lIFBvdWlsbGVyIHdy
b3RlOgo+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNv
bT4KPiAKPiBVbnRpbCBub3csIHRoZSBTRElPIHF1aXJrcyBhcmUgYXBwbGllZCBkaXJlY3RseSBm
cm9tIHRoZSBkcml2ZXIuCj4gSG93ZXZlciwgaXQgaXMgYmV0dGVyIHRvIGFwcGx5IHRoZSBxdWly
a3MgYmVmb3JlIGRyaXZlciBwcm9iaW5nLiBTbywKPiB0aGlzIHBhdGNoIHJlbG9jYXRlIHRoZSBx
dWlya3MgaW4gdGhlIE1NQyBmcmFtZXdvcmsuCj4gCj4gTm90ZSB0aGF0IHRoZSBXRjIwMCBoYXMg
bm8gdmFsaWQgU0RJTyBWSUQvUElELiBUaGVyZWZvcmUsIHdlIG1hdGNoIERUCj4gcmF0aGVyIHRo
YW4gb24gdGhlIFNESU8gVklEL1BJRC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3Vp
bGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+CgpSZXZpZXdlZC1ieTogUGFsaSBSb2jD
oXIgPHBhbGlAa2VybmVsLm9yZz4KCj4gLS0tCj4gIGRyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmgg
ICAgICB8IDUgKysrKysKPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc2Rpby5jIHwgMyAtLS0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmggYi9kcml2ZXJzL21tYy9jb3Jl
L3F1aXJrcy5oCj4gaW5kZXggMjBmNTY4NzI3Mjc3Li5mODc5ZGM2M2Q5MzYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9tbWMvY29yZS9xdWlya3MuaAo+ICsrKyBiL2RyaXZlcnMvbW1jL2NvcmUvcXVp
cmtzLmgKPiBAQCAtMTQ5LDYgKzE0OSwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1tY19maXh1
cCBfX21heWJlX3VudXNlZCBzZGlvX2ZpeHVwX21ldGhvZHNbXSA9IHsKPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCBtbWNfZml4dXAgX19tYXliZV91bnVzZWQgc2Rpb19jYXJkX2luaXRfbWV0aG9kc1td
ID0gewo+ICAJU0RJT19GSVhVUF9DT01QQVRJQkxFKCJ0aSx3bDEyNTEiLCB3bDEyNTFfcXVpcmss
IDApLAo+ICAKPiArCVNESU9fRklYVVBfQ09NUEFUSUJMRSgic2lsYWJzLHdmMjAwIiwgYWRkX3F1
aXJrLAo+ICsJCQkgICAgICBNTUNfUVVJUktfQlJPS0VOX0JZVEVfTU9ERV81MTIgfAo+ICsJCQkg
ICAgICBNTUNfUVVJUktfTEVOSUVOVF9GTjAgfAo+ICsJCQkgICAgICBNTUNfUVVJUktfQkxLU1pf
Rk9SX0JZVEVfTU9ERSksCj4gKwo+ICAJRU5EX0ZJWFVQCj4gIH07Cj4gIAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1
c19zZGlvLmMKPiBpbmRleCAzMTJkMmQzOTFhMjQuLjUxYTBkNThhOTA3MCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2J1c19zZGlvLmMKPiBAQCAtMjE2LDkgKzIxNiw2IEBAIHN0YXRpYyBpbnQgd2Z4X3NkaW9f
cHJvYmUoc3RydWN0IHNkaW9fZnVuYyAqZnVuYywgY29uc3Qgc3RydWN0IHNkaW9fZGV2aWNlX2lk
ICppCj4gIAlidXMtPmZ1bmMgPSBmdW5jOwo+ICAJYnVzLT5vZl9pcnEgPSBpcnFfb2ZfcGFyc2Vf
YW5kX21hcChucCwgMCk7Cj4gIAlzZGlvX3NldF9kcnZkYXRhKGZ1bmMsIGJ1cyk7Cj4gLQlmdW5j
LT5jYXJkLT5xdWlya3MgfD0gTU1DX1FVSVJLX0xFTklFTlRfRk4wIHwKPiAtCQkJICAgICAgTU1D
X1FVSVJLX0JMS1NaX0ZPUl9CWVRFX01PREUgfAo+IC0JCQkgICAgICBNTUNfUVVJUktfQlJPS0VO
X0JZVEVfTU9ERV81MTI7Cj4gIAo+ICAJc2Rpb19jbGFpbV9ob3N0KGZ1bmMpOwo+ICAJcmV0ID0g
c2Rpb19lbmFibGVfZnVuYyhmdW5jKTsKPiAtLSAKPiAyLjM0LjEKPiAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
