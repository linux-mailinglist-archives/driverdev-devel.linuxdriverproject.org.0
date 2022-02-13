Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F33FE4B3E6A
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Feb 2022 00:35:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6066D815AD;
	Sun, 13 Feb 2022 23:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQ7QB7H2ACyu; Sun, 13 Feb 2022 23:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 240F6815AB;
	Sun, 13 Feb 2022 23:35:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA6571BF3D0
 for <devel@linuxdriverproject.org>; Sun, 13 Feb 2022 23:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4E71402E0
 for <devel@linuxdriverproject.org>; Sun, 13 Feb 2022 23:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id miC8u7K0zhnU for <devel@linuxdriverproject.org>;
 Sun, 13 Feb 2022 23:35:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29CCB402C1
 for <devel@driverdev.osuosl.org>; Sun, 13 Feb 2022 23:35:36 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id h8so7495529ejy.4
 for <devel@driverdev.osuosl.org>; Sun, 13 Feb 2022 15:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=LHp6vEdwiiUwiJt+z1eS+4gAuy/Pu5mUJ8813NTK5J0=;
 b=BACQ4cknmXyVYS3lxZUdtOY+3ilx8M5Xg1Y8hkhX7QSVyXLdhOyOyN/iHxplg6VObb
 EHzo3JvG8ZMiR2UtNd4QXDby8gYvgs3CJNRJKv7xwBniGhf+XO0NdgUhYHMFbW0l8Et3
 DvMJQqqIXCubFXpdkn5EL0uqrBO0drPx+s6ITG4eH/iTIvTGF7jHq2MEbByjBBXt1rx0
 WjfmA+JKbHDr3p5VQSMjsFc04I+n7sMgc/HjKKbbj8hif3+IC+JXF97I1gKnuyfeRdxn
 QlJTsPA9fYRg1js0osczghVOQUXKNlGejN1IGiAYIognI5d+xzmLoDLXWUyhxp7pef6a
 ElLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=LHp6vEdwiiUwiJt+z1eS+4gAuy/Pu5mUJ8813NTK5J0=;
 b=x1PQVb1HspjWk87Wk03Hk8cHU/1ij9ayHESbya9sh2XZmmDAKw3sgIVqo1XLm6XE3Y
 91c4VnO/MIgsLC1ogqxKtJx04I7knqD7iO8GFHKz9CagDB4amgMxeE2B2xmmbm2EUhYa
 scoMRXF5sSUkSK7kJc/70OBu7xtulP06FzYyumkkvHS+Gbq2L/mNCmr9T4U1ZwPsmCYD
 RCMz5HeRGRLkypP1+yUfcdEl0DkI9uQct2ziscXW4663wZNc+WQog/6Je8UkSrT4dmK2
 84Wk73A2na552/Yf2CRwAndM1XPn7vRHhZSlwT7FZa6Zv2gZdWLzNLer7hXeh6n5XOle
 XxNQ==
X-Gm-Message-State: AOAM530uzqtsWV6IDHhrhwvCGsvGiwxjgquV5XllGkez65pf7lrNut81
 C9IIEfI3hIbSTWDAEiEWWN6TMcEqdJn5x6zccrg=
X-Google-Smtp-Source: ABdhPJx6/k8mVfo6YEPJ4cWwrdIS5vjasjYCblChheDvxliJB1vtjR1fyPDIlIn0JMybcqiDDoc7JT52xBAUa8S7fGA=
X-Received: by 2002:a17:906:3bc6:: with SMTP id
 v6mr344684ejf.426.1644795334250; 
 Sun, 13 Feb 2022 15:35:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:c14d:0:0:0:0 with HTTP; Sun, 13 Feb 2022 15:35:33
 -0800 (PST)
From: MRS Bill Chantal Lawrence <tracylaboso@gmail.com>
Date: Sun, 13 Feb 2022 15:35:33 -0800
Message-ID: <CAMXa2n1H6FLXAPT8VSErTXXhF1R6u1w+UxCMiK5wPhFuZTDdxQ@mail.gmail.com>
Subject: Dear Friend
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
Reply-To: mrsbillchantal455@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear

You Have Been Compensated With The Sum Of 4.6 Million Dollars In This
United Nation The Payment Will Be Issued Into Atm Visa Card And Sent
To You From The Santander Bank of Spain.

THANKS
MRS Bill Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
