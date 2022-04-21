Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 753175094AE
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Apr 2022 03:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D84A682D07;
	Thu, 21 Apr 2022 01:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zx5JcoZeBZfo; Thu, 21 Apr 2022 01:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78A4182CFA;
	Thu, 21 Apr 2022 01:40:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C0E6B1BF31F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 21 Apr 2022 01:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE73D419A0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 21 Apr 2022 01:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JwMki6i1Nsmd
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 21 Apr 2022 01:39:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 761794198F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 21 Apr 2022 01:39:57 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id bg9so3344815pgb.9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 Apr 2022 18:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=pmsAb6dYPHTFjZjbzv39PZ1O6fWTXp9RmtE7NOGM2Fc=;
 b=ZOEA/XlgPBtgBmjiHiayChYHiMXWyYGKhyZ66LAO/wADI4iDfO4wUuKm0D7NmsJJWx
 iBg49P2GQD7QKRfZyR6QmtpAYrZwytmOFs8TFx+wYDFHnnM4QWs527uWqoLiTEU2jmwe
 7/PRpwTIsDWbaz9P4YF7juqoU1es0yzv6yv/R+Fgw7agKRS3vSfbWePbS3+7HxRmvstT
 /rfdS3SnHGo3Q6DQYKaxNSEt1YDgT1eUQyyeAZDtvTj0hYCWRnQWbHecyX1nGYuFiG68
 3+W1FhLD94W7QyNqAWhvQR4204DDSH4cqvevF5122+72e6i+YeiABw97StvppVBzYq11
 83Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=pmsAb6dYPHTFjZjbzv39PZ1O6fWTXp9RmtE7NOGM2Fc=;
 b=ur4gpPi3sL0LXeShPLORhj4i1pACiGYtk+ZeUH3wlZ2TQgNrKENTXUt/6hXJcgOd7e
 IwSwbw1j1PCxnru/u+Hml4k303/tXcBUaPkf+NTkk8F0UXYK43I2uqU+b9nTPRBRxtbE
 D69EtFEJm40E5rlugAwpfVNcEhEN629fteDfmpNvqdNUtE9yLaHWAsPN+uKR+a1fd00L
 LpzyT7SbLipl7OCEV682Ew0LSLuLGvGm4a72eCVI+L6/TATOiQE1iR/sfbCMCW4xotvH
 7el6T4XSGQCWlkE4M+jPeYOln0RgXOOLSr4/mSaWf3kohBFr/Ynfehn6LweL6dFXn7V6
 fFtA==
X-Gm-Message-State: AOAM532nCY9R8gobkd8dTcK9zSUud4Rue0cyARgpNr9CNvEZlYy1zJfu
 65KyU8qdRmA+evA7RB5X31PNWca0fWwsqiv8RHY=
X-Google-Smtp-Source: ABdhPJyXAQmRqmnl/pIYIlK6J8OC4/4yw7uvqKrRmsHZPotq2+nYihmz8u2OMqqfufKHGlccDzm5ibdE5FgADyllt8o=
X-Received: by 2002:a63:89c2:0:b0:3aa:7bab:da46 with SMTP id
 v185-20020a6389c2000000b003aa7babda46mr3232333pgd.356.1650505196178; Wed, 20
 Apr 2022 18:39:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:6554:0:0:0:0 with HTTP; Wed, 20 Apr 2022 18:39:55
 -0700 (PDT)
From: TURKS BOH <chineduobodo292@gmail.com>
Date: Wed, 20 Apr 2022 18:39:55 -0700
Message-ID: <CAHF--8ix4=A4OCn2hYys-e62wUYPbW3_PmWB2NNoq4+KRyiCNA@mail.gmail.com>
Subject: UN global-compensation for scam victims listed your name and email
 for compensation fund
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
Reply-To: sm85smith@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
compliment of the season


PLEASE - URGENT RESPONSE THIS YOUR BENEFICIARY FUND


Bank of Holland CREDIT this Transaction Notification



Bank of Holland 12 South Main St,
Holland NY 14080, United States
Phone: +1 (332) 228-4349

This Message is from the Head Office of Bank of Holland 12 South Main
St, Holland, NY 14080 United States of America, We are contacting you
about your funds of $8.5 Million US Dollars deposited to Turks Bank by
United Nations to transferred the funds to you as Your compensation
for Scam Victim because your name and your phone number was listed
among the Victims that was scammed years ago by West Africans
according to the United Nations Fund Disbursement Team and now you are
to be compensated with the sum of $8.5Million US Dollars.
Therefore you have to reconfirm your information to us such as follows::

Full Name:
Home Address:
Tel Number:
Occupation:

Don't Forget To Reply This Email Only:  sm85smith@gmail.com

And after reconfirming your personal information to us, you should
then let us know the best way that you wish to have your funds of $8.5
Million US Dollars received, either the funds will be transferred in
your bank account or Platinum ATM MASTER CARD will be issued and be
delivered to your home address or the funds will be  delivered to you
in Cash.
IF YOU RECEIVE THIS MESSAGE IN SPAM, KINDLY KNOW THAT IT IS A NETWORK PROBLEM.

This shall be our last time for contacting you on this issue of scam
victims of yours.
We need your immediate attention with your full information only for
process this fund to you
As compensation which has been credited by (Bank of Holland)

PLEASE - URGENT  RESPOND

Best regards:
Mr. Roland Max
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
