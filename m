Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134CE3E466A
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Aug 2021 15:22:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3310040230;
	Mon,  9 Aug 2021 13:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZZyXWL5Q23i; Mon,  9 Aug 2021 13:22:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B58240116;
	Mon,  9 Aug 2021 13:22:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4BE51BF3DF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  9 Aug 2021 13:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C38DB40359
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  9 Aug 2021 13:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRwokcxkuQJB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  9 Aug 2021 13:22:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B100040346
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  9 Aug 2021 13:22:06 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id h2so11389118lji.6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 09 Aug 2021 06:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Fivgg2AeCRNBcGenGR5PhhzfdPPnwT4Sdv1YBt6Vnqk=;
 b=Zpxdcl/+k3iFf9j/taIKRcczfm+pZE8yp+5wiWY+0/NM1Zme35Uhgxduhkza91Uqfo
 cLX4ZLvC75L1RJAboKUYiL/RQIYXblVfHtCQYjYFlSLAXNm8oArxnu+HfVcx2hPfOuNs
 iwaH/ON/d9DVryvP03zDEzY0qswkV4yZT/1T0Yf3X+Np9UqOg7O+OQng3lX44dUI64q5
 NYSlF3JTpPRjMlY39+FvLdAUv5YiIPuoLQ/hIfUmLavPgD1XMBZdLYAIdm0Z7AXXZLZ4
 DHoxDlnGrreGNVJgCYuo3lhHUdj+cbGLkf1Garvk5i56fAT+FdKGUGW5VkHjfj1pqc78
 pa6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Fivgg2AeCRNBcGenGR5PhhzfdPPnwT4Sdv1YBt6Vnqk=;
 b=pMVDbDs5A6wVQmIq2XqNYNO/CUnFCVSB4wwyuqGFGV2nEb7B+Uq0T5huldaTuQpU3h
 2PN3sepwEb7Kn4TcypvxXVDvtPAtNbt5Uw114ZQyj6mPTmtdPG3MHd++LEXBQQoJvyWI
 1iX0z9wNInXNI3o2QCrgSax5nber4g/1dyVailOCjaTH9VymHGG+QnuLZtuQt+NTyAAZ
 VjH8B4iAxyVo2891nxmrrJ8N4p5uNLjGAF0KXjbdHh3R3wdu1kMWvXo+qjK7Y1HfRzyt
 j2KziOrlAcRYdVEAhSSeRSe8rFm9YEHFngp2DkQffEsuf6fYpNoTk/lj5Nhhh+2Di1AG
 U8ew==
X-Gm-Message-State: AOAM530DB+YSVyVjJ/BmdfqjecN2MaTaHXQU8TwRfiPupyaw0+3aBz0L
 1CWcu5uADvtQrt7fNHsur0KpOjgxptRElhmepTU=
X-Google-Smtp-Source: ABdhPJymB0vAZq509GpuLbKPzfNr1m7hOHBpoor/SUArK4bZm4n4TZcgTgmff+9zfkYqOLvFtfaqz8HiqRbIvqltCbE=
X-Received: by 2002:a2e:22c6:: with SMTP id
 i189mr15873337lji.378.1628515324388; 
 Mon, 09 Aug 2021 06:22:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:f19:0:0:0:0:0 with HTTP;
 Mon, 9 Aug 2021 06:22:03 -0700 (PDT)
From: George Micheal <sulemanaissakucaboni@gmail.com>
Date: Mon, 9 Aug 2021 14:22:03 +0100
Message-ID: <CANiS8499Kz6H3Z+xcNsi6S1xsGqf0Vgi9-2Do+52DPyL0uyEwQ@mail.gmail.com>
Subject: Waiting for response
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
Reply-To: geomic123@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Sir/Madam

My name is Mr George Michael,i am the Personal Aid to former
President Baba Yahya Abdul-Aziz Jemus Jammeh of the Republic of Gambia
in west Africa, who is currently in exile with his farmily. I have
been trying on how to get in touch with you over an important issue
concerning a project that will be profitable. I anticipate hearing
from you for more details.

Yours faithfully
Mr George Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
