Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDCE4185CA
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Sep 2021 05:06:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 704F440288;
	Sun, 26 Sep 2021 03:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LyTrAZs1-Lw7; Sun, 26 Sep 2021 03:06:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A986D40218;
	Sun, 26 Sep 2021 03:06:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6071BF3E5
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 03:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4486782456
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 03:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=chcc.health
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDo0k5DrjtIl for <devel@linuxdriverproject.org>;
 Sun, 26 Sep 2021 03:06:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.chcc.health (202-128-26-74.saipan.com [202.128.26.74])
 by smtp1.osuosl.org (Postfix) with SMTP id 865F282446
 for <devel@driverdev.osuosl.org>; Sun, 26 Sep 2021 03:06:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.chcc.health (Postfix) with ESMTP id CE3581009D0C;
 Sun, 26 Sep 2021 07:01:54 +1000 (ChST)
Received: from mail.chcc.health ([127.0.0.1])
 by localhost (mail.chcc.health [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id t2fDuvoWAjsa; Sun, 26 Sep 2021 07:01:54 +1000 (ChST)
Received: from localhost (localhost [127.0.0.1])
 by mail.chcc.health (Postfix) with ESMTP id 7DECF1009D77;
 Sun, 26 Sep 2021 07:01:54 +1000 (ChST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.chcc.health 7DECF1009D77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chcc.health;
 s=040CBB8E-0612-11EB-BEC8-E1D98334772F; t=1632603714;
 bh=zL0K4ba0fAtyhkJSRfGjLwV1eXhcwDspLDH16HGZaTw=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=IG8ONMYDb/UIxyEssj0zc8TffGl/2veZcPjuR0IKScMncuMJZiUpTyOc+TtbNwvQM
 Zc7DH6P8Zq58+oypXSm/ZIIGereX4PTWeYwhMvSxPvyffRQX6RuSKeBvKwBIixPq7B
 e9dvtjoJjcphMzDTk+SEVH0UG2mg6YHjLoPf/7l59L/gQxbusm4ASXzeNb1TrY2k2Y
 wQkVmVMoZIcQpMZrjUMHrONizTcZy9LVBiT9P2AT9qkRVXn2MRI/hU+XdLCy6xgxth
 lraAfyj7/ltAcnJofBfktF2pKT2UffotkQfwK7LAufk+WI/vR6V2hUcUCMLO/3lSXZ
 DNhpxcvdOd+9w==
X-Virus-Scanned: amavisd-new at chcc.health
Received: from mail.chcc.health ([127.0.0.1])
 by localhost (mail.chcc.health [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id zrL4B_zs25aj; Sun, 26 Sep 2021 07:01:54 +1000 (ChST)
Received: from info.54xpti1o15rurlhs03whlwys2c.mx.internal.cloudapp.net
 (unknown [40.74.137.18])
 by mail.chcc.health (Postfix) with ESMTPSA id 9B86C1009BB4;
 Sun, 26 Sep 2021 07:01:49 +1000 (ChST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Thanks For Understanding
To: Recipients <immunization@chcc.health>
From: "Ms. Reem Al-Hashimi" <immunization@chcc.health>
Date: Sat, 25 Sep 2021 21:01:42 +0000
Message-Id: <20210925210149.9B86C1009BB4@mail.chcc.health>
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
