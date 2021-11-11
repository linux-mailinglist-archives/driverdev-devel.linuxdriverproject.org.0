Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB3D44DC8A
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 21:36:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC84681D7D;
	Thu, 11 Nov 2021 20:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDTTc4QL1TMm; Thu, 11 Nov 2021 20:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BD1681C6F;
	Thu, 11 Nov 2021 20:36:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CC3D1BF44A
 for <devel@linuxdriverproject.org>; Thu, 11 Nov 2021 20:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B4BE60B74
 for <devel@linuxdriverproject.org>; Thu, 11 Nov 2021 20:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-ncNuyBxeVK for <devel@linuxdriverproject.org>;
 Thu, 11 Nov 2021 20:36:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com
 [IPv6:2607:f8b0:4864:20::936])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B613F60B73
 for <devel@driverdev.osuosl.org>; Thu, 11 Nov 2021 20:36:44 +0000 (UTC)
Received: by mail-ua1-x936.google.com with SMTP id b3so14542972uam.1
 for <devel@driverdev.osuosl.org>; Thu, 11 Nov 2021 12:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=NHAujRj3nNPe07TxWi88DybAbp7vcb7zQT2ctaDgCnw=;
 b=QQrpf97F46XwWxzeXgBiVXDrCSkoVAGcQJ/dt+8+Zk+/TwRg8whO3NLbZ/zNVTKzdc
 jneoyThpybLuKmLkH51yxghcu56FeQcftSa6mL5AvzyT4ztBraJ5mNrX956GWLUbLG0f
 cN0er89MRkM0N8iaMQY20rYK7F4aV8HEYPGAuZ35yZDa6hi8QylkuQSAzyu6lOGDyfGC
 m4gBcE3THkgdFg45sKdILgGJlwuKY1iPui88GZfB4VFaCTR6IXWJ6tpC3cf7UwlvuMBG
 Qo0zEgsCtpxW+7bMimoLPRWh1VruJnAGhwY54bLtmxy/LW97L9PfNFMd5rZssJDDBk71
 m8qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=NHAujRj3nNPe07TxWi88DybAbp7vcb7zQT2ctaDgCnw=;
 b=APx4x8zs6TZQ6u31OUWH5Rz9iFpn0a+Oo/IK6RL8zNYtLhmDKzi0cSSPR+dBpB/vW9
 PIDDJ1EB0HngbSqplvdvUmJUM18ZrQlKxXFBeCIZfrNPIOMCrFGmpCuABHZNKKqLgdqW
 xsBeYMybHaNxo8Y/wpOxan1NsJPWxqfdHrqkcOnskIPRLupuiPOzhQqFikejN/pG6ZWL
 7xP9qtbRM2KiID+h18p1dus8hm2/2K2B+c658e8cIG7pCYWcJ+yKCns6zM39lsQ6dgUc
 oRmgYiwFaYQSmgwKuyQA/6fegcXsCyxhp3rYxGEoO6twyQIdurIjdOoqnU1gX8R4+r4+
 BWbw==
X-Gm-Message-State: AOAM530xJxc6NStbWaqOf3KUE0vO22oOZRHaF7mFBGOw2MuoPPoVmmdf
 vup7tMVHJLGjOhKXRjyI6gOcnsJYvkiekiH08eo=
X-Google-Smtp-Source: ABdhPJwd0My6g0/p2VDackzLNlgmHfem9X+YT7Fn94hUbHXQkAy3ycD6e8YE4Cy7HTTvZeIoOCqYL4Z43u8g7/a9qXo=
X-Received: by 2002:ab0:3049:: with SMTP id x9mr14116246ual.55.1636663003265; 
 Thu, 11 Nov 2021 12:36:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:2642:0:0:0:0:0 with HTTP; Thu, 11 Nov 2021 12:36:42
 -0800 (PST)
From: MRS Salem Chantal Lawrence <dericksunshine@gmail.com>
Date: Thu, 11 Nov 2021 12:36:42 -0800
Message-ID: <CAN7dtm2gBmLGRY5yhHR+_BdVavCBBPFALOskGAtiFeZy9fZHcA@mail.gmail.com>
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
Reply-To: salemchantal@mail.ee
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention

You have been compensated with the sum of 4.6 million dollars in this
United Nation the payment will be issue into Atm Visa Card and send to you
from the Bank we need your Address Passport and your whatsapp number

Contact This My WhatsApp Number for more Details (+1 (201)308-2233

THANKS
MRS Salem Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
