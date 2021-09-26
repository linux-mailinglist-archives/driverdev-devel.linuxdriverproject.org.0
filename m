Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79844418A6E
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Sep 2021 20:01:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C410606DA;
	Sun, 26 Sep 2021 18:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ID-CSFN6z0GJ; Sun, 26 Sep 2021 18:01:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C623606BD;
	Sun, 26 Sep 2021 18:01:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C98C1BF3CD
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 18:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CC22402CE
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 18:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=chcc.health
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SqrryxgnfTcB for <devel@linuxdriverproject.org>;
 Sun, 26 Sep 2021 18:00:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.chcc.health (202-128-26-74.saipan.com [202.128.26.74])
 by smtp4.osuosl.org (Postfix) with SMTP id 5821B402CB
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 18:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.chcc.health (Postfix) with ESMTP id 8D407FCA374;
 Sun, 26 Sep 2021 18:05:50 +1000 (ChST)
Received: from mail.chcc.health ([127.0.0.1])
 by localhost (mail.chcc.health [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 5mwFvIAYXs-K; Sun, 26 Sep 2021 18:05:50 +1000 (ChST)
Received: from localhost (localhost [127.0.0.1])
 by mail.chcc.health (Postfix) with ESMTP id C2846FCA5D6;
 Sun, 26 Sep 2021 18:04:37 +1000 (ChST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.chcc.health C2846FCA5D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chcc.health;
 s=040CBB8E-0612-11EB-BEC8-E1D98334772F; t=1632643477;
 bh=zL0K4ba0fAtyhkJSRfGjLwV1eXhcwDspLDH16HGZaTw=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=kdUUAW1bIbGeI5fusI2goGwDwxf03G5Z0qMd80OEh88PMWrJhs5LeO7aEOOHVNnDT
 PiIsIpoW5BcC4YirRKYpCGuwKqGXxtbqW27gAM5zF6AcLhZKOpVRdWqI88vTsP7CiL
 pDPG6d8bnE6+jTsDjWNC6WnYqdwruQBeMXaiVuOhERWdo6JaTE0Z3oK9j9biTdoLk2
 RtYnAIz8JzP++MV6iYPMK6xS/GQt7GQMCsnYw0voSNocpOw4Wz6hpwe/YSZqDxGp30
 5uyMhrA+OPJwyhasucWjwJDv6ZMymzIQG+lQOvHvZFCDGeTWNv8mvJVpm5j4+Qjcd9
 uDDzeqJLyWmDg==
X-Virus-Scanned: amavisd-new at chcc.health
Received: from mail.chcc.health ([127.0.0.1])
 by localhost (mail.chcc.health [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id mna8ijc94lbk; Sun, 26 Sep 2021 18:04:37 +1000 (ChST)
Received: from info.54xpti1o15rurlhs03whlwys2c.mx.internal.cloudapp.net
 (unknown [40.74.137.18])
 by mail.chcc.health (Postfix) with ESMTPSA id 3E6E9FCA47B;
 Sun, 26 Sep 2021 18:03:02 +1000 (ChST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Thanks For Understanding??
To: Recipients <immunization@chcc.health>
From: "Ms. Reem Al-Hashimi" <immunization@chcc.health>
Date: Sun, 26 Sep 2021 08:02:48 +0000
Message-Id: <20210926080302.3E6E9FCA47B@mail.chcc.health>
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
Reply-To: remmhashimi@kakao.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Sir/Ma,

My name is Reem E. A, the Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020 Committee. I am writing to you to stand as my partner to receive my share of gratification from foreign companies whom I helped during the bidding exercise towards the Dubai World Expo 2020 Committee and also i want to use this funds to assist Coronavirus Symptoms and Causes.

I"m serving as a minister, there is a limit to my personal income and investment level and  For this reason, I cannot receive such a huge sum back to my country or my personal account, so an agreement was reached with the foreign companies to direct the gratifications to an open beneficiary account with a financial institution where it will be possible for me to instruct further transfer of the fund to a third party account for investment purpose which is the reason i contacted you to receive the fund as my partner for investment in your country.

The amount is valued at Euro 47,745,533.00 with a financial institution waiting my instruction for further transfer to a destination account as soon as I have your information indicating interest to receive and invest the fund, I will compensate you with 30% of the total amount and you will also get benefit from the investment.


If you can handle the fund in a good investment.Reply to: reeninvestor111@kakao.com

Regards,
Reem

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
