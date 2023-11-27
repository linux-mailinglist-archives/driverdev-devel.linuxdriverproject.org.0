Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 220B87FA582
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Nov 2023 17:01:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4139C40877;
	Mon, 27 Nov 2023 16:01:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4139C40877
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJbDbU8ljl5E; Mon, 27 Nov 2023 16:01:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13C6840549;
	Mon, 27 Nov 2023 16:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13C6840549
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 425DE1BF40D
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 16:01:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B94B4062E
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 16:01:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B94B4062E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iwiorCXMSBSF for <devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 16:01:52 +0000 (UTC)
X-Greylist: delayed 15132 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 27 Nov 2023 16:01:52 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D0D240549
Received: from inside.srm-medias.com (inside.srm-medias.com [144.76.155.178])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D0D240549
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 16:01:52 +0000 (UTC)
Received: from [91.224.92.17] (unknown [91.224.92.17])
 by inside.srm-medias.com (Postfix) with ESMTPA id 735232F8E4D;
 Mon, 27 Nov 2023 09:05:19 +0100 (CET)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: RE
To: Recipients <prakash@srm-medias.com>
From: "Cristy Davis" <prakash@srm-medias.com>
Date: Mon, 27 Nov 2023 00:05:26 -0800
X-PPP-Message-ID: <170107232121.1391937.7557568281052078557@inside.srm-medias.com>
X-PPP-Vhost: srm-medias.com
Message-Id: <20231127160153.1B94B4062E@smtp4.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srm-medias.com; s=default; t=1701072321;
 bh=yzpcAkhxrSagXueYeLlsstuXoOXbU1UGk0bJjtHfEpM=; h=Subject:To:From;
 b=LCJdxBolcFCxXkAwR6TFAlBm7bDPJ+xpNvJFvDd64uTpEJk1Fd+Aub1JnsHcmaVBo
 dlCTyFiLGyUyFcuxHYNKy3I+5dWuonqtkOej0wkGIfburF071jXp3ODte7hGF6sVo2
 Uggqu5XJv0+5P90ecdA27wGIAxgkenpKMyHHr/C4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=srm-medias.com header.i=@srm-medias.com
 header.a=rsa-sha256 header.s=default header.b=LCJdxBol
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
Reply-To: cristydavis7788@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sIG15IG5hbWUgaXMgQ3Jpc3R5IERhdmlzLCBJ4oCZbSBmcm9tIE1pY2hpZ2FuLiBUd28g
TWlsbGlvbiwgVW5pdGVkIFN0YXRlcyBEb2xsYXJzIGhhcyBiZWVuIGRvbmF0ZWQgdG8geW91LCBJ
IHdvbiB0aGUgJDcwIG1pbGxpb24gUG93ZXJiYWxsIGxvdHRlcnkgLCBhbmQgSSBoYXZlIHZvbHVu
dGFyaWx5IGRlY2lkZWQgdG8gZG9uYXRlIHRoZSBzdW0gb2YgJDIsMDAwLDAwMC4wMCB0byB5b3Us
IENvbnRhY3QgbWUgdXJnZW50bHkgdmlhOyBjcmlzdHlkYXZpczc3ODhAZ21haWwuY29tICBmb3Ig
Y2xhaW1zLndhdGNoIG15IGZ1bGwgaW50ZXJ2aWV3IGhlcmU6aHR0cHM6Ly93d3cueW91dHViZS5j
b20vd2F0Y2g/dj1xb2QxU2d4eWk2VQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
