Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 425C1550835
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jun 2022 06:03:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C12C828A9;
	Sun, 19 Jun 2022 04:03:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C12C828A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ay4ChyB_9Q4y; Sun, 19 Jun 2022 04:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADB17827AA;
	Sun, 19 Jun 2022 04:03:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADB17827AA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06A431BF9A4
 for <devel@linuxdriverproject.org>; Sun, 19 Jun 2022 04:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB04741581
 for <devel@linuxdriverproject.org>; Sun, 19 Jun 2022 04:03:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB04741581
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SzX5or3tctRl for <devel@linuxdriverproject.org>;
 Sun, 19 Jun 2022 04:03:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B7F841578
Received: from mail.gifukenshi.or.jp (mx.gifukenshi.or.jp [202.69.113.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B7F841578
 for <devel@driverdev.osuosl.org>; Sun, 19 Jun 2022 04:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.gifukenshi.or.jp (Postfix) with ESMTP id BA4C0284D8F;
 Sun, 19 Jun 2022 08:19:43 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.gifukenshi.or.jp BA4C0284D8F
X-Virus-Scanned: amavisd-new at mail.gifukenshi.or.jp
Received: from mail.gifukenshi.or.jp ([127.0.0.1])
 by localhost (mail.gifukenshi.or.jp [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HIcF-8R8rthL; Sun, 19 Jun 2022 08:19:42 +0900 (JST)
Received: from User (unknown [172.25.0.254])
 by mail.gifukenshi.or.jp (Postfix) with SMTP id 02377284D90;
 Sun, 19 Jun 2022 04:40:24 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.gifukenshi.or.jp 02377284D90
From: "Reem"<sikacenter@gifukenshi.or.jp>
Subject: Money transfer
Date: Sat, 18 Jun 2022 19:40:29 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20220618194025.02377284D90@mail.gifukenshi.or.jp>
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gifukenshi.or.jp; 
 s=20220603; t=1655594383;
 bh=xdWSIjalhaqXlTNs2nsxl8h19Us5O+JjDnZIOmK9Isw=;
 h=Reply-To:From:Subject:Date:To:From;
 b=EdSA66cXKgWD3uwlLRrjEaNQ+cF3F+yKU9wVPX5A/RLLtJ+Nim0UpePb7heCKMyfE
 2GY6R+WFuQseqi9VO3SSMbCCcyaRO/L1N1Aee2WjVUnl/trumEoh9kGXj9rzkKvNzL
 l4W2jD/+IhLiGHslvXD+leljeMTdHPGC0LkyhSsA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=gifukenshi.or.jp header.i=@gifukenshi.or.jp
 header.a=rsa-sha256 header.s=20220603 header.b=EdSA66cX
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
