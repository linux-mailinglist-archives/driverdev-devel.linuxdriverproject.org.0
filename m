Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CD3502E42
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Apr 2022 19:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 764764051E;
	Fri, 15 Apr 2022 17:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id plVm1kBOEQOl; Fri, 15 Apr 2022 17:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C209404FF;
	Fri, 15 Apr 2022 17:09:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98E111BF83C
 for <devel@linuxdriverproject.org>; Fri, 15 Apr 2022 17:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95AAC6076C
 for <devel@linuxdriverproject.org>; Fri, 15 Apr 2022 17:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9ZRrPRLYs-I for <devel@linuxdriverproject.org>;
 Fri, 15 Apr 2022 17:09:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C405C60758
 for <devel@linuxdriverproject.org>; Fri, 15 Apr 2022 17:09:40 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id q22so2427474iod.2
 for <devel@linuxdriverproject.org>; Fri, 15 Apr 2022 10:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=z+v8ugHyK4Bi1bsAOtuex5rzJWIULuLfF++ZnJg6JJs=;
 b=YotQX4u1QF035DEjvUjnzpFA2Wac9+2GwwslzoYM0UvF1H0Dw0Jl0GM5hJ0SxbVmio
 Ne8FfywadsBbUlPT4f25UTq6FEgQZr/fCvqxy9KekssvZsBrOCIJ8wKBAckBJYE0Mte0
 dCvuZnqqMDLk95jHMhU8UFvwwCchMUf+EPkq9VhJ1PVdtbMZrIFgse1Kz4u3BrssRyEQ
 xFqFWuU86Gx33w8ruultEboq4V0ANSAi0kngMjfZXHT00fKZhecLCmYRRFDeRW04sXKK
 8mMUMQiNs2ZXqoeNcmMWbwb1OgTDKN65Mtn5WOCvi2eFHZTFhYnOdQU8iUbACD3h4PKL
 /HVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=z+v8ugHyK4Bi1bsAOtuex5rzJWIULuLfF++ZnJg6JJs=;
 b=pnhOIKJK15bVqyx18n9bqK+n3owPz00GYFIyGWupfr/Zw1HdhIFdLHQIiubrleGbwP
 oGdfhpvqmFPLcHj62gqH+90WWbhy/nL4XKclUDQOYsCoLru83K76tc2p4Jx5/VZuYtKA
 lXqf09qmAKPa11vixt7BAE97/kTzS9v2VQrnkHrAv0PnzMb9CtSKF1DuMgmPvx6ZqncZ
 it/ZsvJkuQf+080ED2Ryrw3HWu0JTah8m1DWTCqICfPnlY9PrWMBaovhiVFDnnGiaHCd
 u97b5RErb0CYbHF8Jhrc8+P0H14q574VeY8OvtbX9NAuXkc0M9JsnlYIkelNOS5sh1/s
 nwxQ==
X-Gm-Message-State: AOAM531zwpHOSnM/+tpdIIZlStKjGehZ2YyZ7P25iEx/jgnmAVtrLetR
 smQLFehBhmRHDX4vvYrzWVhBN9GzKuyQvjXqWg8=
X-Google-Smtp-Source: ABdhPJwwh2TRBUz//zFyKgXkjkzAZ9mME5x9SpCkMiQgK2yYEURuOLeEfskaCb3wQvTTC5Xd2Mmq1ExJMHFKCAPRm2k=
X-Received: by 2002:a05:6638:2611:b0:323:be52:bb0e with SMTP id
 m17-20020a056638261100b00323be52bb0emr84534jat.232.1650042579836; Fri, 15 Apr
 2022 10:09:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:c402:0:0:0:0:0 with HTTP; Fri, 15 Apr 2022 10:09:39
 -0700 (PDT)
From: Mark <nnannaidika2010@gmail.com>
Date: Fri, 15 Apr 2022 10:09:39 -0700
Message-ID: <CADkaraxHBihVvVmaEYVam1k3+6812+d=uD+ArC+4qx2OzK6rnA@mail.gmail.com>
Subject: Re: Greetings!
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
Reply-To: markwillima00@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

The HSBC Bank is a financial institution in United Kingdom. We
promotes long-term,sustainable and broad-based economic growth in
developing and emerging countries by providing financial support like
loans and investment to large, small and
medium-sized companies (SMEs) as well as fast-growing enterprises
which in turn helps to create secure and permanent jobs and reduce
poverty.

If you need fund to promotes your business, project(Project Funding),
Loan, planning, budgeting and expansion of your business(s) , do not
hesitate to indicate your interest as we are here to serve you better
by granting your request.


Thank you
Mr:Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
