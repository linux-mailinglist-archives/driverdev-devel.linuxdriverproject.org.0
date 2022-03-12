Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A96B54D6BA1
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Mar 2022 02:11:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D026D84930;
	Sat, 12 Mar 2022 01:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tf4HGb5n2xKB; Sat, 12 Mar 2022 01:11:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A31E38492F;
	Sat, 12 Mar 2022 01:11:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE5A11BF39F
 for <devel@linuxdriverproject.org>; Sat, 12 Mar 2022 01:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC82E41B3A
 for <devel@linuxdriverproject.org>; Sat, 12 Mar 2022 01:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02BzeymxnIRz for <devel@linuxdriverproject.org>;
 Sat, 12 Mar 2022 01:11:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com
 [IPv6:2607:f8b0:4864:20::d29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37E3F41B39
 for <devel@driverdev.osuosl.org>; Sat, 12 Mar 2022 01:11:32 +0000 (UTC)
Received: by mail-io1-xd29.google.com with SMTP id r11so12046907ioh.10
 for <devel@driverdev.osuosl.org>; Fri, 11 Mar 2022 17:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=jWNWvl0mfyOxiUSF/gn8gdoVUeb2vevyzIyCf7IEyvA=;
 b=S1Q9V/qfBxOqCk6vcg3X6jduRLs/JA/gFe+dYjCK4D8XRRlweK5EDtB7WqaiXG3bSG
 RbWqsgVPiTfyLuL4hCrnqanlBEZ9+FvXu3GnJJY91cs+yp3cTs2WHjqlb0p0Kyhkz/Kn
 4F6tdLomVH9dXWlJ5RpNLNhAgRsOAjxciFDZvKpPAViEfIddlydZJfUSEWiSmvRA7CSj
 F0yxTEbYTbZgMPaitvN6wawxkwuVqF3ZXmITtXcJdErQqkPdSsqAcz5zghwr2fUkXwy8
 C+Atd9yBuULv78JwLV0G3xROKbCqQWrkL+x3djKi9A3uhP5C00ytfCSaK4iWJKn32Fh6
 iQIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=jWNWvl0mfyOxiUSF/gn8gdoVUeb2vevyzIyCf7IEyvA=;
 b=K/C4oDG6O9S9oFwA4EvwozESZBBg+oqivcRzMYtLQdTY4KfFXHogyrLuAeTpXBfd0e
 KiBkvK70d7Qf3+a2j1mIcQ7YZnGDksHvXxy2jaxZ59mz4zjiSxzZTfTEFoJhW0jpPq6g
 R/QLI61neVdGe27pG2s/y8c+BMMl9YBbuqjTjZVVbkzSPRMdxlHp20F2o6CsUsg36dx5
 D03KHiYTvQk5+ravtc2uSO77JG6h23+88Lm+OXB8Jn0V9dqYo0z0+GBhDvZTW8dSwqsU
 QFaa87CgxCQRBnYEDodMecC4s5gZGKWWEStrk7yH2lFA3L9mlf/r8V5ANRNU75Zd/Blt
 OSQg==
X-Gm-Message-State: AOAM530BkPynEQAQWEHY8cxNYgr3qEV9Y8DMuY2KvOxkhh2MDS4rMAcY
 czjXQxigsYuiIy6mNETEvB84IuBJgqwVbIYERdw=
X-Google-Smtp-Source: ABdhPJyRxU2+JwXoOES7GTkQQkG1LmHAxFIAhlZEwKzoKNA32HAbQtIHvGfrz2EI2DQ6iiP2QJdwcyBP2TNhwEtHu9Q=
X-Received: by 2002:a05:6638:1a13:b0:317:cc8c:3fe2 with SMTP id
 cd19-20020a0566381a1300b00317cc8c3fe2mr10400930jab.62.1647047489854; Fri, 11
 Mar 2022 17:11:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6602:2c52:0:0:0:0 with HTTP; Fri, 11 Mar 2022 17:11:29
 -0800 (PST)
From: "I'M MRS.JILL BIDEN THE FIRST LADY UNITED STATES AMERICA."
 <flrsth0rlz0nbank0@gmail.com>
Date: Fri, 11 Mar 2022 17:11:29 -0800
Message-ID: <CAAvWqfsrspQAYz9NfJhsbL9oWyM+genO7XFFSHZyF5C0nf-OGA@mail.gmail.com>
Subject: I'M MRS.JILL BIDEN THE FIRST LADY UNITED STATES AMERICA.
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
Reply-To: mrsjillbidenfirstlady@usa.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
The White House
1600 Pennsylvania Avenue NW
Washington, D.C. 20500
U.S.....

I'M MRS.JILL BIDEN THE FIRST LADY OF THE UNITED STATES AND THE
CONTENT OF THE BELOW MESSAGE IS SIGNED AND APPROVED BY BANK OF AMERICA.

moreover, in respect of fact the sum of $20 million united states
dollars was instructed to transfer on your favor through ATM Card,
And i wish to let you know that every necessary things has been
accessed by IMF on the economic recovery program done by united state
Government for victim who lost funds during former president Barack
Obama and president Donald J Trump regime and con African artists and
you have nothing to be worried about.

Below is the required information i need from you so that the delivery
of your ATM Card will proceed immediately to your home Address.
Your Name.........................
Home address:...................................
Your profession/occupation.................................
Cell phone number:..........................
valid ID CARD/passport.........................

We advice you to prohibit any other transaction you are having with an
unknown source to avoid regret there after. And we urge you to comply
fast with the managerial demands so that you can have your legit ATM
card with immediate effect as instructed from White house
(Washington DC)
send the above mentioned details direct to my private email
:(mrsjillbidenfirstlady@usa.com)

I'M MRS.JILL BIDEN THE FIRST LADY UNITED STATES AMERICA.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
