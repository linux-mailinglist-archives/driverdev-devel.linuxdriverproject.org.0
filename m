Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D142214CB
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 21:02:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47F678B68C;
	Wed, 15 Jul 2020 19:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NDWBhzPkDuyU; Wed, 15 Jul 2020 19:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F08F8B5D2;
	Wed, 15 Jul 2020 19:02:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A81001BF380
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 19:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9F56D8B554
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 19:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgIH7643gIof for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 19:01:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from host.itspace.be (host.itspace.be [79.137.66.94])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F0BD8B546
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 19:01:57 +0000 (UTC)
Received: from [142.147.97.153] (unknown [142.147.97.153])
 by host.itspace.be (Postfix) with ESMTPA id 44197CA9788
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 20:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deficharleroi.eu;
 s=default; t=1594837122;
 bh=nVteHk+AuHfS9z6pAQGdwUvA6aYOMRPgWfP7dTg5V9c=; l=2367;
 h=Subject:To:From;
 b=Dke9FLoZq8GW7b9reP1HTcm6wXKrJFTgv4Q16H45O3vYfSE/XwFcuI4Bg4cVuENG2
 YlQWNEYT23qNq0z5ghqvxNtDz5hw5HYSDRnmus05GAQdYMVt9Px0ly6GkkLg3Ljan3
 ErNcYuQA6x67z3Sd1y5OA6sbKqGk8Jn2Qv8CFdLY=
Authentication-Results: host.itspace.be;
 spf=pass (sender IP is 142.147.97.153) smtp.mailfrom=jgillard@deficharleroi.eu
 smtp.helo=[142.147.97.153]
Received-SPF: pass (host.itspace.be: connection is authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello
To: devel@driverdev.osuosl.org
From: "Smith Kabila" <jgillard@deficharleroi.eu>
Date: Wed, 15 Jul 2020 11:18:39 -0700
Message-Id: <20200715190158.9F56D8B554@whitealder.osuosl.org>
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
Reply-To: smithmai785@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day,
 
Please permit me the time and chance to introduce myself to you. My name is Smith Kabila from Sudan in Africa, I am 16yrs of age(Male), but am presently staying in Ghana. My late father Michael Kabila was the owner of the diamond-mining co-operation company in Sudan. As a result of this, he was killed by the rebels in my country because of the political unrest in my country. Before his death, he deposited a consignment that contained, AU Gold Dust, which quantity is 950kg and a huge sum of money, in a security company in London-England, but my late father deposited it as family belongings and that was the information he told my mother as at the time of deposit, not until about one year after his death that we found out in a secret diary the true contents and the documents showing the deposit of the consignments in the security company. Like my beloved mother narrated to me, my uncles had taken over all that my father left for me over there in Sudan and I cannot go back there because 
 of the current war.
 
Just two weeks ago the security company was able to contact me and said my uncles reached out to them and trying to make claim but was declined because I am the next of kin. They are trying to take advantage of me as the only child because my mother and father got separated while I was very young.
 
Also during the time of deposit, my father stated in the documents that the consignment should only be released to me when I am 16yrs but I must present a foreign investor/partner who can stand as my guardian to help me invest the money in any meaningful/lucrative business in your country and also help me come over to further my education.
 
Right now I am not safe here and due to my bad health condition, I cannot handle this all by myself. This is why I came to seek for a trust person to stand as my foreign beneficiary/partner to receive this for me and help me invest in any profitable business in your country because this is my only hope and source of livelihood. I was lucky to have you among the list of good people out there on the humanitarian child support game which I participated as the winner.
 
I am anxiously waiting to hear from you so that I can forward all documentation and tell you how to make claim.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
