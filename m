Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0E93ADEC5
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Jun 2021 15:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7772660796;
	Sun, 20 Jun 2021 13:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lFxjkq-8HbKz; Sun, 20 Jun 2021 13:36:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5FF460764;
	Sun, 20 Jun 2021 13:36:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB0051BF2B4
 for <devel@linuxdriverproject.org>; Sun, 20 Jun 2021 13:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9BED40328
 for <devel@linuxdriverproject.org>; Sun, 20 Jun 2021 13:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YBAxpTh53T-C for <devel@linuxdriverproject.org>;
 Sun, 20 Jun 2021 13:36:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E9CB402A8
 for <devel@driverdev.osuosl.org>; Sun, 20 Jun 2021 13:36:16 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id p66so12604771iod.8
 for <devel@driverdev.osuosl.org>; Sun, 20 Jun 2021 06:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=D7l/Y2nU4ivOXB3kYNarWKNDy1SUWuawPt7q4q/Bhv4=;
 b=uDIEtWfgl91FDet7ZYX1u1ozW0abpKvg4acx3thqXBCDoYcWKg7eyNZSXNk+51VeuJ
 sYbwx77CCJt/Xl1UBy7P++4/uHOQjQcptGzc4BiJd5A/7x+FLCtsFr6R08yAScCPxE/G
 ycRitdP5UZQCPHBcljPWiYz9qooX9+o9VlIcE1iBIKjgWFsG58IfpnIZmKh5Mer/et0Q
 Wvv2McVtUA6rn+iTugaAQulni5t+7gIBWkpgi42U+JEUmcEEUifIxcViVFyKhDEEgfNV
 A33afccbptAYxVMQ3XRd6cg8QS8Vl2AEYQyihFbFLRpIaiCXlHMQE4BSfPfytvzUMqcd
 FXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=D7l/Y2nU4ivOXB3kYNarWKNDy1SUWuawPt7q4q/Bhv4=;
 b=miBaeqRLRe0no5pu9APTKXg14BMCQhPEzMBfxjOipWWYROVZxIf6u709hidlrbtLUu
 6QehhL+f1CVZgXf1dziT8f9PcR2Pj1iIkkheEk7gy5fvoRR0zzEyYl5xiFyf1WkDwPpc
 ss2KizRkcmj64/iF57jMUlvQsKuQ1VCgN9FnO4vdWSR4mpOzx4vKFVX//SqF3TviugXA
 EFgBiOptxpsAnNSBdamjopfK+KYwn3lmRoRUj32vRZh2w2su3t/EaOyQwdzF4FTFoH94
 opmF92ETb+o/HazSW8awkpkcmDOxjoWsyzgpQyGe3QErpLYbk+qOCHy5UL5I3RwxvMh4
 xUMw==
X-Gm-Message-State: AOAM530/jnNv3z1+fPVhFY/abTg950xnf7D/kJNxIhqIT0cbjVYn6kej
 1m7b1OOjrPitatHSk7HP+oBW6w54F4e4qD0n9Uw=
X-Google-Smtp-Source: ABdhPJwOQ5lA8oaPxit1UXNypL8Kah2QWj0jtAWNuj5/Z8/Rl7T8YsfxHtOIriCZuXo1tXOWzxp5d5YlbnVjDFRsY5Q=
X-Received: by 2002:a02:a810:: with SMTP id f16mr12630337jaj.64.1624196175568; 
 Sun, 20 Jun 2021 06:36:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6e02:1baf:0:0:0:0 with HTTP; Sun, 20 Jun 2021 06:36:14
 -0700 (PDT)
From: Sarah Koffi <sarah.koffi101@gmail.com>
Date: Sun, 20 Jun 2021 15:36:14 +0200
Message-ID: <CA+ifgLE1g7jgi567M2HhZfvRSUF63Hu6stsW+ysX=3U-=qnn6Q@mail.gmail.com>
Subject: Greetings From Mrs. Sarah Koffi
To: sarahkoffi389@yahoo.co.jp
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
Reply-To: sarahkoffi389@yahoo.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings From Mrs. Sarah Koffi

I'm contacting you based on your good profiles I read and for a good
reasons, I am in search of a property to buy in your country as I
intended to come over to your
country for investment, Though I have not meet with you before but I
believe that one has to risk confiding in someone to succeed sometimes
in life.

My name is Mrs. Sarah Koffi. My late husband deals on Crude Oil with
Federal Government of Sudan and he has a personal Oil firm in Bentiu
Oil zone town and Upper
Nile city. What I have experience physically, I don't wish to
experience it again in my life due to the recent civil Ethnic war
cause by our President Mr. Salva Kiir
and the rebel leader Mr Riek Machar, I have been Under United Nation
refuge camp in chad to save my life and that of my little daughter.

Though, I do not know how you will feel to my proposal, but the truth
is that I sneaked into Chad our neighboring country where I am living
now as a refugee.
I escaped with my little daughter when the rebels bust into our house
and killed my husband as one of the big oil dealers in the country,
ever since then, I have being on the run.

I left my country and move to Chad our neighboring country with the
little ceasefire we had, due to the face to face peace meeting accord
coordinated by the US Secretary of State, Mr John Kerry and United
Nations in Ethiopia (Addis Ababa) between our President Mr Salva Kiir
and the rebel leader Mr Riek Machar to stop this war.

I want to solicit for your partnership with trust to invest the $8
million dollars deposited by my late husband in Bank because my life
is no longer safe in our country, since the rebels are looking for the
families of all the oil business men in the country to kill, saying
that they are they one that is milking the country dry.

I will offer you 20% of the total fund for your help while I will
partner with you for the investment in your country.
If I get your reply.

I will wait to hear from you so as to give you details.With love from

 i need you to contact me here sarahkoffi389@yahoo.co.jp

Mrs. Sarah Koffi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
