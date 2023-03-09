Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D40996B21AC
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Mar 2023 11:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E902F82090;
	Thu,  9 Mar 2023 10:38:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E902F82090
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9xXJvF8Gg4OI; Thu,  9 Mar 2023 10:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF07382074;
	Thu,  9 Mar 2023 10:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF07382074
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C04271BF3D6
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 10:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A391E60750
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 10:38:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A391E60750
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bcZb2OEBeFIC for <devel@linuxdriverproject.org>;
 Thu,  9 Mar 2023 10:38:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF2A9605B0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF2A9605B0
 for <devel@driverdev.osuosl.org>; Thu,  9 Mar 2023 10:38:52 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id j11so5108700edq.4
 for <devel@driverdev.osuosl.org>; Thu, 09 Mar 2023 02:38:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678358331;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=f5x+3xA/pzjrb+tM4XYd/WINkB3u++ZnB2WUBZBEBSY=;
 b=JMCUIFQ2yKj4dqmAtpxqcKg7aiNwWifwyEN9skp9sFC74IlsgrMY5NW/j9o4o6x55u
 WtRHtIxrcOO6aEnMoxVwmlDiKyi7h7KjcByAqIua/YtUDr1wdou+kddfejkJPT43OGId
 D8Z7lOhtuSpKAd+MsDa2aahdNcD/YosXBrWOvmXvaNf2KkTkujzoXovZHHW1LyafnnTp
 m5wYrkW9SD1gt4nIqG4gTTC3pwBmEIy1Sh6QM/4x9rLsxWijRjD2cSKjQZO7hRnjtbF/
 QQLyBqEq4u/lXw1cSQFidAPhPZ7RMgQm/otCmigRAn5AsnhPP9asF5Q42rGoXKlGw8V4
 DHhw==
X-Gm-Message-State: AO0yUKVvgEe0hqBKVjOnRZlb/m48dUgDKjNW7R848Olbward/F0bvner
 g/Jow7fOSrhhxxQ8lhGn8sEOXkMLtpN/A4Zl+VU=
X-Google-Smtp-Source: AK7set+hlmqs3ii4sPDBFP/KpxZPqVfTKBsSgFNcZGAwpYOeqE3dqkh0em5k8q5wAXX45ifkvZfUUQu1XDWvNgVifmE=
X-Received: by 2002:a17:907:33c1:b0:8b0:fbd5:2145 with SMTP id
 zk1-20020a17090733c100b008b0fbd52145mr10941171ejb.15.1678358330595; Thu, 09
 Mar 2023 02:38:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:db0b:b0:917:33bf:e3df with HTTP; Thu, 9 Mar 2023
 02:38:29 -0800 (PST)
From: Rehama Hassan <fleon1697@gmail.com>
Date: Thu, 9 Mar 2023 02:38:29 -0800
Message-ID: <CAM+7t5c=tTOtNFFG5ZdFRphP7srPXy4BF11y7Y0z2CGfQpi3zQ@mail.gmail.com>
Subject: From: Dr Rhama Hassan
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678358331;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f5x+3xA/pzjrb+tM4XYd/WINkB3u++ZnB2WUBZBEBSY=;
 b=WU6BDewxlpbF5Yjg5rBnu/vKNQ3Wn10OPkUtIcBNIqYGd7QnOMUYVFUNN//BMPdU2d
 R9yBrNuRRwfzuOl6CgOTrFtSwOWjll95sPCz2wbeT/UKtiDDwOuV+rLgM+ZGLXuHMaJE
 HGwR9c0NbihBSJYTluiqNSQNKFpL4tDEZHMnbBmzmG2awUr9B0h3MtQ5d0A0ldttmufw
 QtVixVbRBzJi8NPClS7DVBYpGjMDCijmrEJkATViy4npms/eHOSJLNbxhSOeP8mtZgXh
 F6nm1t4yv3rHK2IvEGXSiW1OKrdwWNRANhvU9TI3xOvlUAazMzsCHQ8Cuk/zp8ldwWXh
 svkQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=WU6BDewx
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
Reply-To: rhamahassacom@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
From: Dr Rhama DrwalL


Please read carefully,





This message might meet you in utmost surprise. However, it's just my


urgent need for foreign partner that made me contact you for this


transaction. I got your contact from yahoo tourist search while I was


searching for a foreign partner. I am assured of your capability and


reliability to champion this business opportunity when I prayed about you.





I am a banker by profession in Burkina-Faso, West Africa and currently


holding the post of manager in account and auditing department in our


bank. I have the opportunity of transferring the left over funds ($5.5


Million Dollars) belonging to our deceased customer who died along


with his entire family in a plane crash





Hence; I am inviting you for a business deal where this money can be


shared between us in the ratio of 60/40 if you agree to my business


proposal. Further details of the transfer will be forwarded to you as


soon as I receive your return mail as soon as you receive this letter.





Please indicate your willingness by sending the below information for


more clarification and easy communication. For more details, Contact


me for more details.





For the Expenses, I will be the one to take care of the expenses, if


the bank asks


you for any money, do not pay, inform me in time i will pay it.


I will take care of  expenses.





(1) YOUR FULL NAME...


(2) YOUR CONTACT ADDRESS....


(3) YOUR PRIVATE PHONE N0..........


(4) YOUR COUNTRY OF ORIGIN..................


(5) YOUR OCCUPATION.........................





Trusting to hear from you immediately.


Thanks & Best Regards,

Dr Rhama DrwalL
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
