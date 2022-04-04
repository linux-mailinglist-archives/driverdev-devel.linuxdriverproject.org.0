Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E30CB4F134F
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Apr 2022 12:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E28924099B;
	Mon,  4 Apr 2022 10:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5lmRF6VuWwV9; Mon,  4 Apr 2022 10:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76C4640926;
	Mon,  4 Apr 2022 10:49:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D00D71BF304
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 10:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCCEF40445
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 10:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r6c-sxaaXmVd for <devel@linuxdriverproject.org>;
 Mon,  4 Apr 2022 10:49:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89FDA40423
 for <devel@driverdev.osuosl.org>; Mon,  4 Apr 2022 10:49:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D8C9EB81369;
 Mon,  4 Apr 2022 10:49:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13C73C2BBE4;
 Mon,  4 Apr 2022 10:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649069366;
 bh=Tg/7nsozYJMVjYgrbfpH7tAtgVHE6SnY/UIB0mnrigY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=SwhWMfyydbmJp2hY+ZZ4j6WF7IybX5d8/wpSryAk7HBA6VniYnIfkHipsat5tvMRt
 mdqoG4M5YuEXX2LN0zK1/bVPX05KQEDf4m0dz9FDK9KU3JJi3V0VJPCQ+IDLXXDmhj
 mGdYVry69ZBmAp+0KtlaM4W4QcRY+2zvFqnbUilZ6lQrCzyHY98lsuf0SzFNR+gBY9
 GAefiwHpJiCbt4HRlPtBXMTksimSY4JxS6U7Pqlt6gGwUO0RRzMY5dtvEpni00J+uQ
 M9+otsDu3HNoY1dlWCYHVoiDmYWFYgsgX1G+1UKYleh4H55h/srbAk3iHWmUwO/wPk
 22zf7J/RHPYvA==
From: Kalle Valo <kvalo@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <YhojjHGp4EfsTpnG@kroah.com> <87wnhhsr9m.fsf@kernel.org>
 <5830958.DvuYhMxLoT@pc-42>
Date: Mon, 04 Apr 2022 13:49:18 +0300
In-Reply-To: <5830958.DvuYhMxLoT@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Mon, 04 Apr 2022 11:31:23 +0200")
Message-ID: <878rslt975.fsf@tynnyri.adurom.net>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIFNhdHVyZGF5IDI2IEZlYnJ1YXJ5IDIwMjIgMTQ6MTU6MzMgQ0VTVCBLYWxsZSBWYWxvIHdy
b3RlOgo+PiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3
cml0ZXM6Cj4+IAo+PiA+IFRoYXQgc291bmRzIGdyZWF0IHRvIG1lLCBsZXQncyBwbGFuIG9uIHRo
YXQgaGFwcGVuaW5nIGFmdGVyIDUuMTgtcmMxIGlzCj4+ID4gb3V0Lgo+PiAKPj4gVmVyeSBnb29k
LCB3ZSBoYXZlIGEgcGxhbiB0aGVuLiBJIG1hcmtlZCB0aGUgcGF0Y2ggYXMgZGVmZXJyZWQgaW4K
Pj4gcGF0Y2h3b3JrOgo+PiAKPj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0
L2xpbnV4LXdpcmVsZXNzL3BhdGNoLzIwMjIwMjI2MDkyMTQyLjEwMTY0LTItSmVyb21lLlBvdWls
bGVyQHNpbGFicy5jb20vCj4+IAo+PiBKZXJvbWUsIGZlZWwgZnJlZSB0byByZW1pbmQgbWUgYWJv
dXQgdGhpcyBhZnRlciB2NS4xOC1yYzEgaXMgcmVsZWFzZWQuCj4KPiB2NS4xOC1yYzEgaXMgcmVs
ZWFzZWQgOikKClRoYW5rcyBmb3IgdGhlIHJlbWluZGVyIDopIE9uY2Ugd2Ugb3BlbiB3aXJlbGVz
cy1uZXh0IEknbGwgc3RhcnQKcHJlcGFyaW5nIHRoZSBicmFuY2guCgpEYXZlJkpha3ViLCBvbmNl
IHlvdSBndXlzIG9wZW4gbmV0LW5leHQgd2lsbCBpdCBiZSBiYXNlZCBvbiAtcmMxPyBUaGF0Cndv
dWxkIG1ha2UgaXQgZWFzaWVyIGZvciBtZSB0byBjcmVhdGUgYW4gaW1tdXRhYmxlIGJyYW5jaCBi
ZXR3ZWVuCnN0YWdpbmctbmV4dCBhbmQgd2lyZWxlc3MtbmV4dC4KCi0tIApodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2ly
ZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0
aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
