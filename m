Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2BC43FF7D
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Oct 2021 17:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DACD640250;
	Fri, 29 Oct 2021 15:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqYmGHIfGCVo; Fri, 29 Oct 2021 15:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44BE1401DB;
	Fri, 29 Oct 2021 15:29:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24B171BF3EC
 for <devel@linuxdriverproject.org>; Fri, 29 Oct 2021 15:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1512B6060E
 for <devel@linuxdriverproject.org>; Fri, 29 Oct 2021 15:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CEh0aGL0s__K for <devel@linuxdriverproject.org>;
 Fri, 29 Oct 2021 15:29:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD59F605B3
 for <devel@driverdev.osuosl.org>; Fri, 29 Oct 2021 15:29:04 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id u11so21820469lfs.1
 for <devel@driverdev.osuosl.org>; Fri, 29 Oct 2021 08:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=S5sdFu0RQlZFvupo/qwNdlJ2GO8zZANN1PS6veJLDy8=;
 b=kozYGVIiRzqw+44DoJCSBQb4QI/EkLiwoPlJcN8WG+Wzm8mGuOnFxuLWdsaljJ2Nb7
 yxfwXUdaKcYiZPFiCScT9VGkXjnXoGZTBKq0+FdfNRJEBmQz6ztC9bY/1tYQlT5aGK/D
 2BJHS3x4fqsfAM14EVXYRT0Q09V8vUU3WqjnWtGLVoNygl1vPVAbTFMNLEpuk5EvjdjU
 jB3OX1QVPvlEpTPLBxUD3L/GLX+Ic30XfGo9kd6ibtMChGV+gEgQk+RkxHKJ1itu2U2J
 1BdUp0Bmb50j2W9/y/4YJ6rAYu0N0Xqwpk5V1xaAiO5MZICu+rC4UpekaQJh9PAcn+mV
 Coow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=S5sdFu0RQlZFvupo/qwNdlJ2GO8zZANN1PS6veJLDy8=;
 b=I5Fed71UDgi7CRrJZ8JJlDe/vmLQGGT76kIRV/u3jpjwZIoSwn9TT6IIHuXYQ5UC/H
 wYGhvYuGU6Sy/8vMag07GEa/hfhqKvJv182pQc2DPaoBAj44M0oLF8/Vc8WtsDQBqbVE
 TtHbu2WOKDEWuOeL5UPzYIZJdjfHIZD/yAcL9xXWCGfKS2TbphVPvPrJBgFYiITR+HHL
 2uWic4zQnIxpwX30VWrITBDTZQxSLWXHtdSr2r6hECkqKoQXTxuwmvz4Otk1nSflqhRt
 NWTxGq1y6SdV1N4CJup9CV5MusMSOdMskyKsHXsv51ETFPvMie843gP0TEox9G+m6rjC
 hgSw==
X-Gm-Message-State: AOAM532bdMWPTAquNELMNto+1w7DmtRdr6KAfnaZHgvSsG4p/G/ykLKK
 2nyAQ32Pb/E+NZyyChw5qoyQqAlNwKFckuEHwTQ=
X-Google-Smtp-Source: ABdhPJzCA8DJAO3A6XoCYrL7s9gXofbtsHx2NTy3EWhFnRYCG9Q1hGUPbCjgzGQJPLjg5fTT5c9GMcmOLimQmooD5vM=
X-Received: by 2002:a19:c185:: with SMTP id
 r127mr11124395lff.535.1635521342556; 
 Fri, 29 Oct 2021 08:29:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:128e:0:0:0:0 with HTTP; Fri, 29 Oct 2021 08:29:01
 -0700 (PDT)
From: "Mr Ali Musa." <fl621816@gmail.com>
Date: Fri, 29 Oct 2021 03:29:01 -1200
X-Google-Sender-Auth: NjcuB6UNVz_XmR0P4EjL-EBG_M4
Message-ID: <CAK8dbAUSh2wnhtcdFqM81Q7mBm1siEcBkMiT=fpBy40YaovwGA@mail.gmail.com>
Subject: INTRODUCTION:
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
Reply-To: kl621816@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

 How are you today, Please accept my sincere apologies if my email
does not meet your business or personal ethics, I really like to have
a good relationship with you, and I have a special reason why I
decided to contact you because of the urgency of my situation here.I
came across your e-mail contact prior to a private search while in
need of your assistance.

INTRODUCTION: Am Mr Ali Musa a Banker and in one way or the other was
hoping you will cooperate with me as a partner in a project of
transferring an abandoned fund of a late customer of the bank worth of

$18,000,000 (Eighteen Million Dollars US).

This will be disbursed or shared between the both of us in these
percentages, 55% for me and 45% for you. Contact me immediately if
that is alright with you so that we can enter in agreement before we
start

processing for the transfer of the funds. If you are satisfied with
this proposal, please provide the below details for the Mutual
Confidentiality Agreement:

1. Full Name and Address

2. Occupation and Country of Origin

3. Telephone Number

4. A scan copy of your identification

I wait for your response so that we can commence on this transaction
as soon as possible.

Regards,
Mr Ali Musa.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
