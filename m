Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA50C4BB911
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Feb 2022 13:23:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBCA841D8D;
	Fri, 18 Feb 2022 12:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qBv_FjFhSNh5; Fri, 18 Feb 2022 12:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 856D340245;
	Fri, 18 Feb 2022 12:23:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 940DD1BF2C3
 for <devel@linuxdriverproject.org>; Fri, 18 Feb 2022 12:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B21F611CB
 for <devel@linuxdriverproject.org>; Fri, 18 Feb 2022 12:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NneOEYqUnR11 for <devel@linuxdriverproject.org>;
 Fri, 18 Feb 2022 12:23:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E132F611C3
 for <devel@driverdev.osuosl.org>; Fri, 18 Feb 2022 12:23:18 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id k1so14285096wrd.8
 for <devel@driverdev.osuosl.org>; Fri, 18 Feb 2022 04:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=PROZB7sG//VojuSbbykFedWZkf/Ibq89AjlsH9oyab0=;
 b=hvBk1+RYEuls16L3TEt5VVAZhRMgewuhTUqfU31WvWcjPqY3Q33UiTMDi9n19h9pee
 VOJ8CY4GhbOAVrodOy87SjyCkEuMG37YL4Gq/e4cEMOc1Jge6rNlAxOzbHCjY1sESlj7
 uEQ2LN7r/o/pO6obTGQUVPhJ2NBp7H2OIis/Exzqv0hM35xDpR04ime83vg0oOm390Ub
 T5DXNba6KOxf+zGAF+BXGTZdYhqxdHkcig3OWXFTenU0F+FfwDgGG4QLCegS75RIkEEd
 s85TtM28m8wGERdc5DKGPqQZJQCyW8MNRFm6csyHknWzvqC3cOZf9cRX5Yphah9aiQZQ
 avkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=PROZB7sG//VojuSbbykFedWZkf/Ibq89AjlsH9oyab0=;
 b=zirsoSN6nGUlzK1aVpip2z2mfGltPXrCvei92rN/RkGc6MVnf+bnDUgHQtgipKOvg1
 C6bxT7jPNQyTDFRWgSAJUndI5GwPH4jwdZe2L9/Bqq9X7vGEhJhkZFAeP/+KJPqpOsdJ
 tENs5MSobwvkmWjvOqROtuEtXVpgqVUnshnBVALQt+3fpYRznBrhDlJItYw/t1ScUOPk
 8XwYxBeGo/+/noE0Ha1rE1cSgyKUzTj156DFQjiiO9Gy2LHZ6e1fugrfmpmqml3kHdtw
 SUfc1QhEfEmUDTA2xZ9dH6w+FiQZ7sNBET8aVC5YAuqbQdMIFhYgff20Gj96FUt+hP4i
 lQGQ==
X-Gm-Message-State: AOAM531pE13hJYlRlx6GRDjyOyRsa/j9dkhYSm+IGEX9EoWFrsbG+bI1
 RWc5yPPQiEhNT7RlMj3A62IlTSpzshwsqVYFlGE=
X-Google-Smtp-Source: ABdhPJydL1nBWu+Tg6WbCguAmVpLYgsFMUMSp7l3DH+Vap2e0Or79lOX6rOKPiBu7drgMev9vecbYMQL4Vk3GOxnv9M=
X-Received: by 2002:adf:dd0d:0:b0:1e3:37ee:ab8 with SMTP id
 a13-20020adfdd0d000000b001e337ee0ab8mr6181109wrm.251.1645186996784; Fri, 18
 Feb 2022 04:23:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a7b:c155:0:0:0:0:0 with HTTP; Fri, 18 Feb 2022 04:23:16
 -0800 (PST)
From: "Mrs.Latifa Rassim Mohamad" <rassimlatifa400@gmail.com>
Date: Fri, 18 Feb 2022 04:23:16 -0800
X-Google-Sender-Auth: TGQ_Wcg-HM-LivMSUsRpAF1t-1U
Message-ID: <CAO9H84Pa1pfhpO9Ypz7Q5bQTpS1aX2ywNGzhaBjhDc2CRvR3pg@mail.gmail.com>
Subject: PLEASE CONFIRM YOUR EMAIL....
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good evening from here this evening and how are you doing today? My
name is Mrs. Rassim Latifa Mohamad from Saudi Arabia, I have something
very important and serious i will like to discuss with you privately,
so i hope this is your private email?

Mrs. Latifa Rassim Mohamad.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
