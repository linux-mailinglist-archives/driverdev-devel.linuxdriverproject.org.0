Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EEA4E8D6D
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Mar 2022 06:58:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E925A81A18;
	Mon, 28 Mar 2022 04:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gy8OFcf0qyEv; Mon, 28 Mar 2022 04:58:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9910F81A16;
	Mon, 28 Mar 2022 04:58:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BE531BF34D
 for <devel@linuxdriverproject.org>; Mon, 28 Mar 2022 04:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68C3640234
 for <devel@linuxdriverproject.org>; Mon, 28 Mar 2022 04:58:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YuHaf_oriNJ8 for <devel@linuxdriverproject.org>;
 Mon, 28 Mar 2022 04:58:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F970401F1
 for <devel@driverdev.osuosl.org>; Mon, 28 Mar 2022 04:58:04 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id bn33so17583809ljb.6
 for <devel@driverdev.osuosl.org>; Sun, 27 Mar 2022 21:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=vIF0HCtULT8/Hj4oEOKhM3wVM2dbK4vAQWbMA06NHEs=;
 b=p3dcs81+kY4/pk6ktFjIQgzxcMuM7dIvZw3Bm2RiQfUuHrgrv7R9zt4EtclGc2fKhI
 G/+BgeMtwm8Xr2vfwiFhWuTsIZ0Gi2oUu7OjuiXtPVKZticaKnBNdv0AormfydGqMcu/
 pOJIXrZJYmoj/4CBZ2f9bE4Z6ca153zmzauxE6rqj59iWgiUU81kvOajclMLlNfyRH3s
 OuOiE3PT+xTlZ1AAFDeTrcISalh6+PhPTTqrR0RO7fvL2ywh2dt/8ujWn6W5t2t0FKGr
 RLfXqV+3+pllIEBttl986zM7ewbPjlWne9skujUdEhDW0sORayhrYsT6cTnmngRBKDv3
 BGYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=vIF0HCtULT8/Hj4oEOKhM3wVM2dbK4vAQWbMA06NHEs=;
 b=V1tW/GBX/tD69bPbf/4a+wAHYuQRFOVuy/2JMcKaACUzFRGpoxd4k42CBWzb4zoVoo
 a2RZjJPVp66k9m9Bd/ZFM5qgka+zH/GoFRdq/mlJZWEi2WyTQfpphn5zMpZxqBS4voRM
 3aSWfUbB8WJ2eM8kDxJLubdqoBI8p3ehMWeZ+hmaFUkNVNNASn83kO1n0nbsT076D9VH
 iCX4ImVZQdxDKIOyplY2D4Jfny4byBtvzOjP7bOwwBIgL1WB8KG9lNQERIxhWYUqboeB
 F+skXeekx1kOWmWDzMUlyZtJJHbx4bEbAFlQ6ihiDL5GJHcGv9uaLjgFY/ZPVOfU7xqQ
 HUgg==
X-Gm-Message-State: AOAM5320rLJaCHKnPw53ZXr6ge24sRK2AgSFWs/meg/iwCCq0At7tlFV
 eQy1mIvgvv0SXGohWufx8g4e6Hp6RyEvJ07rIyA=
X-Google-Smtp-Source: ABdhPJwUXUZloRpcEMRnCrqeZgFzP3ioONa20OVIjdIIAKOW/T2ydQZvVWo1R52fFv7ON4n9GBxvDmtne5UHUhHuwQs=
X-Received: by 2002:a2e:88d0:0:b0:249:8221:3aa3 with SMTP id
 a16-20020a2e88d0000000b0024982213aa3mr18552961ljk.115.1648443482730; Sun, 27
 Mar 2022 21:58:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:3302:0:0:0:0 with HTTP; Sun, 27 Mar 2022 21:58:01
 -0700 (PDT)
From: "Mr.Sal kavar" <salkavar2@gmail.com>
Date: Mon, 28 Mar 2022 04:58:01 +0000
X-Google-Sender-Auth: hmnSgsj4zXFs-pE4dS6rj3uudpA
Message-ID: <CALP4u5WP6uY9eqF8GmduOubJH=cG2jKTGk8SXP+HhrRFV5oQTA@mail.gmail.com>
Subject: Yours Faithful,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I assume you and your family are in good health. I am the foreign
operations Manager

This being a wide world in which it can be difficult to make new
acquaintances and because it is virtually impossible to know who is
trustworthy and who can be believed, i have decided to repose
confidence in you after much fasting and prayer. It is only because of
this that I have decided to confide in you and to share with you this
confidential business.

overdue and unclaimed sum of $15.5m, (Fifteen Million Five Hundred
Thousand Dollars Only) when the account holder suddenly passed on, he
left no beneficiary who would be entitled to the receipt of this fund.
For this reason, I have found it expedient to transfer this fund to a
trustworthy individual with capacity to act as foreign business
partner.

Thus i humbly request your assistance to claim this fund. Upon the
transfer of this fund in your account, you will take 45% as your share
from the total fund, 10% will be shared to Charity Organizations in
both country and 45% will be for me.

Yours Faithful,
Mr.Sal Kavar.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
