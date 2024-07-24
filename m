Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B69C793AD68
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2024 09:50:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F51680F46;
	Wed, 24 Jul 2024 07:50:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HyFLu9YCmpaj; Wed, 24 Jul 2024 07:50:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFEAD80FFB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFEAD80FFB;
	Wed, 24 Jul 2024 07:50:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73FE41BF280
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2024 07:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61BEB402FF
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2024 07:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hoTNVSaE8s_o for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2024 07:49:58 +0000 (UTC)
X-Greylist: delayed 542 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Jul 2024 07:49:58 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 19AB44023F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19AB44023F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=162.19.155.125;
 helo=mail.originatepro.pl; envelope-from=marcin.wojciechowski@originatepro.pl;
 receiver=<UNKNOWN> 
Received: from mail.OriginatePro.pl (mail.originatepro.pl [162.19.155.125])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19AB44023F
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2024 07:49:57 +0000 (UTC)
Received: by mail.OriginatePro.pl (Postfix, from userid 1002)
 id 185C123E22; Wed, 24 Jul 2024 09:40:47 +0200 (CEST)
Received: by mail.OriginatePro.pl for <devel@driverdev.osuosl.org>;
 Wed, 24 Jul 2024 07:40:45 GMT
Message-ID: <20240724084500-0.1.d0.1n30u.0.8w3m9cf5gj@OriginatePro.pl>
Date: Wed, 24 Jul 2024 07:40:45 GMT
From: "Marcin Wojciechowski" <marcin.wojciechowski@originatepro.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.OriginatePro.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=OriginatePro.pl; s=mail; t=1721806853;
 bh=oZTeICgx2X9EeHQQOCJSHYKJVJOCiOs1n/VaxwVhO9Y=;
 h=Date:From:To:Subject:From;
 b=7zZXhAkKS4Wyhjsw1dK48P5reQ5k8SPL5u/mP6QggMDk1OOThk3yZda/Jr3OFD+tP
 U+U6sLx0W3sJVX4I93yIvNE+l2zbp2eKXhyUKI+NDDEuMYD7PVuULnleliGXSywz1I
 xjz/xGI1ilXZmng4htOhKo75aEmHYZZYE1EvuddeWevGxBvEJqSNPsI9Fi/0xIzetn
 B1iDznOQF3DwQdQPJceSMJv2b1qCm0NkCsvaF2LhVbEx1HXaJq4h7z0TBkdMs5uVaN
 ZL3Yv0D0WTAwjHjlCZ20/l7KNaEkzyN8Sq9mCN0WVfIguvWNyx0sKySLZ2f/8x+5M8
 rnicfEG46hVEw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=originatepro.pl
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=OriginatePro.pl header.i=@OriginatePro.pl
 header.a=rsa-sha256 header.s=mail header.b=7zZXhAkK
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
