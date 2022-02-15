Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC224B64E9
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Feb 2022 09:00:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B18640920;
	Tue, 15 Feb 2022 08:00:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p_g9zU-DvOVX; Tue, 15 Feb 2022 08:00:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E3CE4091B;
	Tue, 15 Feb 2022 08:00:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 458F01BF276
 for <devel@linuxdriverproject.org>; Tue, 15 Feb 2022 08:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4216982ADD
 for <devel@linuxdriverproject.org>; Tue, 15 Feb 2022 08:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VKveSMRM_bZm for <devel@linuxdriverproject.org>;
 Tue, 15 Feb 2022 08:00:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 652A1812F0
 for <devel@driverdev.osuosl.org>; Tue, 15 Feb 2022 08:00:44 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id om7so16750339pjb.5
 for <devel@driverdev.osuosl.org>; Tue, 15 Feb 2022 00:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=oS24Odoo+YWXb21BnWQaYo70KmZfxZTyAbEDj6Qrlsc=;
 b=TRLWswr9smNS9T12WvOU2znuaO4XoPzwVPDfPk1+BCYHPWFId1KvM1CUGI2SC1NqfB
 +5/X40MpKZ15tFCu47UStBw4KlQa+VZoNOOVbPJW0G/Ac/oMpt/MCsZIvpMelc/R8zVf
 mek8JfYI/KetBvFUfHdpTcYrRXhZ+BEsLw7iDE2AaJGCp01xDyxwzPnD3J8krb1GYnm2
 PO8wskTDOOAAJrjLxgbb7/rfmLexNcLvQfGqiYBXzh3FT+HG1FjxydzmPfqMN7EP/3Df
 lyzjaokWD8pagHscScRs+ftSxCAKTU77yCfoxWo+Zy3RlvTYL0vxqOORpKr0cNjZun1W
 UMSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=oS24Odoo+YWXb21BnWQaYo70KmZfxZTyAbEDj6Qrlsc=;
 b=04OynmDaR1PfxQYR1NEUFWpphNbqErV9J0Oc0eOwG3VpsHPEbutxPUXgV/LXfUNd6r
 yTDz45L9EgQyLbissJsT1N9qgJhv5XAjBfI/VVtin4XTwP1H+QxsbrI1D/9GDRGNaypz
 3Rmy60vskamr2LlYzRf/fQIStZ78mryfUqGkkqqdrHAnfraSh3wHMwuHkDLFqJi3hu9o
 us40dPe4+d4YO6Aqli90HzJrH7H/UUiI2++fuljHK9htSY6YPoh1q5rrRaPv4TfprfUv
 PoSGiUy1ztStiaJoWLjxQkJeRog+uyF7sWnQxdVFJ050xTITaSXIUFgHp1BEq7f5U+fV
 fFuw==
X-Gm-Message-State: AOAM532n/mOWfONeanHrFeoUdAK5sH4tYBlaE4QY6ISUmkhAwsefLTew
 Kgs4aAHHvpcUjfBWM9RODyvRSWfWKZhTXtPtKpQ=
X-Google-Smtp-Source: ABdhPJyE4PrFa9DGISTDtqS8JQWNNvANMPgWJuBMWOmCtLqbxRFmg4g9Wl4rP0RiEPNbwI8sZP8nuVArrYIK28VUMRo=
X-Received: by 2002:a17:903:1212:: with SMTP id
 l18mr3019592plh.7.1644912043156; 
 Tue, 15 Feb 2022 00:00:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a20:448b:b0:70:f80a:8033 with HTTP; Tue, 15 Feb 2022
 00:00:42 -0800 (PST)
From: Mrs Elodie Antoine <mrselodieantoinea@gmail.com>
Date: Tue, 15 Feb 2022 00:00:42 -0800
X-Google-Sender-Auth: YYkVJXrTosc3MlJQpsa6MC8-YwM
Message-ID: <CAOJar2LNzjVfg51YSKuy_EZnGfKwtJ5pnmqBSqNiUJwHMEYs0g@mail.gmail.com>
Subject: Calvary Greetings
To: undisclosed-recipients:;
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
Reply-To: mrselodieantonie778@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CAN I TRUST YOU WITH  THIS (US$4.5 Million Dollars) FOR CHARITY WORKS,

Calvary Greetings in the name of the LORD Almighty and Our LORD JESUS
CHRIST the giver of every good thing. Good day,i know this letter will
definitely come to you as a huge surprise, but I implore you to take
the time to go through it carefully as the decision you make will go
off a long way to determine my future and continued existence. I am
Mrs Elodie Antoine
aging widow of 59 years old suffering from long time illness. I have
some funds I inherited from my late husband,

The sum of (US$4.5 Million Dollars) and I needed a very honest and God
fearing  who can withdraw this money then use the funds for Charity
works. I WISH TO GIVE THIS FUNDS TO YOU FOR CHARITY WORKS. I found
your email address from the internet after honest prayers  to the LORD
to bring me a helper and i decided to contact you if you may be
willing and interested to handle these trust funds in good faith
before anything happens to me.
I accept this decision because I do not have any child who will
inherit this money after I die. I want your urgent reply to me so that
I will give you the deposit receipt which the  COMPANY issued to me as
next of kin for immediate transfer of the money to your account in
your country, to start the good work of God, I want you to use the
15/percent of the total amount to help yourself in doing the project.


I am desperately in keen need of assistance and I have summoned up
courage to contact you for this task, you must not fail me and the
millions of the poor people in our todays WORLD. This is no stolen
money and there are no dangers involved,100% RISK FREE with full legal
proof. Please if you would be able to use the funds for the Charity
works kindly let me know immediately.I will appreciate your utmost
confidentiality and trust in this matter to accomplish my heart
desire, as I don't want anything that will jeopardize my last wish. I
want you to take 25 percent of the total money for your personal use
while 75% of the money will go to charity.I will appreciate your
utmost confidentiality and trust in this matter to accomplish my heart
desire, as I don't want anything that will jeopardize my last wish.




Thanks and God bless you,

Mrs Elodie Antoine
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
