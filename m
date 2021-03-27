Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 155C334B60C
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Mar 2021 11:19:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 799D460DA3;
	Sat, 27 Mar 2021 10:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pu7cp2ceeulD; Sat, 27 Mar 2021 10:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C973C606E1;
	Sat, 27 Mar 2021 10:19:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AEFF1BF4D7
 for <devel@linuxdriverproject.org>; Sat, 27 Mar 2021 10:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A2D040109
 for <devel@linuxdriverproject.org>; Sat, 27 Mar 2021 10:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=apaari.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ja6RULGqzR9M for <devel@linuxdriverproject.org>;
 Sat, 27 Mar 2021 10:19:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dadi999.hostingmantra.com (dadi999.hostingmantra.com
 [5.77.36.38]) by smtp2.osuosl.org (Postfix) with ESMTPS id B6CFF400A9
 for <devel@driverdev.osuosl.org>; Sat, 27 Mar 2021 10:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=apaari.org; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Subject:From:Reply-To:Sender:Message-ID:To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ZjZRI9qYKH6UcE6nr+w49/UKRE3l+UQyMZpVN9g1GM=; b=A5re0HUK5rte/LJlsX6wE/w8py
 y0DHrSqKtrQr38da/oBidTlVcYxUSi6oSNJSgJzxOgAGC+SjqNS5wQC61IUDJ1UaVDZ9dw7vMtjrP
 hA7aMLrA8Ok+bwX6Jr+0PkvFcMoZ33zfkIJHGgHNvFL0L0aoBqZjgX5tkdp0spTe87SyxXFYmcBxb
 SHpSutpK8hOAj9iZIPtlLhCLyY64H0xk9ByEcWIuWEcHa9vabeXw2c5mg1Z4m6XW9qia9L3zo6Zwc
 XxA4cxXRBqNQIeyXIHKz/uiamY74eEVZj30sCsH6Kw0eAwA1zrI/iAo3iS1zWQ73o4o/UjP1AANaz
 wMUXS5+w==;
Received: from [157.55.86.197] (port=56099 helo=User)
 by dadi999.hostingmantra.com with esmtpa (Exim 4.94)
 (envelope-from <apaari@apaari.org>)
 id 1lQ62N-000zbZ-HK; Sat, 27 Mar 2021 15:49:23 +0530
From: "Ms. Reem Al-Hashimi"<apaari@apaari.org>
Subject: Partner with me
Date: Sat, 27 Mar 2021 10:19:23 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - dadi999.hostingmantra.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - apaari.org
X-Get-Message-Sender-Via: dadi999.hostingmantra.com: authenticated_id:
 apaari@apaari.org
X-Authenticated-Sender: dadi999.hostingmantra.com: apaari@apaari.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-Id: <20210327101946.3A2D040109@smtp2.osuosl.org>
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
Reply-To: reem.alhashimi@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Sir,

My name is Reem E. Al-Hashimi, the Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020 Committee. I am writing to you to stand as my partner to receive my share of gratification from foreign companies whom I helped during the bidding exercise towards the Dubai World Expo 2020 Committee and also i want to use this funds to assist Coronavirus Symptoms and Causes.

Am a single Arab women and serving as a minister, there is a limit to my personal income and investment level and  For this reason, I cannot receive such a huge sum back to my country or my personal account, so an agreement was reached with the foreign companies to direct the gratifications to an open beneficiary account with a financial institution where it will be possible for me to instruct further transfer of the fund to a third party account for investment purpose which is the reason i contacted you to receive the fund as my partner for investment in your country.

The amount is valued at Euro 47,745,533.00 with a financial institution waiting my instruction for further transfer to a destination account as soon as I have your information indicating interest to receive and invest the fund, I will compensate you with 30% of the total amount and you will also get benefit from the investment.

If you can handle the fund in a good investment.Reply to: rrrmhashimi2021@naver.com


Regards,
Ms. Reem 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
