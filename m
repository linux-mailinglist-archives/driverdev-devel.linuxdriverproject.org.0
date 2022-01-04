Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D70CC4841AC
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jan 2022 13:35:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6473F410AB;
	Tue,  4 Jan 2022 12:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yi1fj3WOqVKn; Tue,  4 Jan 2022 12:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1F56409C3;
	Tue,  4 Jan 2022 12:35:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A93C1BF288
 for <devel@linuxdriverproject.org>; Tue,  4 Jan 2022 12:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 873E060BC2
 for <devel@linuxdriverproject.org>; Tue,  4 Jan 2022 12:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3V3wSgAZrYAq for <devel@linuxdriverproject.org>;
 Tue,  4 Jan 2022 12:35:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F44A60B43
 for <devel@driverdev.osuosl.org>; Tue,  4 Jan 2022 12:35:20 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id n16so27022451plc.2
 for <devel@driverdev.osuosl.org>; Tue, 04 Jan 2022 04:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=OcVKYMqD1OAPCy0gYs4jHd1iGD2P0eAuhSWYYDqPTRU=;
 b=e6K00f2u9wkWziR76208RY007l7ZkMEF+dVMsjGNpcJiPVLv8jIXrtePml+Em/zQR1
 Sy9VHb/3rAJP+V3ha6zSLjfpaUK28gI9Egq6iPWCLGHGBBQ79yTbGiuGadXPkOeB7IRz
 4q4VJnBR6ygZpw3U6hKQWQNGDhv9pNqgzqMTeQ22m5NJBkKbe5YakQpq4s545hz7j1sv
 8aeX8g6Ljm/RuSOuLDLyOGwcoHiOr/1TBcka+jXN2V0nyJxrYRr7dVUgV7UKOBBPhW9h
 TK96H6p1ZF3mh6Ei3yyNqU6ODawGZSuIxU6xuBZL7Dh7PmIYbWenj3Pn95YzyYFEwKnX
 f7EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=OcVKYMqD1OAPCy0gYs4jHd1iGD2P0eAuhSWYYDqPTRU=;
 b=T2hP4WzVGrUArTBzWKfEWQYk9pLLVFSl+r1zW4Ryo9Yz9/JyHqR4euFUqoCmOsdsPE
 SudNmviuSSc1oNJ9uz0dka3bHEUL0I/PFpdcxJs4HnX3obQvoXInZzBL2yqWGPaPWKZ4
 bYLI9RYfkSEmoCFGqNDewbw3MgALPT5bK5FgDd3XkiVXqwkccRVRxyu+6ioJQ15OUmEu
 kDAinH4PUBRTGrJX56WGmu4OQb1RvOmTZ28hNn+zVEszG0P5yxc37S7Js3SXIU0qs1lS
 w43v+UgCNM6RoaC1l7qPzZjDXrLpF4SppbUGrsRSNIXjcAuKtaLIwrAvyQEEhpFk5K3J
 rfng==
X-Gm-Message-State: AOAM531ZUm69ppa+MAxvQTL93u+WqlK6Goz6cnlbjIGKXPsjphBCF+vF
 45ozE2UCn+9U6jtWC2Xy6HaCqPrqHCvNCy7QX6k=
X-Google-Smtp-Source: ABdhPJzND3A5xQMJF4WR7V/iFjpy8m4LcIzgNZmo/CNUSFvU64jaKIP3tgBXGrjCZ9MNfEEve76stsWipia4oDXrYjo=
X-Received: by 2002:a17:902:7c8f:b0:149:9a8a:f941 with SMTP id
 y15-20020a1709027c8f00b001499a8af941mr26882496pll.148.1641299720430; Tue, 04
 Jan 2022 04:35:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:70b:0:0:0:0 with HTTP; Tue, 4 Jan 2022 04:35:20
 -0800 (PST)
From: Mrs Aisha Al-Qaddafi <mrsaishagaddafi35@gmail.com>
Date: Tue, 4 Jan 2022 04:35:20 -0800
Message-ID: <CABTz6dMo6UkSuHgBosm5UGw9ENXQX92Csqu-NihZMyW_pb5Gwg@mail.gmail.com>
Subject: Dear Friend,
To: undisclosed-recipients:;
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
Reply-To: mrsaishag45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dear Friend,
I came across your e-mail contact prior a private search while in need
of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.

I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.

I am willing to negotiate investment/business profit sharing ratio
with you base on the future investment earning profits.
If you are willing to handle this project on my behalf kindly reply
urgent to enable me provide you more information about the investment
funds.

Your Urgent Reply Will Be Appreciated
Best Regards
Mrs Aisha Al-Qaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
