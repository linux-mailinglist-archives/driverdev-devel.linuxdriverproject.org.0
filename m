Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C31A4B10E6
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Feb 2022 15:51:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5566F40925;
	Thu, 10 Feb 2022 14:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GKfoqhjBKBL; Thu, 10 Feb 2022 14:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE2C9408C4;
	Thu, 10 Feb 2022 14:51:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 690F11BF2AA
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 14:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5746D408EC
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 14:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oyd-Da2tW6M9 for <devel@linuxdriverproject.org>;
 Thu, 10 Feb 2022 14:51:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F7BF408C4
 for <devel@driverdev.osuosl.org>; Thu, 10 Feb 2022 14:51:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7233B61ABA;
 Thu, 10 Feb 2022 14:51:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A231C004E1;
 Thu, 10 Feb 2022 14:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644504669;
 bh=lRD3lBDFEjNGr8K6VaXM+s1gigm4CwkCeahOEMFr7wI=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=KMZqYCBbcthMl1mXPaGgp3+weM0K5VQvzyDdObE8aENPyWjeaAK/cWrH/bEV9yujA
 BndPt2/E0Kdtf2JHJKPGO7K343yIuOlkBm1bWhltGfDLYWnWOdR14AMw9lmyDl5nE7
 tACxdqbHzYrRGCsBRfRUq4B0SapvMn8dgJanC8aNzBD0BHURduPhVDaf5bpZF+WV9/
 npsY+Nbnnvnwm3j44WnYbu3FMdoqdRS6FRp/pH7pbSh2JyOLl9SDDnaOG3B4Q0KsQj
 aAct2uel6hwPigln7QwJB0ASNo/qj4idSNBLgXdLF2NmmHjasrkUI1rMe+uc8weZEg
 bkMYhlD2Bl9sQ==
From: Kalle Valo <kvalo@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v9 05/24] wfx: add main.c/main.h
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <2898137.rlL8Y2EFai@pc-42> <87r18a3irb.fsf@kernel.org>
 <4055223.VTxhiZFAix@pc-42>
Date: Thu, 10 Feb 2022 16:51:03 +0200
In-Reply-To: <4055223.VTxhiZFAix@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Thu, 10 Feb 2022 15:41:39 +0100")
Message-ID: <87ee4a3hd4.fsf@kernel.org>
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIFRodXJzZGF5IDEwIEZlYnJ1YXJ5IDIwMjIgMTU6MjA6NTYgQ0VUIEthbGxlIFZhbG8gd3Jv
dGU6Cj4+IAo+PiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+
IHdyaXRlczoKPj4gCj4+ID4gS2FsbGUsIGlzIHRoaXMgZnVuY3Rpb24gd2hhdCB5b3UgZXhwZWN0
ZWQ/IElmIGl0IGlzIHJpZ2h0IGZvciB5b3UsIEkgYW0KPj4gPiBnb2luZyB0byBzZW5kIGl0IHRv
IHRoZSBzdGFnaW5nIHRyZWUuCj4+IAo+PiBMb29rcyBiZXR0ZXIsIGJ1dCBJIGRvbid0IGdldCB3
aHkgJ3snIGFuZCAnfScgYXJlIHN0aWxsIG5lZWRlZC4gQWgsIGRvZXMKPj4gdGhlIGZpcm13YXJl
IHJlcXVpcmUgdG8gaGF2ZSB0aGVtPwo+Cj4gSW5kZWVkLiBJZiAneycgYW5kICd9JyBhcmUgbm90
IHByZXNlbnQsIEkgZ3VhcmFudGVlIHRoZSBmaXJtd2FyZSB3aWxsIHJldHVybgo+IGFuIGVycm9y
IChvciBhc3NlcnQpLiBIb3dldmVyLCBJIGFtIG1vcmUgY29uZmlkZW50IGluIHRoZSBkcml2ZXIg
dGhhbiBpbiB0aGUKPiBmaXJtd2FyZSB0byByZXBvcnQgZXJyb3JzIHRvIHRoZSB1c2VyLgoKQWdy
ZWVkLgoKPiBJZiB0aGVyZSBpcyBubyBvdGhlciBjb21tZW50LCBJIGFtIGdvaW5nIHRvOgo+ICAg
LSBzdWJtaXQgdGhpcyBjaGFuZ2UgdG8gdGhlIHN0YWdpbmcgdHJlZQoKR29vZCwgaXQncyBpbXBv
cnRhbnQgdGhhdCB5b3UgZ2V0IGFsbCB5b3VyIGNoYW5nZXMgdG8gdGhlIHN0YWdpbmcgdHJlZQpi
ZWZvcmUgdGhlIG5leHQgbWVyZ2Ugd2luZG93LgoKPiAgIC0gcHVibGlzaCB0aGUgdG9vbCB0aGF0
IGdlbmVyYXRlIHRoaXMgbmV3IGZvcm1hdAo+ICAgLSBzdWJtaXQgdGhlIFBEUyBmaWxlcyByZWZl
cmVuY2VkIGluIGJ1c197c2RpbyxzcGl9LmMgdG8gbGludXgtZmlybXdhcmUKPiAgIC0gc2VuZCB0
aGUgdjEwIG9mIHRoaXMgUFIKCkknbSBub3Qgc3VyZSBpZiB0aGVyZSdzIGEgbmVlZCB0byBzZW5k
IGEgZnVsbCBwYXRjaHNldCBhbnltb3JlPyBXZSBhcmUKc28gY2xvc2Ugbm93IGFueXdheSBhbmQg
dGhlIGZ1bGwgZHJpdmVyIGlzIGF2YWlsYWJsZSBmcm9tIHRoZSBzdGFnaW5nCnRyZWUsIGF0IGxl
YXN0IHRoYXQncyB3aGF0IEkgd2lsbCB1c2UgZnJvbSBub3cgb24gd2hlbiByZXZpZXdpbmcgd2Z4
LgoKV2hhdCBhYm91dCB0aGUgRGV2aWNlIFRyZWUgYmluZGluZ3M/IFRoYXQgbmVlZHMgdG8gYmUg
YWNrZWQgYnkgdGhlIERUCm1haW50YWluZXJzLCBzbyB0aGF0J3MgZ29vZCB0byBzdWJtaXQgYXMg
YSBzZXBhcmF0ZSBwYXRjaCBmb3IgcmV2aWV3LgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtp
Lmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
