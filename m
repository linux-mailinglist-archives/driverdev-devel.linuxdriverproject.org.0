Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5138848C423
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 13:45:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A748584B6B;
	Wed, 12 Jan 2022 12:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0imkqWZq0LO3; Wed, 12 Jan 2022 12:45:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05EAA83F91;
	Wed, 12 Jan 2022 12:45:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 290D11BF3EB
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 12:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1575C40A1B
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 12:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrIPmUIoJwQL for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 12:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E5A444071B
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 12:45:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DA28EB81E05;
 Wed, 12 Jan 2022 12:45:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11578C36AE9;
 Wed, 12 Jan 2022 12:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641991520;
 bh=izcITvnbn3eRk7EuxKjfXB5/A1HR1stA4bPdJSHT784=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=JdalBd1hee3fOcfK3y+gyjG7syal6TOpysOc+CCFa3gx8T5JX/ePUdW50xMAAXK2R
 5f4imQYbL37jsl9NtNM0brHcj5P9was8N6j8PlaHQ+jtD0o3veE7MnG2+qJub6F/FM
 rbO3uu6bWxf4IhAoA7JXU48fTl1rxDLqiVkTBGzObwuzudUX6T1UMyFCkAg2NormIs
 5tE7n/WwYTYZ8T2q5kvgJHnAZojVGNO6auD6KJFLegPt7ntavoe3fvqZ4DP5EKXziN
 UfN+eQ0Uv67I0uF/oKrApqVkYYsTZUVM11Yxuqjltt3l8vvKZoFQPc07bLMC2SwhCJ
 kulZ834X1K+zQ==
From: Kalle Valo <kvalo@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v9 01/24] mmc: sdio: add SDIO IDs for Silabs WF200 chip
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-2-Jerome.Pouiller@silabs.com>
 <CAPDyKFreu2S3Okc9pXckDjUQ2ieb-urSM0riysFnEHRhEqXBKg@mail.gmail.com>
Date: Wed, 12 Jan 2022 14:45:13 +0200
In-Reply-To: <CAPDyKFreu2S3Okc9pXckDjUQ2ieb-urSM0riysFnEHRhEqXBKg@mail.gmail.com>
 (Ulf Hansson's message of "Wed, 12 Jan 2022 11:58:27 +0100")
Message-ID: <87k0f5t95y.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
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
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+IHdyaXRlczoKCj4gT24gVHVlLCAx
MSBKYW4gMjAyMiBhdCAxODoxNCwgSmVyb21lIFBvdWlsbGVyCj4gPEplcm9tZS5Qb3VpbGxlckBz
aWxhYnMuY29tPiB3cm90ZToKPj4KPj4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPgo+Pgo+PiBOb3RlIHRoYXQgdGhlIHZhbHVlcyB1c2VkIGJ5IFNp
bGFicyBhcmUgdW5jb21tb24uIEEgZHJpdmVyIGNhbm5vdCBmdWxseQo+PiByZWx5IG9uIHRoZSBT
RElPIFBuUC4gSXQgc2hvdWxkIGFsc28gY2hlY2sgaWYgdGhlIGRldmljZSBpcyBkZWNsYXJlZCBp
bgo+PiB0aGUgRFQuCj4+Cj4+IFNvLCB0byBhcHBseSB0aGUgcXVpcmtzIG5lY2Vzc2FyeSBmb3Ig
dGhlIFNpbGFicyBXRjIwMCwgd2UgcmVseSBvbiB0aGUKPj4gRFQgcmF0aGVyIHRoYW4gb24gdGhl
IFNESU8gVklEL1BJRC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGpl
cm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+Cj4gSSBndWVzcyB0aGUgc2VyaWVzIGlzIGdldHRp
bmcgY2xvc2UgdG8gZ2V0dGluZyBxdWV1ZWQgdXA/Cj4KPiBBcyBhbiBvcHRpb24gdG8gbWFrZSBz
dXJlICRzdWJqZWN0IHBhdGNoIGRvZXNuJ3QgY2F1c2UgYSBwcm9ibGVtIGZvcgo+IHRoYXQsIEkg
Y2FuIHF1ZXVlIGl0IHVwIGFuZCBzZW5kIGl0IGZvciB0aGUgNS4xNy1yY3Mgb3IgaWYgS2FsbGUK
PiBwcmVmZXIgdG8gY2FycnkgdGhpcyBpbiB0aGlzIHRyZWUgd2l0aCBteSBhY2s/Cj4KPiBLYWxs
ZT8KClRoZSBlYXNpZXN0IGlzIGlmIHlvdSBjYW4gdGFrZSBpdCB0byB5b3VyIHRyZWUsIHRhY2sh
CgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNz
L2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2Rv
Y3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
