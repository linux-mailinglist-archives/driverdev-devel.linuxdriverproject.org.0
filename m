Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE824C3E3B
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Feb 2022 07:08:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4BA2409B2;
	Fri, 25 Feb 2022 06:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yaeKp0JsvX8o; Fri, 25 Feb 2022 06:08:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 775D6409AA;
	Fri, 25 Feb 2022 06:08:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3BF41BF5A5
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 06:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D019B83EB9
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 06:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vNzI210UqJIO for <devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 06:08:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B0DD83EB7
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 06:08:24 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id c6so3929892ybk.3
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 22:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Y7X8uyaFI8LljuLAxhyM48+yTSBDN9zANH/IhPwl+SQ=;
 b=iR4dT+/JYKXITK1dO6MFUBHdtmDPc9NPZJ90Uet+iE2SKSm0xbxphla78FMTE0WaEv
 S4jXzKEqn6l+3A9ta43Rq8zrjmIZmxikjY4EQRoSjVgtjCz0HXXgIz+0L+aUHSBGokrf
 XKIJUWWEUX+20/HiQPo1r5R3NEICYd4pvWVUsXj/Qa2/k30sveIrSEuvUJO4xUVX3TIG
 S5JlbLLZFrhMqNX45BBucRCh84vSClVwO3xTz51kE9lgNPEYiFRMJLf0G5MWbpwwZjIu
 lp+XRGRAcRv22aAckOJ9C9dEfYXLDIuDW/5LxgJhRdLyqe252BVn8lfrBSd+PWnj/QtC
 JH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Y7X8uyaFI8LljuLAxhyM48+yTSBDN9zANH/IhPwl+SQ=;
 b=Mx4vwYk8rj7r/h0oStg7qSmcE3ANDoIicOlN3GabBUnc1KS0sxB3IhBmu3Fe8Skkgc
 fubtUIoMx0eZ5JR9ikMSQgW+JtCLUZ/jfuoMyZpcHTYRiwRGCl7JFFeSC+I5Q42uDrfU
 tpr2FVX1alWT3BBD6+8q5kwnyQn1ySSwEU0C71xxXrZvM5yG1TKypI606YPT6bqr7m1i
 nZYmOFAzYpxpCaFpme7PLZc9lWjVjhe+P7El3vBqkQidDzpe6gNn19Ub3fpuFguLP3iX
 p1gm8lqapRgSiy27By5GV1avD7iky+l/hNLhx9aoFfw6RZdwcNYTQUJNuqqzprULZ3Ka
 ZBfQ==
X-Gm-Message-State: AOAM530ummVM+dN08dK3IEiPl/nVi0lBnAEMiGyHhcJHfjPzaEQEBxMT
 JozofYXbvi2dCaXk93xNnRRI//HT3h+ZBmSU7AY=
X-Google-Smtp-Source: ABdhPJwQIWLFU7UyjW80MdD5ErC/o/bITG473KC3uLsTUlwbK1cfaG6qXNmNAGbpxZvt4sGBgciCmImouoCNUJU4VRo=
X-Received: by 2002:a25:2a87:0:b0:623:8086:301a with SMTP id
 q129-20020a252a87000000b006238086301amr6000232ybq.175.1645769303399; Thu, 24
 Feb 2022 22:08:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:700f:b0:15e:c6b3:3796 with HTTP; Thu, 24 Feb 2022
 22:08:22 -0800 (PST)
From: Mark <georgejamesowus0@gmail.com>
Date: Thu, 24 Feb 2022 22:08:22 -0800
Message-ID: <CAP2m6DTeSrtEMpzSJfuuNtvHNNv70vaW5wXETt8G1+jAX4O0Hw@mail.gmail.com>
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
