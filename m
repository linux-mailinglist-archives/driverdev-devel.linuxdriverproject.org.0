Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A903F924F
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Aug 2021 04:28:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3460540488;
	Fri, 27 Aug 2021 02:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nQmP4FoR_8XV; Fri, 27 Aug 2021 02:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 666EB40109;
	Fri, 27 Aug 2021 02:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3EA01BF295
 for <devel@linuxdriverproject.org>; Fri, 27 Aug 2021 02:28:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8977A614BA
 for <devel@linuxdriverproject.org>; Fri, 27 Aug 2021 02:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lIxzRPtjdsC6 for <devel@linuxdriverproject.org>;
 Fri, 27 Aug 2021 02:28:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC32A614D0
 for <devel@driverdev.osuosl.org>; Fri, 27 Aug 2021 02:28:06 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id k24so4730024pgh.8
 for <devel@driverdev.osuosl.org>; Thu, 26 Aug 2021 19:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=9YVEc8FaEYxEaiX9PshWjU8EOBkvkViIyHdCOUjYYB8=;
 b=DR9llC8RVr5e8H/pl4vl1f88tO0oz05WGJR6Xd3ogNWdulgs+L0e+6BlUo3WNSmxH6
 vULA/IUqJtFq4qYW+iVDsaxHVI1RBr+5200moUsYtAS6W6Rr2GuSeO+0evr+X9pN6Asw
 pR1L6eu/DDpfxrgYgw4zotrAQFTDMuSpJR+Ur8y/Zd+U+fdNJtRXMH4zNUr7cbMx8R7K
 q6Fwnv+BveGG5GKlOnQZF5hLO/9sVpmPKCfgH3ZRcpy8r77g3qh/p1/E/9f1vBo6kbq9
 0rbqbN6ltxwQlqsx5Rc14nR0+775OGdivGWphnm+pPiVYznPYTIANfiK6LWT5knMDQZ4
 nXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=9YVEc8FaEYxEaiX9PshWjU8EOBkvkViIyHdCOUjYYB8=;
 b=Mb3ZoVjhO+qhpdfNnOgtW7kPWcHRqbHpACPcHQlzTIAOOH8sPiS8Irhh0eZyVuy9f/
 03ysoIgt37YKqq3OsVORJHLuscMJv17RZgqyBES/aTjGHnO/+L0vIXU8MYqs8M7lQoK3
 mvC3uBsxpcKfuEG+iSVQzbgUiZDEFzhpjUzsbeWYpua36yaix0qwzbYMXhXHFDsy5Hoh
 5PfcBi8r6W99Prz+WQ4g5VbmT0q36EYDOBuqR/oHdrx129eh5TLNfMFfZRDh74hy+OFJ
 d5W3VkUzkdMob5y1zqjJJ+R6I/Ss+QWz1ofp3ffxiRLi91szEHuBxkrFmqO8BkPXiF0k
 Qlhg==
X-Gm-Message-State: AOAM5339X1oLwIu++QGK+p5+awideeES3GS5j7Ac1Vc4o2cRZv5CXuSa
 iIsRCTGnviFqEn06IL5QVQAXmCtoBel6bbWUuT0=
X-Google-Smtp-Source: ABdhPJwz8ppMO8n05hor1z6i3MXX5yOr4SV95ifX4H1bAjrpziUENA+1nWqJS6GtJm95b64aip5q+HR5ymYkcrpcO5M=
X-Received: by 2002:aa7:8754:0:b0:3e2:1de:4f92 with SMTP id
 g20-20020aa78754000000b003e201de4f92mr6716793pfo.16.1630031286244; Thu, 26
 Aug 2021 19:28:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:62c7:b0:38:c1c7:5331 with HTTP; Thu, 26 Aug 2021
 19:28:05 -0700 (PDT)
From: "Mr. Pierre Eldaher" <pierre.eldaher57@gmail.com>
Date: Thu, 26 Aug 2021 19:28:05 -0700
Message-ID: <CAGZKiwpqPepjVsuzpJBmyLssRu3t_D_Fkxxk9ir7CezE+J5yAQ@mail.gmail.com>
Subject: Greetings,
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
Reply-To: sroomf70@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings,
From Mr. Pierre Herald, please a huge amount of payment was made into
your account. as soon as your respond is noted the payment
confirmation slip will immediately send to you.  please do not
hesitate to reply as soon as you receive this message. awaiting your
urgent reply please.

Thanks
Mr. Pierre Eldaher,

Best regards
Prof. Dr Diane
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
