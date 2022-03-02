Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C234CA41D
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Mar 2022 12:48:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFD0E812B9;
	Wed,  2 Mar 2022 11:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2DEyNUutJLo; Wed,  2 Mar 2022 11:48:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7312E812C9;
	Wed,  2 Mar 2022 11:48:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B596F1BF846
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 11:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4083812C9
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 11:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4SxlTRade_C for <devel@linuxdriverproject.org>;
 Wed,  2 Mar 2022 11:48:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E00F812B9
 for <devel@driverdev.osuosl.org>; Wed,  2 Mar 2022 11:48:43 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id x200so2775430ybe.6
 for <devel@driverdev.osuosl.org>; Wed, 02 Mar 2022 03:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=1h98u/bN5joq7hLImj9Jy+kYtlUyjs0ZgzpFswkgYBo=;
 b=nYfJVEJEqcMyMncVpbtTdTrkg0DBCiQ0h0SxYIIC6eRwLUH4HZuCPkyP1vfU8dtNGt
 dK660hgc0CJG6jzY1ep/+Hf0AdPVq4WTjU2IOTwDl387ITtCn8A3ZKxgtdeTnOaY+dzj
 G9GdE8uufGG/+kwfbRPNzstYS9AXK9dZKk9sSTRl99Um579jfZVNApT7CxcT/3opkmYZ
 uwgN5m8UrdWLqk+pRNTEtUGTB3pi0W4AmYDoc0joCx9/cDAeB+XcSS9gtkXhJUPlzNhc
 cuwbaj2h4vG2/R/lP3nBnxt5Q+TrO+DQ0jueMz0ftn+LqVoMIyAWl+YA9MFoSG7g+sju
 eVqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=1h98u/bN5joq7hLImj9Jy+kYtlUyjs0ZgzpFswkgYBo=;
 b=Yh5Xl8l0Jxy2fyTE4XmAi0TVY6hZh/pKCWopayVh907kbzsuk4AiQ6Yzea3rAYAfiz
 BC/seQrs5od8CK3bLzxVu+1GKILAuPc4a82JfWN4PMLPNz6rkt9MyboS3ue6i48P1t1X
 M6tNE3AL9Ch1uq+aJiYxJXWvU6bDy8To5p4et9oN+WU38dU1O9PAG7uD28B68ZVAqNes
 7ig/fSzCcSn2DYFWSx+0DJ5NTFoq8T+SNntQSOlCvwi2D1o7LNLm6CBxBD63oK7lW84F
 W8eRcCDToRYxozgx3FCn7jo6Uv9YwIVdyUEUuIg/zOhHRh+VKt7HAMk0uRSL/bVEmeru
 4kIA==
X-Gm-Message-State: AOAM533R3c5xZB2kODjw8wGx47O3y7rhexlPicPG1vuoqtWJUX8PG+CK
 B8DALD9B+eh9gKaAqncWZn9I3WIIUden1eEaoas=
X-Google-Smtp-Source: ABdhPJzbE1CDEmThBwu1LfoMSB8hk3Z0rzwmKHzsGsF2H3TBV5LJc30vsVx55llMVHF5zuMB6pZ4P9/j5Y5snfeUQd0=
X-Received: by 2002:a25:7b04:0:b0:625:f00:5484 with SMTP id
 w4-20020a257b04000000b006250f005484mr28322285ybc.422.1646221722136; Wed, 02
 Mar 2022 03:48:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:61cc:b0:211:4990:c32 with HTTP; Wed, 2 Mar 2022
 03:48:41 -0800 (PST)
From: "Howard F. Newell" <wilabour13@gmail.com>
Date: Wed, 2 Mar 2022 12:48:41 +0100
Message-ID: <CAAPXPqb5hBqdRWtMyq-mBd_PRf0Gs8RXj8qAMAyWa_tkrX6qsA@mail.gmail.com>
Subject: RE
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
Reply-To: howardnewell406@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,
I want to know if you received my previous mail of 28th/01/2022
concerning your compensation valued 681,200 dollars by the United
Nations Compensation Program (UNCC). Please confirm as soon as
possible.
Warm regards!
Howard Newell
London WC2N 4JS, UK
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
