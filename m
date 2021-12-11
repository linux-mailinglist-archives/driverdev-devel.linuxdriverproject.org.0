Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7634716B6
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Dec 2021 22:26:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BC8785988;
	Sat, 11 Dec 2021 21:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oME2I0kzYwXU; Sat, 11 Dec 2021 21:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55C1E85978;
	Sat, 11 Dec 2021 21:26:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B62F51BF3A0
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 21:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB94561161
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 21:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pi-my-cm3xkv for <devel@linuxdriverproject.org>;
 Sat, 11 Dec 2021 21:26:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com
 [IPv6:2607:f8b0:4864:20::932])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EDF46112B
 for <devel@driverdev.osuosl.org>; Sat, 11 Dec 2021 21:26:09 +0000 (UTC)
Received: by mail-ua1-x932.google.com with SMTP id 30so22724364uag.13
 for <devel@driverdev.osuosl.org>; Sat, 11 Dec 2021 13:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=hESOiVYpObu5Ofg++E31f+Z81C/F7jFDc4QSeP8EwUZ73zDtMr1cSJ5BHsIuNZqthy
 DaORuEQCixjhmf7Tg+B0hHoUaT4Ogtb5CjBfcSLiLh+vBFVne8GfwMDoe7NF/3cu798p
 rhaHeIUTWr7o1h1SEL16M150qJukRS+2Swgh0UOpbcqf5vqj3tv6QUF4LVUva3F+27Xo
 o2g9rfT1Q9HTPqmnCBXOVyGYmcpMcIMbZcSiablTY45Qf7aQ8U529v7AabDlrav1YqrY
 ISW8ag9ToLL/iBCsPOg8F2B96bpPZB7uxarP8AIaWgpuUTTz5oD0xORUxAx5YWxjjt0R
 FWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=mz2Gv3Sfr+vnIkiCiHNUuWwW14SgRVPRrPTNLIIgZCF0obg34f0Ee9D0qh2nvEyb7C
 mX/pBcd3AvhLYLRLXAX3+4m58SPI0cBSx5agj/lIT4e1bb6OKb/Kbdfvnrtkv6P1sRQd
 XseT0B5zPshn039Hj8llJMPYoILKahnblE3SaZcv8kLOiDQizwaU2GiQbzilLssFP6cp
 m9OpPXqJ2HWx+HTGsvayd+PW7ttuYEBOFQzqdz0iyWP8MauVd4QEFVLgLPNGR4mcxzrN
 HYP2/zCtPHyHInNkwYBDrdgTwPnMTNTpJU7S23vlXLeMJ5MYy6IPMF6HXuZhwVD2n4HY
 Vn0g==
X-Gm-Message-State: AOAM531Qrxc52s4Z3tdNnd0y+Cb1oG8jY+DUvuIkZU6BzcGtF6SuILEX
 Mc9OpvhwGczTbQvkSx7ApnAhQroGOsFFYTdivRI=
X-Google-Smtp-Source: ABdhPJy3vgDoEDyB1eDH0Yf1xCIbtWb11m6HmOl0rRPngOrPfy4LYfmYzirU4SFFIP2cXDuzZ5wZCiJNeW1TFflzm00=
X-Received: by 2002:a9f:3e01:: with SMTP id o1mr34909253uai.89.1639257968057; 
 Sat, 11 Dec 2021 13:26:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:10ca:b0:260:2457:5aa4 with HTTP; Sat, 11 Dec 2021
 13:26:07 -0800 (PST)
From: Aisha Gaddafi <mrs.chantalhermans2020@gmail.com>
Date: Sat, 11 Dec 2021 13:26:07 -0800
Message-ID: <CAJHbVCd7OQei5z9F+Ph7+ESjbSvKJ9wt+Z6LNH5zRmvtA9B94g@mail.gmail.com>
Subject: Hello Dear
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
Reply-To: aishagaddafilibya5@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh,


Hello Dear


How are you doing today,I came across your contact prior a
private search while in need of your assistance.
I hope my mail meet you in good condition of health? Dear I have
decided to contact you after much thought considering the fact that we
have not meet before, but because of some circumstance obliged me, I
decided to contact you due to the urgency of my present situation here
in the refugee camp for your rescue and also for a serious
relationship and a business
venture/project which I need your assistant in this business
establishment in your country as my foreign partner as well as my
legal appointed trustee.

I am Aisha Muammar Gaddafi, the only daughter of the embattled
president of Libya, Hon. Muammar Gaddafi. Am a single Mother and a
Widow with three Children.
I am currently residing in Burkina Faso unfortunately as a refugee. I
am writing this mail with tears and sorrow from my heart asking for
your urgent help. I have passed through pains and sorrowful moment
since the death of my late father.

At the meantime, my family is the target of Western nations led by
Nato who wants to destroy my father at all costs. Our investments and
bank accounts in several countries are their targets to freeze. My
Father of blessed memory deposited the sum of Twenty Seven Million,
Five Hundred Thousand, Dollars ($27.500.000.000) in Bank Of Africa
Burkina Faso which he used my name as the next of kin. I have been
commissioned by the Bank to present an interested foreign
investor/partner who can stand as my trustee and receive the fund in
his account for a possible investment in his country due to my refugee
status here in Burkina Faso.

I am in search of an honest and reliable person who will help me and
stand as my trustee so that I will present him to the Bank for the
transfer of the fund to his bank account overseas. I have chosen to
contact you after my prayers and I believe that you will not betray my
trust. But rather take me as your own sister or daughter. I am willing
to negotiate investment/business profit sharing ratio with you base on
the future investment earning profits.
Apologetic for my pictures I will enclose it in my next mail and more
about me when I hear from you okay. Please I want you to contact me
here (aishagaddafilibya5@gmail.com) for more details.

best regard
Yours Sincerely.
Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
