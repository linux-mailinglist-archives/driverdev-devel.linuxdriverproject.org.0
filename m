Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 625C3169831
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 16:03:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A6FE85487;
	Sun, 23 Feb 2020 15:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CfB1sCRGpChT; Sun, 23 Feb 2020 15:02:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A68F584ABB;
	Sun, 23 Feb 2020 15:02:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23E401BF414
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 15:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20AC9849B7
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 15:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rxiH3p9cZvWS for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 15:02:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic310-14.consmr.mail.bf2.yahoo.com
 (sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA85C84993
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 15:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1582470171; bh=vdONypa+pmkSCxMpJ481zxWsfmYXdIIKq3bhYsM38cE=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=H/7Vjt1gQx4qncAfUY9k+o1Pz4l0Q95b2jqysIYlruXaqxlHKQhKcipPTSd025nw4jgUqmQJ9F/Wf7QAYBGQ4+lx92y2BPRKCIeCD078uot8OhaYonsnbk2mslwV8cDMBHih12mI0junt7QJE5rvCyToqiEz5zILReqMjyG37yeC3XqqnI8DHA796F+QVtEktvqVV97PCin4fEXJJFd/U8XsexfLNAu/jD3tpNp28zl0+ATGt2whzKjuxacPqeXY+JpTdWkxUmep70dmO4m+dAVJfTsfNJ/rJfzjdENXV9hwIdqXkiOBmUr7Ub4zAmSZnVSDOjSt5qi0D/v5wDe9Fg==
X-YMail-OSG: ZPSxsQEVM1nSY9bt2DUGZs4BZKTc.4qSw18QyHe50l2mnZS_GZPfWPsRTMZz2Az
 _gDvIdUv1WMuMXOwdrZP.NpTmhnZ4mWgnwyy9kmaAH10vtJ3X629s98bTxjUPyRQ0vcgLocydSYt
 LlVg3wW65G1Wuds8ED02_vYrMzsZUzNDQfK0yiplOyK9EONTZZAQX.t.e39tETUGI7clzuNlQLpC
 t5MGOwG6Icw8BA1GhoMWhbdeJtZywAmN1CU3UlcSn0JRndSyuZ1ZFy8eqdudaTFAcN5ht7eAGd.m
 2PyKPJQ1OXHS7_oV1CN1Zbt.48oll4x4AC5wVfZDmOk.vaBMNWaTDz2zNtSy9jWUp1KFey6E0TFm
 JFYfxsJC.lLymu21XZrTNK9jtKL3C_RyF95zrhy4q2qpuX6lo_22RfnQTxK8_sHHczHNmY5MVZVk
 fCk.WUKJrLf.iSbDKGuP1sMJlfx1TmyvkDhEeIU91Gw.WKAMz_L9SqKCGnZcw4wTPljl5STesUTK
 IN1tVovtZfZiyP0yVs8dtNl.BU6YPk4YBx2c_W35gMo0LtNplHFEIfnvTJBfr7WnVferwOgiNpgq
 W7GnUyh6yfzasb0JLuRRaAcGbI2QrJxldffLnmPg3OxGYLYjydhCr_E9JGpTxf3Gr3Ef1XjDJrJA
 I7kpNwIaxdkCeOHSR12_LzcGxJFwe4.2JfGMmACPXQkYDR8Il.p5MhbgQonDmmE4n1IiuBvmM2Sk
 3j6XRX0r6Oy5bYoWalN07MdcqvMooYdg.t9_UY9X1ERGbk6kHdo6wesDNgkIrnyj9qaSGNuLIsjN
 pZiBTMkqtKhr7qkmh9p9M8wltMV.r.RUEN7n8TDvlDMInmcgnoud0zQch5J63NF6dB9Ikh2zAdup
 B4gGbtrJjIfTIQoCwUt9.NT7acrYkQHb_sJJfRHbYIo1DpAGCIEJxlx4zIdrpYrIojQaDkxUPqfh
 s7AKasIk8USthmbAKn7cfqSGmi1Q0qI7lqE7nM3KlVzwrYlLZJZuhNtQS3mqzknFAc.RF4YYc.YW
 3VJZ9FRd6kud5cMYDPbPxS5HRRjGGg76Gz58q0CGXGNGQHxQQ3NorMQRtGrNLpzj8PZmej6IiLb3
 cCl.Blg_JcUbV6qu.TJ_BPu222sSkbw7wl7xAAtJ.C4NlKoYdmK8vPr_jk9ZU2p9m.sD_e6hTGhS
 Pgr.TbWAZlJ_0Uulw29GZihuMzyDtKooNGOOMY0hejoKyY4Adru2hgcTbNLng1cDieDFkscNvtmK
 C14SCenEy6_U77bdtzxnaoTkWlUECbug0ZbLn3RhV8u2g0I2hjlfoFBJ7iSI_x9Y07jYN_N8t0cM
 FXQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.bf2.yahoo.com with HTTP; Sun, 23 Feb 2020 15:02:51 +0000
Date: Sun, 23 Feb 2020 15:02:47 +0000 (UTC)
From: Mrs Elodie Antoine <mrselodieantoine@gmail.com>
Message-ID: <1694302610.5061922.1582470167226@mail.yahoo.com>
Subject: Greetings From Mrs Elodie,
MIME-Version: 1.0
References: <1694302610.5061922.1582470167226.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15199 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:73.0) Gecko/20100101 Firefox/73.0
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
Reply-To: antoinm93@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Greetings From Mrs Elodie,

Calvary Greetings in the name of the LORD Almighty and Our LORD JESUS CHRIST the giver of every good thing. Good day,i know this letter will definitely come to you as a huge surprise, but I implore you to take the time to go through it carefully as the decision you make will go off a long way to determine my future and continued existence. I am Mrs Elodie Antoine
aging widow of 59 years old suffering from long time illness. I have some funds I inherited from my late husband,

The sum of (US$4.5 Million Dollars) and I needed a very honest and God fearing who can withdraw this money then use the funds for Charity works. I WISH TO GIVE THIS FUNDS TO YOU FOR CHARITY WORKS. I found your email address from the internet after honest prayers to the LORD to bring me a helper and i decided to contact you if you may be willing and interested to handle these trust funds in good faith before anything happens to me.
I accept this decision because I do not have any child who will inherit this money after I die. I want your urgent reply to me so that I will give you the deposit receipt which the COMPANY issued to me as next of kin for immediate transfer of the money to your account in your country, to start the good work of God, I want you to use the 15/percent of the total amount to help yourself in doing the project.


I am desperately in keen need of assistance and I have summoned up courage to contact you for this task, you must not fail me and the millions of the poor people in our todays WORLD. This is no stolen money and there are no dangers involved,100% RISK FREE with full legal proof. Please if you would be able to use the funds for the Charity works kindly let me know immediately.I will appreciate your utmost confidentiality and trust in this matter to accomplish my heart desire, as I don't want anything that will jeopardize my last wish. I want you to take 15 percent of the total money for your personal use while 85% of the money will go to charity.I will appreciate your utmost confidentiality and trust in this matter to accomplish my heart desire, as I don't want anything that will jeopardize my last wish.


kindly respond for further details.

Thanks and God bless you,

Mrs Elodie Antoine
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
