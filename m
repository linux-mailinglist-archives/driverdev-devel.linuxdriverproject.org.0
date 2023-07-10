Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D0974D591
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jul 2023 14:34:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17D01813DE;
	Mon, 10 Jul 2023 12:34:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17D01813DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7DLf3sE6zHz0; Mon, 10 Jul 2023 12:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E67998131B;
	Mon, 10 Jul 2023 12:34:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E67998131B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 382EA1BF41C
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 12:34:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1152D8131B
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 12:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1152D8131B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pT06Qqi4qVKQ for <devel@linuxdriverproject.org>;
 Mon, 10 Jul 2023 12:34:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79A7B8137B
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com
 [IPv6:2607:f8b0:4864:20::642])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 79A7B8137B
 for <devel@driverdev.osuosl.org>; Mon, 10 Jul 2023 12:34:39 +0000 (UTC)
Received: by mail-pl1-x642.google.com with SMTP id
 d9443c01a7336-1b9e9765f2cso1933015ad.3
 for <devel@driverdev.osuosl.org>; Mon, 10 Jul 2023 05:34:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688992479; x=1691584479;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jvhbKHPRKfMEJS6inHuIrpCpyOh87s7quIhd+QJ98f4=;
 b=CtW7Fb9WBsGEDxW6PUCllVkKbW5kbKvz3VytY7b3J7nqtyR85Wj/uz1J8jhIPdy8NV
 kWbH58JBLzihQQ2AOhmXGt9W7GMQS1+QXlh/Nr3w3d4uA8vSHB0hQ7pu6IRxMmKfr0iJ
 JUJH6mzkTnGWWytyNfG5Dk3TOKSGbhO6P5DPPsgPr7unOEzaSkViCLyHbfDVknEFu7ok
 kfVNlLowvLqNsFCN2W5zmRRmn2XADUtM9mV7neQHJCDq7Eml0VwkcHByXLBFsCiOy0ST
 LabTvg11OOP4cs/rZzNL3Pn0AIbmBpoJVUI2bbk4s8olOYnfzAyE0IOMZ0863yagI9Nd
 TTqw==
X-Gm-Message-State: ABy/qLY+uZd5DxEMqyqKYRZyMnW3Rvzpd2ljGWaSLY5C4uAhVAt0MCVO
 bM8LQAju/erMWb/49q3xwCgLcFodWYfls/xe38U=
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
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
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
