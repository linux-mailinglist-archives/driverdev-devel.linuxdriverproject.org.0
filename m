Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA15A44F53B
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Nov 2021 21:19:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45AFD80E15;
	Sat, 13 Nov 2021 20:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xWZK80gp3kLN; Sat, 13 Nov 2021 20:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC98680DC0;
	Sat, 13 Nov 2021 20:19:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C2811BF859
 for <devel@linuxdriverproject.org>; Sat, 13 Nov 2021 20:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BB90402D1
 for <devel@linuxdriverproject.org>; Sat, 13 Nov 2021 20:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K3xuJiKsfyc8 for <devel@linuxdriverproject.org>;
 Sat, 13 Nov 2021 20:19:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com
 [IPv6:2607:f8b0:4864:20::934])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACF6F402CB
 for <devel@driverdev.osuosl.org>; Sat, 13 Nov 2021 20:19:29 +0000 (UTC)
Received: by mail-ua1-x934.google.com with SMTP id ay21so26084334uab.12
 for <devel@driverdev.osuosl.org>; Sat, 13 Nov 2021 12:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=bdsvl1UwZuOHxPwopT9QunKFFT2xiibkhLWpB5BPk7U=;
 b=g7w4vIccmEr76DC58ryP2HoyXsa6D069xvHh/0PNcQqeeitRiqV6xFxOzR6UuUNuZy
 e7H4zfBWRlC2e6OJdomqLtep/G2M7vsBrKmKdJWG6gsGssvSRfAuLbNKn/yXFwirc/1i
 P2A+eKEAZKkyff0gf9h19Yjsq62n4DByTjzQPAkzPFkhGR2N1MV8BTypD65sGxPcduox
 CJN/mVjOYpxTwGtQc5CTO92UZ4ijRs/Gj/tbyBlNbugNhtDkgLbsw14sy3wjCBbUcLV2
 0PV5ZMtS4J4NMdtOVgN4Xkjm2f7fUhLOgBG1pT6MlqXNp44kAyPKkFvBjahSkEVTHJzD
 YZIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=bdsvl1UwZuOHxPwopT9QunKFFT2xiibkhLWpB5BPk7U=;
 b=5wG7M9DsoNHKV7OZVXc0THBUz+0aNhR929XdF9hT/Oy7ySbm5sKfIpm68IDhGckQJ2
 IhJD0leJ29on3+IxhiZK9+iWinW3GyJqV7hzN2Visxe6QhJx9Sf1dw30Rwp0A2zqTBpe
 /K/8wQACV2vaMcrKMAcsgFbAm0D29JXJ4z5loLxEeCv9r1GNfUsVI8dMGKOCTtOQGUA5
 p1TAc5qW1J+enX3Nk647+TdWDMdy+uUI5ikwneH3PHhjPLFg9/kLBbSW2xS7PD3qI88S
 NoYXY+Vl9aTngeZvIsUwXVHUctKGBHQRgYbsUIqmuksUlxw8HA75ib8GmWuyGiFL/WLj
 3uPQ==
X-Gm-Message-State: AOAM531FGCGgwYMgZzo+CiSUANS8/WmRnOO/XX6pHA7w0xNzQGFzL4nG
 bDEV2SiJGgSldaGRrj6U93iDMgXLQipM1TnG74Y=
X-Google-Smtp-Source: ABdhPJzt6RoiHiHN5jJaJhkdSLvyGnGsH3lgLyg1qbfvr4hR54p/kzn1JlNpuv7ecfpmBzfrcZyBhzEw7jWzMSa6RgI=
X-Received: by 2002:ab0:3097:: with SMTP id h23mr38628863ual.107.1636834768245; 
 Sat, 13 Nov 2021 12:19:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:2285:b0:246:a4f2:cd23 with HTTP; Sat, 13 Nov 2021
 12:19:28 -0800 (PST)
From: "Miss.Mmamie Shimirah" <md4651682@gmail.com>
Date: Sat, 13 Nov 2021 12:19:28 -0800
Message-ID: <CAPVi8WiAdnvYaY7WQEYLNZQnJvYoFPeUrhBRfbOjdAEgvdzTwQ@mail.gmail.com>
Subject: Regarding Of My Late Father's Fund $10,200,000,
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
Reply-To: mmamie_shimirah@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

dear,

I got your contact through the internet due to serious searching for a
reliable personality.  I am Mmamie Shimirah from FreeTown Capital of
Sierra Leone.

Time of opposed to the government of President Ahmad Tejan Kebbah the
ex-leader since 21st November 2005 But I am current residing in Calavi
Benin due to war of my country, my mother killed on 04/01/2002 for
Sierra Leone civilian war and I am only child for my family bad news
that my father passed away on 25/11/2018. During the war my father
made a lot of money through the illegal sales of Diamonds to the tune
of $10,200,000.

This money is currently and secretly kept in ECOWAS security company
in Porto-Novo Benin, but because of the political turmoil which still
exists in Africa, I can not invest the money by myself, hence am
soliciting your help to help me take these funds into your custody for
invest.

I want to add here that if agreed 35% that's $3,570,000 of the total
worth of the fund will be yours minus your total expenses incurred
during the clearing of the fund in Porto Novo Benin. I would like to
invest on heavy duty agricultural equipment and earth moving machines
to enable me go into a full scale mechanized farming. l wait to hear
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
