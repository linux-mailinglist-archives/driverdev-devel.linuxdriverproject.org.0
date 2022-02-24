Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D164C37E2
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:33:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E4BC8134C;
	Thu, 24 Feb 2022 21:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCLwwcy-dTHT; Thu, 24 Feb 2022 21:33:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06B9A81318;
	Thu, 24 Feb 2022 21:33:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 357261BF31E
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23E67607B4
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6IVWYgSM1Cl3 for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:33:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9583360736
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:33:38 +0000 (UTC)
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-2d6923bca1aso12922417b3.9
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 13:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=LKruOcBi+kDnXKvpXRwJ0IXMvF89JPCRex9NWC+MR0GKIxw2vl6J2TECdqwQZzP/7K
 NDPk1ncojtsnE/Obqb7mcfB0Ny9atKzFolMh5nKtIR9jy9AnH6MhW9gAbt2qFRVGizFu
 q37qJqd1EOh7Rc3yMv9WBWEgYR5gnMG1srAMydRaVhlTb2HcXFvpTunjr/9xhUW+XHTL
 /sN2L4jugLCRrJ6IvqyOHmMSORPW6cfbAvFNpoGJfV04+1HGVlnP3iYNWZj1gvVRRBdM
 FO64twH8VJ9OjXLE2Kirfb9XJl5pToXYeWl3LqLq/cAk2ZSrWKASOJi+g7WVwB4aQ1Je
 MpKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=E+PAlO8CO6f59G5lT52ArMcKNok3DpKsggBePa3NOktsk54Lvh+6jVjmN5wOFiOuzP
 r1iae0SsB2Ih3lli1RANKnGCw2seLOdA9oZh/txdrDF8vnCBxWNzdIqAfQTzYLzeJe4k
 7BfcAzPhRnUPBI6t84R5J52wTPYx2XQDGMx7j6TEyppLAacfIYntp00x9btibTdpysm+
 O6Xj3+VWX7fIhDdN8S+wpWBuOw8HnE/dDk0F//ruSJN+KS8zEiQXm0EJqXmw4OUIdxdg
 qwdvDU7aoaUw2pCIYy9PImi9QQwqwv3P8kBo6FYvETxbUI3tXxpKTGTwJN0QWLh21DdY
 RIeQ==
X-Gm-Message-State: AOAM5304OAiovnpTAP+RGLFNG3HwmvRuzyPjdZO3CbSMqMJ51WDDiENW
 v7UCQ0M0buj21D5eIvacsMYaeopIclsHs4t5gb8=
X-Google-Smtp-Source: ABdhPJwmdpqTAdnweVdKpmwIRxHL1J9iJ+/5xFimowOt4xAaEa+Xxr0ZwkGWY++KEYCaLxIROcYixQVdAQxaPHXy1Gg=
X-Received: by 2002:a81:7d0b:0:b0:2d8:2280:a0f1 with SMTP id
 y11-20020a817d0b000000b002d82280a0f1mr725025ywc.435.1645738417288; Thu, 24
 Feb 2022 13:33:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7108:7616:0:0:0:0 with HTTP; Thu, 24 Feb 2022 13:33:36
 -0800 (PST)
From: MR DAVID MORRIS <mrjohnwegener35@gmail.com>
Date: Thu, 24 Feb 2022 13:33:36 -0800
Message-ID: <CA+Kwxe_yuw00dTk-w_YNHcrH+2nhA7QchfxpP2+N6yv25+4W4Q@mail.gmail.com>
Subject: Dear Beneficiary
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
Reply-To: mrdavidmorris1718@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I am MR DAVID MORRIS, Inspection Unit Manager United Nations,
Inspection Agency in Hartsfield Jackson International Airport Atlanta,
Georgia.During our investigation, I discovered An abandoned shipment through a
Diplomat from United Kingdom which was transferred from JF Kennedy
Airport to our facility here in Atlanta,

The ATM debit card is worth $8million,And I  Ascertain you
that the consignment is in your name,you are advised to provide all
detail for claim.

Sincerely,

MR MORRIS

CONTACT.......... mrdavidmorris1718@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
