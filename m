Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D462B418A6D
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Sep 2021 20:00:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4238402C9;
	Sun, 26 Sep 2021 18:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id weAJCdoxBENJ; Sun, 26 Sep 2021 18:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0ED5D402BF;
	Sun, 26 Sep 2021 18:00:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6A5F1BF3CD
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 18:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C264C4011A
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 18:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=chcc.health
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VZ8zjcUuGaBs for <devel@linuxdriverproject.org>;
 Sun, 26 Sep 2021 18:00:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.chcc.health (202-128-26-74.saipan.com [202.128.26.74])
 by smtp2.osuosl.org (Postfix) with SMTP id B9853400E6
 for <devel@driverdev.osuosl.org>; Sun, 26 Sep 2021 18:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.chcc.health (Postfix) with ESMTP id E4C30FCA840;
 Sun, 26 Sep 2021 18:05:42 +1000 (ChST)
Received: from mail.chcc.health ([127.0.0.1])
 by localhost (mail.chcc.health [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id UaSxhOTW3RtO; Sun, 26 Sep 2021 18:05:42 +1000 (ChST)
Received: from localhost (localhost [127.0.0.1])
 by mail.chcc.health (Postfix) with ESMTP id CCE1CFCA498;
 Sun, 26 Sep 2021 18:05:11 +1000 (ChST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.chcc.health CCE1CFCA498
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chcc.health;
 s=040CBB8E-0612-11EB-BEC8-E1D98334772F; t=1632643511;
 bh=zL0K4ba0fAtyhkJSRfGjLwV1eXhcwDspLDH16HGZaTw=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=l7FxNWWF2NtQWbSnfujD/AQefSjbMSf5NTsqTjAl9KKHlrC9G9QM/668xhb+4apn4
 kzjiJ2C12wjW4fOMwQ280Ki8ljORbjoOsCjvPkF6WfQ0x3yqA39flkyahxXaNgWyDK
 y3EqNFX4NPN8TEImRhl7+zPyJb5eyr0iS4bU0Uf20QbsVaNm9cdOjIm0d/nfC0dqTg
 rcC3WyDSQgy7ppaFJ7QUEJOxh0Mb4i0R35ksc7453RZpWba/TXrN0lYfsb3wr3n84L
 pivq+QelE4vkN9ln6NlQuqo6QpdSB1/PbKRUESc3LQn+I9SFNB+2PuF7yXBGMNRAXL
 q8MbKMZiXWIdw==
X-Virus-Scanned: amavisd-new at chcc.health
Received: from mail.chcc.health ([127.0.0.1])
 by localhost (mail.chcc.health [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id EvS8FEmdTzs8; Sun, 26 Sep 2021 18:05:11 +1000 (ChST)
Received: from info.54xpti1o15rurlhs03whlwys2c.mx.internal.cloudapp.net
 (unknown [40.74.137.18])
 by mail.chcc.health (Postfix) with ESMTPSA id 07666FCA5E5;
 Sun, 26 Sep 2021 18:03:01 +1000 (ChST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Thanks For Understanding??
To: Recipients <immunization@chcc.health>
From: "Ms. Reem Al-Hashimi" <immunization@chcc.health>
Date: Sun, 26 Sep 2021 08:02:47 +0000
Message-Id: <20210926080302.07666FCA5E5@mail.chcc.health>
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
