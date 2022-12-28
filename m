Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 393806586FA
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Dec 2022 22:17:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D42E60C29;
	Wed, 28 Dec 2022 21:17:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D42E60C29
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h_VRHYWkCwLo; Wed, 28 Dec 2022 21:17:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73E3560C25;
	Wed, 28 Dec 2022 21:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73E3560C25
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8FF1BF3D1
 for <devel@linuxdriverproject.org>; Wed, 28 Dec 2022 21:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47D7C60C2A
 for <devel@linuxdriverproject.org>; Wed, 28 Dec 2022 21:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47D7C60C2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cf88a4wIKHqj for <devel@linuxdriverproject.org>;
 Wed, 28 Dec 2022 21:17:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B1B160C29
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B1B160C29
 for <devel@driverdev.osuosl.org>; Wed, 28 Dec 2022 21:17:50 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id h8so8123155qkk.8
 for <devel@driverdev.osuosl.org>; Wed, 28 Dec 2022 13:17:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1LwRrUYA/oomST1V2a0odCx3G2yzEN9zjwecKUZde70=;
 b=zIPtdCi+cu45wrK3tLDqv0PvxnaLRE+4QENf8MlJj1cFxWGdewf8+QCtFDlXzb0X4i
 cGdv39do/EquDdwkhVL6zRfKTRzYNqeYhx766C5XIvDkhMvKlOpGn+4Nu4KU7u3a1agT
 PFdjsT7WiDw9tRRU/jGRnkHwKvEIJ6LBFF9ZeVTlZrOqKW3/skK5VMQ4I68yXiPaiYzd
 CUakE3k+nq3u9Q3Gt+XpP5vQyf24+5qF/QUL34mD19gh9mw5U6O9LDUYk2Vp/hgqXLjZ
 ot/uAC+WHfFeCAG8OEErdm/tLa0VZANccONWKmdQUvOuH+Trp9zNr4rmWAAS5m4rUQGM
 ZlcA==
X-Gm-Message-State: AFqh2krO5ZhfmAazYU/WSBUiXkEtdsNS+ykG77xXWN01WiZGxx2dqn5L
 Igqz/ceMBf0/exWzSPelwggJzBaqvuBH1JQomQ==
X-Google-Smtp-Source: AMrXdXsyOh1PjoH+JdDC/c3+2ys54eE4VhsmhxFaUBnjH4zdMUwfnHS2/CW9eG08eCdpijL1BOtIZQWrOSrTE3g6d6A=
X-Received: by 2002:a05:620a:4884:b0:6ff:db17:d10b with SMTP id
 ea4-20020a05620a488400b006ffdb17d10bmr769850qkb.450.1672262269157; Wed, 28
 Dec 2022 13:17:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac8:570b:0:b0:3a9:8d5e:beb6 with HTTP; Wed, 28 Dec 2022
 13:17:48 -0800 (PST)
From: "Mrs. Eliana" <nrselin04@gmail.com>
Date: Wed, 28 Dec 2022 10:17:48 -1100
Message-ID: <CAMS2-UCa9eNJd9jV1KckNGnwRMYJpKHfUrS+G10nP2DhhsUy9Q@mail.gmail.com>
Subject: Urgent Resply
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1LwRrUYA/oomST1V2a0odCx3G2yzEN9zjwecKUZde70=;
 b=Chy2MBGIvbiXk/BaCivZce4CQRS+jVRZO46SExeSWU8LAStpeQKyhE+jblviIR1+aB
 Or15X0u4NrHQFdvqv7iH7qysojZKfvoubAfIaL0uewJi07mlk9+L1u2Im3tiIPot/gRH
 h2fbMmWXNuJWw+h0TjHnjMmyjRUaNNUHOg/wskyzEL1WCxi6sIYQd6p3aj4ltlFtp6M0
 YueDoWSCMjHpx9TR0V6yBMXSPGQ7UBrVFZUg66BwIBycRRNUiY/iCfrPyT67GQFQOB/f
 MkczX0csViATcLNktkONTEFqoh+tUTNLQ0Cm+EL+DJBRW0T9SaMkni6x3qk6bgDl1WFW
 cKOw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Chy2MBGI
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
Reply-To: mrs.elina921@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We are writing this message to you from the (World Health
Organization-Palliative Center) to inform you that you have been
Chosen as our Representative in your
Country, to distribute the total sum of ($600,000. US Dollars) For the
yearly Empowerment  Donation in order to help the Young people and Old
people in your Country.

If you receive this message kindly send your CV or your Personal
Details Your Full Name, Your Address, Your Occupation, to ( Dr James
Edmond ) through this Email:
(drjames1890@yahoo.com) for more information, The  Empowerment
Donation work cannot stop your Business or the work you are doing
already.

 We know that this  Message may come to you as a Surprise, Your
Contact was provided to us by the Network Service Provider,thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
