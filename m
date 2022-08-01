Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAB2586FB9
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Aug 2022 19:46:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB8DE410E6;
	Mon,  1 Aug 2022 17:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB8DE410E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JXZxVEnIlzP; Mon,  1 Aug 2022 17:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63F36408A2;
	Mon,  1 Aug 2022 17:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63F36408A2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CC561BF9AD
 for <devel@linuxdriverproject.org>; Mon,  1 Aug 2022 17:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E66CF410D5
 for <devel@linuxdriverproject.org>; Mon,  1 Aug 2022 17:46:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E66CF410D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RY257uiwonjH for <devel@linuxdriverproject.org>;
 Mon,  1 Aug 2022 17:46:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02B73408A2
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02B73408A2
 for <devel@driverdev.osuosl.org>; Mon,  1 Aug 2022 17:46:39 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id a9so5659638lfm.12
 for <devel@driverdev.osuosl.org>; Mon, 01 Aug 2022 10:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=q9Slei3vdZHf3BWZhWjxjnYHcSiTDd6lLLw5COAJJH4=;
 b=r8CxFk5rPeKM0jE+pB3EbgWtrVeIP75Z0E3wDtZSmvWL0kCPMwDJZooeLtNo4pAsQh
 WKg+az+S3b6nTibIJRQXHh5hFaMA84AzvV7SzFaRS2ZQq66XkFiZlI6wnl2W1eG5z+z/
 u3b4we9RGnluShjUlcj/9v5yHjSPAj6vGWeml8Ve/34v3bhQQHS5cP8wHBC9e6rCgTM7
 fdbDopB4N4DziW0YxzMdO01VT98gzEkPLOM3xOc07EHUwa44++mTvMyfoZUG8yobwvGO
 cV+/oy+We6oJyv8LqjQeuRhB3w/Jb7DPKML9+Dcl9rCxJ6sPurtLewiyz6WkAV6KqX6t
 JJfw==
X-Gm-Message-State: ACgBeo1PkdPCxflF4vUNBNUcoxEqjv5DZwSbXZc/caQ9BVyxmkEj0LF/
 JGC+pJ03OdmY1tfnLHWKlwmMSf/yNMZtTDvu/p8=
X-Google-Smtp-Source: AA6agR6q4RxFY5dXSqAkxUSJygyPmezEs6ReHlgtPm/hSyjvEZKfiae4kIjLp8ELSlSYNMP19jLCrqDFr2hEgzS3xTA=
X-Received: by 2002:a05:6512:2c8a:b0:48a:f7e9:973f with SMTP id
 dw10-20020a0565122c8a00b0048af7e9973fmr2167466lfb.5.1659375997971; Mon, 01
 Aug 2022 10:46:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa6:cb52:0:b0:1fa:aaed:e6d9 with HTTP; Mon, 1 Aug 2022
 10:46:36 -0700 (PDT)
From: Bright Gawayn <gben68387@gmail.com>
Date: Mon, 1 Aug 2022 23:16:36 +0530
Message-ID: <CAG1+V0xZBekA5JkmYjS+TJWe19LYLgympYBS4UhcAqZCWqwTWg@mail.gmail.com>
Subject: Lucrative business proposal very urgent!
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=q9Slei3vdZHf3BWZhWjxjnYHcSiTDd6lLLw5COAJJH4=;
 b=I79gjp4NwelxOUS6wVI1hpiSvkKIP+PpMGUyP2Ry+rIEUDjjiJiS+5ardDvgRoC+3e
 Q5vVrpXMdKLK+ZXfZxpQF17GdRDOhaSR1u+HORIP/nOi6ukEYaQ09f1T9gVtSmig8r9h
 W0NDlybVkGkIa4TBPTWy4t4XLprl/JQNZRNLgsUv9uk6TLUngl/a/4Vq7N7gM2bQ29lb
 vAGHsWuP948uN0X6WRAfihnOn0XCY2J0gcWTAdyaHittAHwbpeIIei2rxei1/8ZzEpXa
 3CDGOQ6KBheCUVOxCl02CzBKzfojM1PymVqEH4kgqdkCbTZ0qUW1qjjEZnSVteFAAZ5i
 nnXQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=I79gjp4N
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

Hello dear My name is Mr Bright Gawayn,  It's my pleasure to contact you today.

We use a certain raw material in our pharmaceutical firm for the
manufacture of animal vaccines and many more.

My intention is to give you the new contact information of the local
manufacturer of this raw material in India and every details regarding
how to supply the material to my company if you're interested, my
company pays in advance for this material.

Due to some reasons, which I will explain in my next email, I cannot
procure this material and supply it to my company myself due to the
fact that I am a staff in the company.

Please get back to me as soon as possible for full detail if you are interested.

Thanks and regards
Bright.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
