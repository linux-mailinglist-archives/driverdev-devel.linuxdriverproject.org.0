Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D38F37F0E16
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Nov 2023 09:48:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 405B560675;
	Mon, 20 Nov 2023 08:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 405B560675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dSmank-1z2ga; Mon, 20 Nov 2023 08:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B8F4605A2;
	Mon, 20 Nov 2023 08:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B8F4605A2
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BD5A1BF5DD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 08:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23D5F8140F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23D5F8140F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Wf6MVVuydhj
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 08:48:14 +0000 (UTC)
X-Greylist: delayed 460 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 20 Nov 2023 08:48:14 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 965978140D
Received: from mail.venturelinkage.com (mail.venturelinkage.com
 [80.211.143.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 965978140D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 08:48:14 +0000 (UTC)
Received: by mail.venturelinkage.com (Postfix, from userid 1002)
 id EB2C78257B; Mon, 20 Nov 2023 09:40:19 +0100 (CET)
Received: by mail.venturelinkage.com for
 <driverdev-devel@linuxdriverproject.org>; Mon, 20 Nov 2023 08:40:13 GMT
Message-ID: <20231120084500-0.1.1q.43xs.0.h0866j0dlc@venturelinkage.com>
Date: Mon, 20 Nov 2023 08:40:13 GMT
From: "Lukas Varga" <lukas.varga@venturelinkage.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Popt=C3=A1vka?=
X-Mailer: mail.venturelinkage.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=venturelinkage.com; s=mail; t=1700469630;
 bh=7iowqdzve/IIiUUjcEwx8j3uMrVqqiE7R9zbOCKRV9Q=;
 h=Date:From:To:Subject:From;
 b=SVBGj/8mkRzUYCXbRqvOMwZDGLO3SKpdhWaC9LKKCCqa4LQYW6X0S3g6DZZ/HfK4P
 LPcfxdfpVdHaaSByFIpn3bEtLnft8iVY5qf4PhAeeQZwCPOvEABzSZ1PGaz45/hvcN
 5naAq4kmi03MK7GNc9TaGHWuxfmgtAJc4z2690kEs6f69TvjkCLRPgQQCMmd2hFGnc
 C+VJk0fllnhEp+6A2QU1LPrWR7ozd8pj46DxJzM5mYA42xPL70hwSudwqINxuOti2q
 TAR4LpyjeMSooqEKuWyt1G8zRf6rK0pefBLrgn+tIrItjj08qfc2fAPIHctZy2ngVo
 8VtzyuMkz7FOQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=venturelinkage.com
 header.i=@venturelinkage.com header.a=rsa-sha256 header.s=mail
 header.b=SVBGj/8m
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG9icsOpIHLDoW5vLAoKRG92b2xpbCBqc2VtIHNpIFbDoXMga29udGFrdG92YXQsIHByb3Rvxb5l
IG3DoW0gesOhamVtIG92xJvFmWl0IG1vxb5ub3N0IG5hdsOhesOhbsOtIHNwb2x1cHLDoWNlLgoK
UG9kcG9ydWplbWUgZmlybXkgcMWZaSB6w61za8OhdsOhbsOtIG5vdsO9Y2ggb2JjaG9kbsOtY2gg
esOha2F6bsOta8WvLgoKTcWvxb5lbWUgc2kgcHJvbWx1dml0IGEgcG9za3l0bm91dCBwb2Ryb2Ju
b3N0aT8KClYgcMWZw61wYWTEmyB6w6FqbXUgVsOhcyBidWRlIGtvbnRha3RvdmF0IG7DocWhIGFu
Z2xpY2t5IG1sdXbDrWPDrSB6w6FzdHVwY2UuCgoKUG96ZHJhdnkKTHVrYXMgVmFyZ2EKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
