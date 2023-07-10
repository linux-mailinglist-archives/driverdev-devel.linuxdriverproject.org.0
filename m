Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE7E74D592
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jul 2023 14:34:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 322D0817E4;
	Mon, 10 Jul 2023 12:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 322D0817E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8k1IQSg0IIDu; Mon, 10 Jul 2023 12:34:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F41A381397;
	Mon, 10 Jul 2023 12:34:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F41A381397
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3ACC21BF955
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 12:34:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13942408A5
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 12:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13942408A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxf2eP77QZ1t for <devel@linuxdriverproject.org>;
 Mon, 10 Jul 2023 12:34:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E45C404F6
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E45C404F6
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 12:34:39 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id
 d9443c01a7336-1b8bbce9980so27442845ad.2
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 05:34:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688992479; x=1691584479;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jvhbKHPRKfMEJS6inHuIrpCpyOh87s7quIhd+QJ98f4=;
 b=iQBZSg1R4qIReirIx/e2UlBNcc17dklSp7pLyfOIgmMLZVep7qf+/+0Pgs1cRM7IJ/
 v7sxXVR6Yt2X75AZ7G4pTP8+qDiKVuOkwBrmsVWKO7MI8V9NoJaGh/Hw6ncT9VChqphD
 7CGFWh9HJQt48kmOiad0hl/dqYrZcfKN1MCAUBeW9yHjJqxXezCkJuUii11CLLjQA6ai
 47PZBUx9OWCK5eMtL+ysmLSZbA6G6SIFEKlUuFf6qyR/l+SsFNcvb+z/HDGRQS/Ymcow
 MiaCMuyVuuq2T+d8Np5nbWwLYhIhtj1md2lQO1VRdoV7JMCiwaK1gSx1XtPR+VeRFT3f
 mlKQ==
X-Gm-Message-State: ABy/qLb2FJrB9fdoMQFRjsW9r1+pWYRhyqDko9IHzvCW5sGlObuzL4Ec
 wg9em7CD6msc4IT2wGFvQOPxQiioa5w0bJq4Peg=
X-Google-Smtp-Source: APBJJlHknCCCSs8oL6W2K/RxaYloGgg71iyocEIQRRiC2XssBLZVdTOzqNH/iZ3RtxPsKQlSj9p6izJrD9dNY3pCeEg=
X-Received: by 2002:a17:903:228d:b0:1b8:a3a6:df9c with SMTP id
 b13-20020a170903228d00b001b8a3a6df9cmr11541467plh.60.1688992478742; Mon, 10
 Jul 2023 05:34:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:a685:b0:4d9:6642:b75b with HTTP; Mon, 10 Jul 2023
 05:34:38 -0700 (PDT)
From: "Mr. Sal Kavar" <salkavar2@gmail.com>
Date: Mon, 10 Jul 2023 05:34:38 -0700
X-Google-Sender-Auth: RZN_K6pAAMFCgWY0cvuZq4eV_h4
Message-ID: <CA+j35sB12GV7irDwrpq51rQ8sKMpvw5raVK2VKmUw_+-4ETTxg@mail.gmail.com>
Subject: Yours Faithful,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688992479; x=1691584479;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
 :to:cc:subject:date:message-id:reply-to;
 bh=jvhbKHPRKfMEJS6inHuIrpCpyOh87s7quIhd+QJ98f4=;
 b=IjsTXkboVQq5aR2eiwfTjfU9cO/jl2coVka2iRB7wcI9FBu904fLknW+7oVvwpl+90
 iUmnl0hQ06nUbNYDHtR01v9wy6a/CbAMdIwkWHND+Q+gr7C3snGnda4aE0IRBjATniy9
 aRZSr+p3yXWyV1VgvvKAGPWOxJyyw2k9oxTdYS87hJvUp40STLfUVZ45Q7qT9dj7d9R5
 SORri9jKshPQ1Ot70NHY5vh7ukqPOYd4BjxBJshRZyoPWn35kajjP8or6YGsZZAGodcW
 c3uesR+6WT6dBqFpUcmd1ZBJuY/hcPbl8965opNuKFRdQ5SejPGKY34h42gr+fjYoJwM
 HbZw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=IjsTXkbo
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
Reply-To: salkavar2@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I assume you and your family are in good health.

Overdue and unclaimed sum of $15.5m, (Fifteen Million Five Hundred
Thousand Dollars Only) when the account holder suddenly passed on, he
left no beneficiary who would be entitled to the receipt of this fund.
For this reason, I have found it expedient to transfer this fund to a
trustworthy individual with capacity to act as foreign business
partner.

You will take 45% 10% will be shared to Charity in both countries and
45% will be for me.

Yours Faithful,
Mr.Sal Kavar.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
