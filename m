Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A3E70D565
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 May 2023 09:42:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CDE483B67;
	Tue, 23 May 2023 07:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CDE483B67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q-gCVUD_6veu; Tue, 23 May 2023 07:42:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44BF4821FF;
	Tue, 23 May 2023 07:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44BF4821FF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 820BE1BF31B
 for <devel@linuxdriverproject.org>; Tue, 23 May 2023 07:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5390A41E21
 for <devel@linuxdriverproject.org>; Tue, 23 May 2023 07:41:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5390A41E21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 002oz7_QGBW2 for <devel@linuxdriverproject.org>;
 Tue, 23 May 2023 07:41:53 +0000 (UTC)
X-Greylist: delayed 00:08:31 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FD0141D7D
Received: from mail.startuplaunchpadpro.pl (mail.startuplaunchpadpro.pl
 [217.61.112.231])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FD0141D7D
 for <devel@driverdev.osuosl.org>; Tue, 23 May 2023 07:41:53 +0000 (UTC)
Received: by mail.startuplaunchpadpro.pl (Postfix, from userid 1002)
 id AE559847FD; Tue, 23 May 2023 09:31:59 +0200 (CEST)
Received: by mail.startuplaunchpadpro.pl for <devel@driverdev.osuosl.org>;
 Tue, 23 May 2023 07:31:20 GMT
Message-ID: <20230523084500-0.1.b.163e.0.no3okcapqk@startuplaunchpadpro.pl>
Date: Tue, 23 May 2023 07:31:20 GMT
From: "Marcin Wojciechowski" <marcin.wojciechowski@startuplaunchpadpro.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.startuplaunchpadpro.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=startuplaunchpadpro.pl; s=mail; t=1684827166;
 bh=oZTeICgx2X9EeHQQOCJSHYKJVJOCiOs1n/VaxwVhO9Y=;
 h=Date:From:To:Subject:From;
 b=b2+uT96IZzNKwh0khvf3tXTrrRoNYNInuvsnj0biJMQ9Tni5NdO0uPc2FCJcE9n01
 Ro1E2dHV/Jg4J1QgdQRGbzJhca/oXuVBQbUr9Dyphgxgfy/zLMpGVmi0Fi+zhJTGpG
 cvSq93HhyRCi6Tg4tK3Gvx2sjLG9XJiOH4PeFTwCbPGoqod9XfWgoHlCUy8jI2chT6
 O/bf7w7d1P5i3XoTA0nCKzzoNSnL8SKFPmaLwgxheyBAsRFPZgHVefEq5xC7xvGjQ9
 4fs1jTcSoRL6n2N6meTdBsl+76NT1fJqpVe/i/wJ/N1rMHrTH/P6rppUpyvFQNzTnx
 q0H58x5xd9NMg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=startuplaunchpadpro.pl
 header.i=@startuplaunchpadpro.pl header.a=rsa-sha256 header.s=mail
 header.b=b2+uT96I
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpNYXJjaW4gV29qY2llY2hvd3NraQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
