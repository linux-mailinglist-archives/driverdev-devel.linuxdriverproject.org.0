Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB7D5507A0
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jun 2022 02:11:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18CA34019F;
	Sun, 19 Jun 2022 00:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18CA34019F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NK8gJzk2TKQN; Sun, 19 Jun 2022 00:11:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCFB2400FF;
	Sun, 19 Jun 2022 00:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCFB2400FF
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DAF91BF990
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jun 2022 00:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07959606CB
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jun 2022 00:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07959606CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHA5frXHoJai
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jun 2022 00:11:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE366605B7
Received: from mail.gifukenshi.or.jp (mx.gifukenshi.or.jp [202.69.113.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE366605B7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jun 2022 00:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.gifukenshi.or.jp (Postfix) with ESMTP id E27202923A0;
 Sun, 19 Jun 2022 08:40:04 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.gifukenshi.or.jp E27202923A0
X-Virus-Scanned: amavisd-new at mail.gifukenshi.or.jp
Received: from mail.gifukenshi.or.jp ([127.0.0.1])
 by localhost (mail.gifukenshi.or.jp [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-FNf4GQPHe3; Sun, 19 Jun 2022 08:40:03 +0900 (JST)
Received: from User (unknown [172.25.0.254])
 by mail.gifukenshi.or.jp (Postfix) with SMTP id DF4AB285340;
 Sun, 19 Jun 2022 04:45:31 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.gifukenshi.or.jp DF4AB285340
From: "Reem"<sikacenter@gifukenshi.or.jp>
Subject: Money transfer
Date: Sat, 18 Jun 2022 19:45:34 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20220618194531.DF4AB285340@mail.gifukenshi.or.jp>
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gifukenshi.or.jp; 
 s=20220603; t=1655595605;
 bh=xdWSIjalhaqXlTNs2nsxl8h19Us5O+JjDnZIOmK9Isw=;
 h=Reply-To:From:Subject:Date:To:From;
 b=KbIM80rkzALNlmLpt8wPdS9ciGijpc/sjL3OceE4+g1PGGQTSdjJUOGJ6C8rtqV4G
 ryFUiN9gwbkP5jJ7JeJT0W3TGU6yPJM3HrKGDqO9TMYkJfuSTOXIlSSJZJ2bibASMF
 5JgqxOLz5YjnMRtSUb7yTE0tefvICIFXK1m0yErU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=gifukenshi.or.jp header.i=@gifukenshi.or.jp
 header.a=rsa-sha256 header.s=20220603 header.b=KbIM80rk
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
Reply-To: reem2018@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Friend,

My name is Reem E. Al-Hashimi, the Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020 Committee. I am writing to you to stand as my partner to receive my share of gratification from foreign companies whom I helped during the bidding exercise towards the Dubai World Expo 2020 Committee and also I want to use this fund to assist Coronavirus Symptoms and Causes.
 
I am a single Arab woman and serving as a minister, and there is a limit to my personal income and investment level. For this reason, I cannot receive such a huge sum back to my country or my personal account, so an agreement was reached with the foreign companies to direct the gratifications to an open beneficiary account with a financial institution where it will be possible for me to instruct further transferrals of the fund to a third party account for investment purposes which is the reason I contacted you to receive the fund as my partner for investment in your country.
 
The amount is valued at 47,745,533 Euros with a financial institution waiting my instruction for further transferral to a destination account as soon as I have your information indicating interest to receive and invest the fund, I will compensate you with 30% of the total amount and you will also get benefit from the investment.
 
If you can handle the fund in a good investment, reply to this email only: reem.alhashimi@yandex.com

Best Regards,
Ms. Reem
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
