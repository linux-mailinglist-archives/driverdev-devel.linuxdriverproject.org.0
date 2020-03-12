Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42779182F34
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 12:31:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD35989481;
	Thu, 12 Mar 2020 11:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AP6VMvyzFORu; Thu, 12 Mar 2020 11:31:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 041D089450;
	Thu, 12 Mar 2020 11:31:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2962A1BF41C
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 11:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23FDD88B21
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 11:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wzBypuijD1e for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 11:31:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic301-31.consmr.mail.ne1.yahoo.com
 (sonic301-31.consmr.mail.ne1.yahoo.com [66.163.184.200])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E00F188AF4
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 11:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s2048;
 t=1584012689; bh=8xpm+cacAfAnFCbwSdgMceaBJxowNWaFZvEVU/zxgKw=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=t7V1pT8BaMX20gjsRcRBnasGC3orG8ZhJD0cvnFWT7knVIToCvh/B8tJlFex61ew7K39wLujohuKxwfSti+I+lLUvCeQcnfl9FrMmhJ3cyApp8UFAC7bKvGbwWFO6t2x927xuostrWBIkTxVoQuop77velJuSlhzb6h/L61/AumMwwvk7PIubijxdA865+SS8iF/f+43nM934M6DOE9on9HyG6MvhcRkU9jctXMmHe5Sjcvsay0Pu2ibtgnesrCBrDbSgsZ16ihWL9rSXDxthqrFtSm+SgQB/t97FspiAGdnDy2kOKusqR5FtUbQwpF/JDQ/cbGKaNAH24C8so1xEg==
X-YMail-OSG: xEcFF6cVM1khonkntVP74NkwkBEYOYzqc4G_bHEc9iGAAY.uAxYNCGmRXhpcUrU
 vFKnILjTRp5MeGWGTbi_QUday3bE2490OyExRz72tT7wTSiv5t58ClVWrGkbfQI5Ld.o0gDV_y3G
 k_M5fgiEXLBZ8JI2FAWtb97Dg4PfBtHqMTcxdX6U0XFTS4C7hz8yKIYHD.zN0eeZIGgxRqPf2lNi
 cdmAQvDDxWfarXzHOLRbupHQjlrFq4bSv1fjlXUe327F.R3iZgj.Z.o4VKbrpfg3fQMs.R_uW_GC
 xMqXiTiqPrLgb106hIMKKB1hoAaW_dsPaVpgmToGQ.IYKfgILMe3LZ5zJFJrvqi6er9ENBebAg1k
 9_.skRQSFUdYmgVgDBTj7QHubfJI5LkOHuqEV5EjKvLJwHIHrAAlPsl7MDc2PhLuxK_Mel5IpsC1
 dypNE26sXslRLTl1YWeFk5HymU08cNiyDg4TQc5o1XspLjwGfOl5DuOePbTphWzcJxDKoCFqylk0
 jKgVha9qISXTo_YMq46Dt.xjxhIUhHdmBpZblcc1kZ1uxh__3S4gh7E0aH8Xxa9O_ewQMx0TTrpu
 H9i3yOk4dAgbSxbM2zMdJqIfR3uUUlT4J8U_qpwLfB2mxARK_edHyyF8OVFK5Np0Uili66s6y.l5
 T_502RtScNCZ6TU3Dfrpuqky.fFAzB6JtbljQIdUBpGW8DKtkaxpMsc1SDNDjgp82KuCTgpvUyoZ
 9VhPHECdYKxXvm6Jgu5p5Ibj3cA4pb04azzHOpEXGko4pMqIw8JuksGzbNCRuPRGee03x7EzLyhG
 C6gK6Z7yOTFJuDNnhjdsdNH8yDXB6lztrbTyDrcQ0LS3kGe1XF0zDA8q6H.y8ZRu1B0I2e6yuPoP
 bAep5wqO8sPz1EgfHgU8wqKW59wxztR8wJO7nO94kGk1PhSYicF_tF5lEmHgKlov880g8izO1hku
 WgjmeBNFUo81I71se5c.CeduXmuoBMmFqxsWjFtpNEIITkp3viM7ji4k93QAVOFBcZXTPBmjHcPg
 TdAxJCSMibC2MJLtHpGdr.GyeezG0GKO5AdiZF8QBfe1Lw074hueY8SG59hNZIUPNSxW9qTmZGk5
 6VXrmeBGeaUS9wZpkwcmH2kOBqbj2vWFb4jW4iMJab5l1xgNRI6v_fNHPFaF6PacdCGtcHwCWt17
 rT9AawyaUkvSac_qVuQjwjTxvFHgddkZuABQX07kmrrsYQA8iBS18fidqlZ1.5XY.X55hejS8YLm
 C3tV7_KB2Xab_Y_NL0LF07LWxESh7hDAFwecuI9EJ0tBT5qA20TbPUNI2HSFULACQ93nOo8Csfcj
 p0gg-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Thu, 12 Mar 2020 11:31:29 +0000
Date: Thu, 12 Mar 2020 11:31:24 +0000 (UTC)
From: Cherif Titi <marko.flores@ymail.com>
Message-ID: <1357472395.690869.1584012684757@mail.yahoo.com>
Subject: My Dear
MIME-Version: 1.0
References: <1357472395.690869.1584012684757.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15342 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64; rv:73.0) Gecko/20100101 Firefox/73.0
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
Reply-To: cheriftiti268@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 My Dear

I am Miss cherif Titi,20 years old and the only daughter of my late parents Dr.Richard Tit. My father was a highly reputable real estate developer who operated in the capital city of Ivory coast during his days

It is sad to say that he passed away mysteriously in UK during one of his business trips abroad year 12th. JUNE 12, 2014. Though his sudden death, But God knows the truth! My mother died when I was just 4 years old,and since then my father took me so special Before his death on JUNE 12, 2014 he called his secretary who accompanied him to the hospital and told him that he has the sum of Nine million,five hundred thousand United State Dollars.(USD$9.500,000) left in bank

He further told him that he deposited the money in my name, and finally issued a written instruction to his lawyer whom he said is in possession of all the necessary legal documents to this fund

I am just 20 years old and a university undergraduate and really don't know what to do. Now I want an account overseas where I can transfer this funds. This is because I have suffered a lot of set backs as a result of incessant political crisis here in Ivory coast. The death of my father actually brought sorrow to my life

Dear, I am in a sincere desire of your humble assistance in this regards,Your suggestions and ideas will be highly regarded.


Now permit me to ask these few questions:

1. Can you honestly help me as your daughter

2. Can I completely trust you

3. What percentage of the total amount in question will be good for you after the money is in your account

Please contact me with my private email cheriftiti268@yahoo.com


Please,Consider this and get back to me as soon as possible.


My sincere regards,
Mrs.cherif TITI
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
