Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BB68A08C1
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Apr 2024 08:48:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A9CE4036E;
	Thu, 11 Apr 2024 06:48:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JA3c47fx0Tqk; Thu, 11 Apr 2024 06:48:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8CA240468
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8CA240468;
	Thu, 11 Apr 2024 06:48:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66DEB1BF3AF
 for <devel@linuxdriverproject.org>; Thu, 11 Apr 2024 06:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52B9540135
 for <devel@linuxdriverproject.org>; Thu, 11 Apr 2024 06:48:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id icRkHEBKHQwS for <devel@linuxdriverproject.org>;
 Thu, 11 Apr 2024 06:48:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.176.220.65;
 helo=mail.commercecreek.pl;
 envelope-from=marcin.wojciechowski@commercecreek.pl; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD39D4011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD39D4011A
Received: from mail.commercecreek.pl (mail.commercecreek.pl [185.176.220.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD39D4011A
 for <devel@driverdev.osuosl.org>; Thu, 11 Apr 2024 06:48:27 +0000 (UTC)
Received: by mail.commercecreek.pl (Postfix, from userid 1001)
 id ADA742067F6; Thu, 11 Apr 2024 06:46:23 +0000 (UTC)
Received: by mail.commercecreek.pl for <devel@driverdev.osuosl.org>;
 Thu, 11 Apr 2024 06:45:22 GMT
Message-ID: <20240411064501-0.1.3v.2a2ls.0.8ecdiiphol@commercecreek.pl>
Date: Thu, 11 Apr 2024 06:45:22 GMT
From: "Marcin Wojciechowski" <marcin.wojciechowski@commercecreek.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.commercecreek.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=commercecreek.pl; s=mail; t=1712818014;
 bh=oZTeICgx2X9EeHQQOCJSHYKJVJOCiOs1n/VaxwVhO9Y=;
 h=Date:From:To:Subject:From;
 b=MuNbX7pqg2S+AOOlwdsmSHweQ6hhKVeaQhZmDwHluXFdC+oTLRcXpPkDOt4jwp4LB
 lrJHT3DBeELbuNx6IDzDpa+ctLKUGSfSG2FyCfzuLZmlejTJ0mF8ITS1pSDL+25rhm
 VK6to80W9QdWXxuL4RgDEmk8Tki0uY2xmE8pmINNG7fIZbkyZ2xRM8k4zx/r5Ggeyg
 k8Z7N0yMA91ftgFo353R+vLFVObVeQ/y8fzPtHnVfVIUFfhj9yUL0AKyjGOGqb8Cdj
 IEZbs58yJWokNBqojrzsJ0/++eo8Ivce3t8K6TjXmzKdh2U06XUjOPKeVYAH9fgRmw
 i3c+heF4FHcHw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=commercecreek.pl
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=commercecreek.pl header.i=@commercecreek.pl
 header.a=rsa-sha256 header.s=mail header.b=MuNbX7pq
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
