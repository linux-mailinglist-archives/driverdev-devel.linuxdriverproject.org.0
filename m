Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE5C446E8C
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Nov 2021 16:12:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE68F402C8;
	Sat,  6 Nov 2021 15:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IVup5JLeMMkW; Sat,  6 Nov 2021 15:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 662DB402D7;
	Sat,  6 Nov 2021 15:12:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A74EB1BF2A1
 for <devel@linuxdriverproject.org>; Sat,  6 Nov 2021 15:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93C0A402C5
 for <devel@linuxdriverproject.org>; Sat,  6 Nov 2021 15:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lr-cD_U6s_8H for <devel@linuxdriverproject.org>;
 Sat,  6 Nov 2021 15:12:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BC2D402AC
 for <devel@linuxdriverproject.org>; Sat,  6 Nov 2021 15:12:18 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id a129so30657961yba.10
 for <devel@linuxdriverproject.org>; Sat, 06 Nov 2021 08:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=w1lOikvT83TxlEoyvgpvkpl+gUOy6uaCwKYN12Rxif8=;
 b=RMUXiPqgDSto6twVQMmuowE5aASiczFRJJPIOIE6YXD/W6JgwlXXiyZoRMZBkJyaci
 QuAjWXwMlIwJc8d5feHvAOGBTe0vr8wBlXIOO88CDUFyxiDlEfDljvuaYYi4FxR+mqDr
 9YUDrvv2FFSgfEy1AVXqitoNMk/Q8/nezuRerbaYY3YQ0VWpAkCwEKwlpOpRBnnmaqJK
 AlEd6hKQySZdpzlwzzBUsNywhnj85ZnkdX0clkzAync/bDQ3KmQVwXkfXEIF5WBxXZLN
 TDLWZNuS9dgy7B7Y/6vJ1KoBDTVMxoM49LIlW6ZxFWeo2duvEaMhcI7K4+JRazjHAnEk
 plmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=w1lOikvT83TxlEoyvgpvkpl+gUOy6uaCwKYN12Rxif8=;
 b=hKrZ8i5tXiHWMUIOraI+8C6P9PEa1iTTMCaIHBufqrdduGPjUhHDQw2roWVQJJF8ea
 cGOGGEIUnpiA9FhaY+lsVVCqrPXXXgXcPkud6joyZ9u2/eQlNewnEUfF0jJTH3JNlsT1
 zyb7ycfJ9RxxPgSvSGGeD5+xHgrQuEAynIXLvraoaanPatRLk97JTl4EEJap62ssBCry
 qwC3ay8MIl1BRHINn3twDC8tCNVE5vAjNKWN12Ue1WzHgIRa+//I0Vr3NyITxg8skJCB
 wzZPpwEZ4CvzC8WcCxtLeWaD8yS7ORQTCIvrsNayFqng5yZvnfqwPEcGZZvYSEvxJMe9
 hJlQ==
X-Gm-Message-State: AOAM533eZTbQC1fjos7AcWhDfivoTEQG792TVc2q+Or2bMzkF0o9ieyv
 WobiUpehCNVTCdh4tSFp3uEJrL0l/yf46z1Gdp0=
X-Google-Smtp-Source: ABdhPJzOjZXTEKnzYRcTYD7lpaJy+KKg9krUL9Ave9E3tHjMewnFauVBwRVDdgbwM7cntg5j3Lo7KpO3NUWR+CRYojY=
X-Received: by 2002:a25:6e0a:: with SMTP id j10mr70641822ybc.361.1636211538043; 
 Sat, 06 Nov 2021 08:12:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:4189:0:0:0:0 with HTTP; Sat, 6 Nov 2021 08:12:17
 -0700 (PDT)
From: Mr Albert Jonathan <lauraginia0@gmail.com>
Date: Sat, 6 Nov 2021 20:42:17 +0530
Message-ID: <CAL4vni=Jd4yrGOVG=AQg5ewCfxXOMb6zq3+Za-VF-XwxwsjXRw@mail.gmail.com>
Subject: 
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
Reply-To: albertkjonatwn@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings to you, my name is Albert Jonathan, I have a very urgent
beneficial proposal deal that will be of great benefit to you. If
interested, kindly reply to me back.

I await your response.

Best Regards
Albert Jonathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
