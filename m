Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7F04DE84A
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Mar 2022 15:24:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C54744011A;
	Sat, 19 Mar 2022 14:24:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uLyNtF4dDeqs; Sat, 19 Mar 2022 14:24:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D3AB400F2;
	Sat, 19 Mar 2022 14:24:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A67F51BF3A4
 for <devel@linuxdriverproject.org>; Sat, 19 Mar 2022 14:24:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9026D404A3
 for <devel@linuxdriverproject.org>; Sat, 19 Mar 2022 14:24:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVLW4XUX-bh3 for <devel@linuxdriverproject.org>;
 Sat, 19 Mar 2022 14:24:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7033400E0
 for <devel@driverdev.osuosl.org>; Sat, 19 Mar 2022 14:24:44 +0000 (UTC)
Received: by mail-qt1-x836.google.com with SMTP id t7so8897271qta.10
 for <devel@driverdev.osuosl.org>; Sat, 19 Mar 2022 07:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=wNrJMzmUs8L1uyhCpCulO8HdWj50qKBCSBf44V+e8WA=;
 b=FZ5GT77VA/MkITWPGe5tzgSPjBiBL53bzI3beMYottKeNiprm+SJR93yDYao3+mAta
 I+iXUD9hgGHfqGP1GCOVeqSL+NvCrqScevzOL3ce8pGEpU0XDkv6YQiBHUbXe0iX2o/F
 RBktk3sqAWR8C0EWuB5Dl2EcithiKi/QZaMOm0y+w1l2Tz3FYhImwbhV6UJ6xKFnuTj1
 FssN2Vk7tvamNc5zehDpHvdQ4g2vP/Zr/a36Uuykz82j6kVRjNgEjsVrrIcP4/VV2xEJ
 YyoDjbUICXM+/3TTp/enKsxuCQuW5uQzM8UWmU54CVSU8+7wfB0EE1g1UnGZa+cTVRCo
 ItRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=wNrJMzmUs8L1uyhCpCulO8HdWj50qKBCSBf44V+e8WA=;
 b=4okBnzzA9a5qHf77vTzSP+elPCK2mubTzhAHUEhTpER6bRtYqTzRmOTNdx0pnQ6Rak
 Fi87Dr3L5m7FNtPRpFIM1P2oeSDC+0Jrje8hHhUam67xeHg901+6uJPZBsjz94SzOfm5
 kbOQW5U0MLdGKnh+yqyzfkn2+XUw2GzzplLIeYtb7amvx43+jfiwdfcxtc7qfboJosDs
 Pvv3UYVXUqaOSqfKW6GCmNZh62lO/oz8n8dWvwm3EThyLNX+YOR6vDJ+q5GgjkabHiHC
 VdPUZOaC12Xt3EKA4tTT8T31GbwNc6HrKmImHaha4FsAE57XMGF3JLS6Y6bpK9yNyaq5
 UEKQ==
X-Gm-Message-State: AOAM531lQRwYUSE3m7gBEEpjbuVBi+2VmnmDszgqAt50CbLuQxk2sbea
 F3Vop8S4fDi1vxD5L2UHZE0ccswkZU2PHXcVBJ4=
X-Google-Smtp-Source: ABdhPJwVKYptt/MzvwPg4fU/WKXYGxiM87WYOwKseM9nMfG71ogxY63MQcaq8F/MvXP59+f6KKJ2IT5PrKttu8Ot51c=
X-Received: by 2002:a05:622a:1aa4:b0:2e1:a97b:e80a with SMTP id
 s36-20020a05622a1aa400b002e1a97be80amr10994304qtc.642.1647699883159; Sat, 19
 Mar 2022 07:24:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:576a:0:0:0:0:0 with HTTP; Sat, 19 Mar 2022 07:24:42
 -0700 (PDT)
From: AZIZAT ABIATU KASIMU <kazizatabiatu@gmail.com>
Date: Sat, 19 Mar 2022 07:24:42 -0700
X-Google-Sender-Auth: GVD-vxiWR_Mv9S4-oo79vxqv6Mg
Message-ID: <CAGoqFBTGFCx6w1BxhPy70=O6vWZ-qawgZqm_wQ-WLc2nue1KMA@mail.gmail.com>
Subject: compensation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

hello....
this is to inform you that you have be   compensated with the sum of
1.2 million dollars in your pass effort,and  the payment will be issue
into ATM visa  card and send to you from the UBA BANK we need your
address and your Whats App number

Thanks

Mrs AZIZAT ABIATU KASIMU
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
