Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E3458A58F
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Aug 2022 07:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 095FD405AD;
	Fri,  5 Aug 2022 05:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 095FD405AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-yiI2euOAIR; Fri,  5 Aug 2022 05:11:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AED51400DA;
	Fri,  5 Aug 2022 05:11:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AED51400DA
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 021961BF383
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Aug 2022 05:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C995E41CB5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Aug 2022 05:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C995E41CB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CYcWBYk8mPG
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Aug 2022 05:11:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18C6A41C5A
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18C6A41C5A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Aug 2022 05:11:43 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id c24so2999822ejd.11
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 04 Aug 2022 22:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=lk9PywzVGJNVi9kw2R6rSvbxrZtKK7xTV4CIuELSYSs=;
 b=PlCnjaUebJiWSACvlowt/X7U4g+qvXGMmxEoBReIFWiGzupzUFcm4PJGStxZNOlhDX
 Uh1Nk50xBRAiJ3id/e6F/KCeNM/aAEVVCQKcikIftg2VhIMAcSG4da6XlA6HY/qcTCLO
 yGlfWGt9zYAe1JotMx6l02V0WNSPitHYOVlPa3WNGFDBPLyx4Ph3gLAsh9kU+/wQRB+C
 B2iI+SDGrHLG/bGnalGXHdmlj75ArsLCP7axQJX1ViZy3KWC/ygXjgO1SQtDnRSyOGdZ
 kprr3xV7rvP9aO5sgLLsR7x/oAyTPmgM6n38usfaa1Nqb9FKM459k6AD89ugu9QaCp40
 ATsQ==
X-Gm-Message-State: ACgBeo0EArOll9XckAYeFr5jOgy0YGMib2aSThxQGDHyfcotCsiPVWyA
 46WCo1o+cez3YxmV2qzCQjItutNEclzpz7eQUpY=
X-Google-Smtp-Source: AA6agR7fmeQg7wuyBxYfxlsflQC1Tm9EVlXdse6PW2EVE79TAm4DLYfeE7jvPCT0UZDt4Bcu2MlMcR1x1fYJ9bue8fo=
X-Received: by 2002:a17:907:96a4:b0:72b:647e:30fd with SMTP id
 hd36-20020a17090796a400b0072b647e30fdmr3966159ejc.723.1659676300902; Thu, 04
 Aug 2022 22:11:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:6955:b0:730:6d45:989f with HTTP; Thu, 4 Aug 2022
 22:11:39 -0700 (PDT)
From: "Mr.James Donald" <mrabubakarimam@gmail.com>
Date: Thu, 4 Aug 2022 22:11:39 -0700
Message-ID: <CAC9Ejff28DvMCOYtwBBmVGW31-UiRzgb2osmoy1FcrMt32GG1A@mail.gmail.com>
Subject: Re: Business Partnership
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
 bh=lk9PywzVGJNVi9kw2R6rSvbxrZtKK7xTV4CIuELSYSs=;
 b=obd4KmgbTL/vnXke52Yh+4mdU205hBejkRlZiCq0JVxDCICGo54soMDJPJre3iurK9
 M7E7M0i+QLekAw1P+HDFZ0CHYoVYgEpxXnr8VEIlDLjga3RmBOa+83/Kp3hJQhzsZhMK
 3+e23ehisi1AEFTGUsBZ6ZxLfptE0176A6Y8sA9/VWxButAW7TkwF3QgHabkFo3JbdnZ
 HDJqT5NfjyZGC9U0oh3YDJ1AiIiEQVTbyCL5328KTqpOrr0qdwiP2Mp7yEM/IvrSFSyk
 mEtDk4ob4qVcL8xT/vxnmsL1FxvM7uN4/6Bkc2tnRwDpy1ISAR3hdphovnnZpIR1/24x
 tYwA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=obd4Kmgb
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
Reply-To: jamesdonalda777@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Sir/ Madam

My name is James Donald  I am  from Burkina Faso a  minister here  is
interested to invest in your country , he confide on me to look for
trust worthy  person  who is capable to partner with him to realize
his investment  plan with  (  USD. $35.5 Million  )

He has an investment interest in Mining, Exotic Properties for
Commercial/Residential and Development Properties, Hotels and any
other viable investment opportunities in your country based on your
recommendation, will be highly welcomed.

Please if you are willing Kindly Reply to me In  my Confidential
Email Address  ( jamesdonalda777@gmail.com ) For The Confidentiality
Of This  Proposal.I will Give You The Complete Details How We Shall
Proceed.

1.Full name:
2.Country:
3.Private cell phone:
4.Occupation:
5. Age

Your co-operation is highly needed to achieve this investment project.

 I wait for your prompt response.

May Almighty God Bless You!
Thanks  and  best  regards,
Mr.James Donald
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
