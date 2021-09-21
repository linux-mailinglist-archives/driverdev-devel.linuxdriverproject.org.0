Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAA6413D5A
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Sep 2021 00:09:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CE8F402AC;
	Tue, 21 Sep 2021 22:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DynGZ8gOUh4G; Tue, 21 Sep 2021 22:08:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BD2B40286;
	Tue, 21 Sep 2021 22:08:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C94AD1BF473
 for <devel@linuxdriverproject.org>; Tue, 21 Sep 2021 22:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC2EE400E9
 for <devel@linuxdriverproject.org>; Tue, 21 Sep 2021 22:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id amLcvyQUIi2d for <devel@linuxdriverproject.org>;
 Tue, 21 Sep 2021 22:08:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 721CE40017
 for <devel@driverdev.osuosl.org>; Tue, 21 Sep 2021 22:08:46 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id u8so3275657lff.9
 for <devel@driverdev.osuosl.org>; Tue, 21 Sep 2021 15:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=ydpRy8lWrhIojVtku2niZvPhpeG0OmZclmtYv3joR6o=;
 b=VMEMylrbyiYbCwSyFTJpzq5fbW4ctMdYIQuf+ys3tJRfL3ld8gu7ZGZ4x/tJnnEyce
 VWOaJheLo+68Y4Bzlf2TniC+UnQRwNv7v+Xz2krcWeAi9LRxGrdhNnvMM3/PU1A+MIC6
 6+E0Hs+tf6+dypJw4/6VTH4eJ8IzCBeUUeIuEA+I8n8qXDvqYxZ0v8QSuCCJ/Qv6t87+
 sPJn1DRpHnBMxHe85jMArRs/l4xLyeKEyGwJQhz5E/phMwEBrq9lzHZ0qx3fmWxXSA0c
 T4ERA4HiqW+k9WKwfLqyri2/n3nMBADxPNv+pfUiONGRSLmE28i3vgpJEn9OictiVUdW
 GZlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=ydpRy8lWrhIojVtku2niZvPhpeG0OmZclmtYv3joR6o=;
 b=DscBER1KzwA3zg2qpvoQJqcZL/JBStLIE430iPGCkOE/GGXQU3hkZftSaZARwLtWnU
 9KhFMk18HpiKzDttF8OvDsJ9juPxuB50lWaWwAVDC5dXfvpuZ3Hg7MbHp4w/FDuAW4bE
 HoO0cJfiE6S/cGuCPhnWjP8Gi+9iiwmxSsBZE0sQDbODRZv9VOWHuNlQxIGujPePX+Y6
 XW2Bts91J/89RMM8bGzA/1xfTiR1Ps9YZY/AN7rfvC3OICKV99bvousI1meXFcLpSREM
 VTRZdo4mJ3a6zLPOOOaG5lSnElgX4g/fDpkLsY8ltXzKH8kRLkBGtD3bd2zsqys2LV9X
 +xTg==
X-Gm-Message-State: AOAM533uCEw/FmUMpOuI9/noWoqklTgF2Ci+YIRxJumcunhs9VsWfGit
 NTlrVmjWTInDvZUF7Zlf5hraLCgCnT92gM9tv5A=
X-Google-Smtp-Source: ABdhPJxttbMZRTCiz4dbyUHQKvtAJPXurZ0uZdwfHyEBCncB4nWwbPm3ppIz5/6IWM0egLzpsSYzsBblL8qMCx+Z89Y=
X-Received: by 2002:a2e:bc29:: with SMTP id b41mr7046174ljf.223.1632262123944; 
 Tue, 21 Sep 2021 15:08:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6512:1285:0:0:0:0 with HTTP; Tue, 21 Sep 2021 15:08:43
 -0700 (PDT)
From: Aisha Al-Qaddafi <aisha.gdaffi24@gmail.com>
Date: Tue, 21 Sep 2021 23:08:43 +0100
X-Google-Sender-Auth: l8vRKPKUj2PVEvNzkXPNt0vWfIU
Message-ID: <CAKC2Uf44cr-j+WdYoJ9HbekGsobk+6REwA0kznseibuFZpitdg@mail.gmail.com>
Subject: My Dear Friend
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

I came across your e-mail contact prior to a private search while in
need of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.
I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country
If you are willing to handle this project on my behalf kindly reply
urgently to enable me to provide you more information about the
investment
funds.
Best Regards
Mrs Aisha Al-Qaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
