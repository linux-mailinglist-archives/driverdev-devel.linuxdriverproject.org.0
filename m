Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FD853630A
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 May 2022 14:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6915161515;
	Fri, 27 May 2022 12:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWN48UU4N2mk; Fri, 27 May 2022 12:56:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27D1361510;
	Fri, 27 May 2022 12:56:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0DFB01BF3D1
 for <devel@linuxdriverproject.org>; Fri, 27 May 2022 12:56:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED88B84544
 for <devel@linuxdriverproject.org>; Fri, 27 May 2022 12:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgEUpThSbgOg for <devel@linuxdriverproject.org>;
 Fri, 27 May 2022 12:56:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com
 [IPv6:2607:f8b0:4864:20::e30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C819E84502
 for <devel@driverdev.osuosl.org>; Fri, 27 May 2022 12:56:38 +0000 (UTC)
Received: by mail-vs1-xe30.google.com with SMTP id i186so4163821vsc.9
 for <devel@driverdev.osuosl.org>; Fri, 27 May 2022 05:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=S4zvj4NczpydmduK3hqss0eAqxvs+DZNyjOzLka0Nhg=;
 b=pCsVKK6CV8lwdnD+IBdmppkOUIMv3GqD0FCKQX1ml7zVolCs/Lszykvg4+/kKAmggr
 EnTMzhUGsNBt8ogI6Vuh4uD71iBAzGwMu35eTt0qeR37+Hrbgf0FrIs9yvUQUYTIv3SW
 y2Fzry5KbPE85yqLw444d+QaJxnptBdxii1h77kvgdjfS3yMHqW4//9MhtJuz16Wc0VF
 7wYDnJY3k3DxDi4pyiwmUDoPBwKfQtrLF2tMoTcuoPEX6s53NbKMNZcb/3drtR52HS49
 wMGysYwZDNRMl6Dd5EEygWXflSA8s/5W4Tpb5wgzZUn8Y1A09a2Otyv+x4ig772GT8Op
 iLNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=S4zvj4NczpydmduK3hqss0eAqxvs+DZNyjOzLka0Nhg=;
 b=GkCqHDvGNcMC/hHDw6dMoFd5SHCoyLCXZp+pjTcLUoFrDa1hxCox8WGCiXXL6+E6xo
 ct2HnPh0gB6pKuEBzuhMlDvgcjYRLD0iYH7opr1nkHerauS+WjrWoJdHSylB0ftK3zVo
 iDNw80xIZXK6iuP3AcgFEep+GN6zS7sCj6MDll14lrXxGBhwXNuH99kX2Zd3Yl450w8S
 MpsABaCyOZjJ2guE9NUuHrmQZB7liBr2ZyxgdTvyKHgmUKqxR/Mv1BG0vZfCY2fknMs3
 oWh84hDJHdx9CYbC31VjRAp7Xlstt2dj92Q7bTukL6SPX3OrFo7ZdPJYJ1gmtkk5E/wK
 PbWA==
X-Gm-Message-State: AOAM531vzRD++lTl1XZPaNnoqmLEUWhHvCer5RnB+n5qOIhHxJg55+Ql
 xl9dYccPYWnGFk2J910vAZH9aFPcwJfmEMSR2Lg=
X-Google-Smtp-Source: ABdhPJzFX2t3rlkojELJlHFlmgXX6A33NjqKXdhXxDjDDEvsoPtAHr7Bj8YyoH5AMGz5jbGEQ2S2aD77SiPIO89SNN4=
X-Received: by 2002:a67:1501:0:b0:325:16a:e722 with SMTP id
 1-20020a671501000000b00325016ae722mr17709262vsv.43.1653656197579; Fri, 27 May
 2022 05:56:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:d002:0:b0:2bc:b02d:2b21 with HTTP; Fri, 27 May 2022
 05:56:37 -0700 (PDT)
From: "Mrs. Bill Chantal" <patrickmurphy791@gmail.com>
Date: Fri, 27 May 2022 13:56:37 +0100
Message-ID: <CAEsU2=iv6ejdmKiS=W3sJ8GdDJWC0iO=R_hvnNZPGEbVanpffQ@mail.gmail.com>
Subject: ATM VISA COMPENSATION
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
Reply-To: mrsbillchantal2022@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend

You have been compensated with the sum of $5.4 million dollars in this
united nation,The payment will be Issue into ATM visa card and send to
you from the bank,We need your Address, Passport and your WhatsApp
Number.
Thanks

Mrs.Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
