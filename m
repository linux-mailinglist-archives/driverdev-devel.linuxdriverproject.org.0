Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 858964B84E0
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Feb 2022 10:51:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14EA1832B0;
	Wed, 16 Feb 2022 09:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ohjR1TqiJSu; Wed, 16 Feb 2022 09:51:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C54E983224;
	Wed, 16 Feb 2022 09:51:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 420D21BF488
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 09:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FD6860B2F
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 09:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWXTOUfXVf5s for <devel@linuxdriverproject.org>;
 Wed, 16 Feb 2022 09:51:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 878BC60AD0
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 09:51:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8D441B818F7;
 Wed, 16 Feb 2022 09:51:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33E9FC004E1;
 Wed, 16 Feb 2022 09:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645005062;
 bh=0bBP7O0XYxaCF8Oh+43Ozdh5BeoEzCfjshF6waVQ+Z8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qiTQeEptSGPhGAmMwAq5weoKundd9sfyhN+N0YuW+E2XJRjI+hGiVcu7/jN+JFamV
 wGQ7U/pkpUUF/IGwRwXnzeJLN4A9qdlPNrD7scXVQ9SPRLBWUdypgqTdF77JJK78NA
 dma6fFibmgbGMDed0l2rs98/DkcxdCZR745MtkcKX5nykDbW88s7f5blDzsStPRdQK
 NeX8ceRdo9p8G/8PFaj7TCCKyB7w2h/T64DLuTw/fMYEljoOadrvdroUPmvK6wVJQi
 e3p/LZT/f8nsdv1zvkqQGfusmIH3DkuoyXvZfzc6Oaf5Iztm+Odq5/uIfhiJgUCT3Y
 2GYUSWfiWsjEQ==
Received: by pali.im (Postfix)
 id CDC1B7F4; Wed, 16 Feb 2022 10:50:59 +0100 (CET)
Date: Wed, 16 Feb 2022 10:50:59 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 1/2] staging: wfx: WF200 has no official SDIO IDs
Message-ID: <20220216095059.how2bexndwenhs6h@pali>
References: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
 <20220216093112.92469-2-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220216093112.92469-2-Jerome.Pouiller@silabs.com>
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

T24gV2VkbmVzZGF5IDE2IEZlYnJ1YXJ5IDIwMjIgMTA6MzE6MTEgSmVyb21lIFBvdWlsbGVyIHdy
b3RlOgo+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNv
bT4KPiAKPiBTb21lIG1heSB0aGluayB0aGF0IFNESU9fVkVORE9SX0lEX1NJTEFCUyAvIFNESU9f
REVWSUNFX0lEX1NJTEFCU19XRjIwMAo+IGFyZSBvZmZpY2lhbCBTRElPIElEcy4gSG93ZXZlciwg
aXQgaXMgbm90IHRoZSBjYXNlLCB0aGUgdmFsdWVzIHVzZWQgYnkKPiBXRjIwMCBhcmUgbm90IG9m
ZmljaWFsIChCVFcsIHRoZSBkcml2ZXIgcmVseSBvbiB0aGUgRFQgcmF0aGVyIHRoYW4gb24KPiB0
aGUgU0RJTyBJRHMgdG8gcHJvYmUgdGhlIGRldmljZSkuCj4gCj4gVG8gYXZvaWQgYW55IGNvbmZ1
c2lvbiwgcmVtb3ZlIHRoZSBkZWZpbml0aW9ucyBTRElPXypfSURfU0lMQUJTKiBhbmQgdXNlCj4g
cmF3IHZhbHVlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21l
LnBvdWlsbGVyQHNpbGFicy5jb20+CgpSZXZpZXdlZC1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2Vy
bmVsLm9yZz4KCj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8uYyB8IDUgKyst
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc2Rpby5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9idXNfc2Rpby5jCj4gaW5kZXggYmMzZGY4NWEwNWI2Li4zMTJkMmQzOTFhMjQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc2Rpby5jCj4gKysrIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9idXNfc2Rpby5jCj4gQEAgLTI1NywxMCArMjU3LDkgQEAgc3RhdGlj
IHZvaWQgd2Z4X3NkaW9fcmVtb3ZlKHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMpCj4gIAlzZGlvX3Jl
bGVhc2VfaG9zdChmdW5jKTsKPiAgfQo+ICAKPiAtI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9TSUxB
QlMgICAgICAgIDB4MDAwMAo+IC0jZGVmaW5lIFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIwMCAg
MHgxMDAwCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgd2Z4X3NkaW9faWRz
W10gPSB7Cj4gLQl7IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX1NJTEFCUywgU0RJT19ERVZJ
Q0VfSURfU0lMQUJTX1dGMjAwKSB9LAo+ICsJLyogV0YyMDAgZG9lcyBub3QgaGF2ZSBvZmZpY2lh
bCBWSUQvUElEICovCj4gKwl7IFNESU9fREVWSUNFKDB4MDAwMCwgMHgxMDAwKSB9LAo+ICAJeyB9
LAo+ICB9Owo+ICBNT0RVTEVfREVWSUNFX1RBQkxFKHNkaW8sIHdmeF9zZGlvX2lkcyk7Cj4gLS0g
Cj4gMi4zNC4xCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
