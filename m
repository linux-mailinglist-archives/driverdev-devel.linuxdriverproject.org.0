Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4B55094B0
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Apr 2022 03:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1071182DD9;
	Thu, 21 Apr 2022 01:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lP8fkN1Twvx3; Thu, 21 Apr 2022 01:40:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBB0484094;
	Thu, 21 Apr 2022 01:40:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B8381BF31F
 for <devel@linuxdriverproject.org>; Thu, 21 Apr 2022 01:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78365405AB
 for <devel@linuxdriverproject.org>; Thu, 21 Apr 2022 01:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tUpRHrZSw9iB for <devel@linuxdriverproject.org>;
 Thu, 21 Apr 2022 01:40:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE733405A3
 for <devel@driverdev.osuosl.org>; Thu, 21 Apr 2022 01:40:14 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id k29so3332384pgm.12
 for <devel@driverdev.osuosl.org>; Wed, 20 Apr 2022 18:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=pmsAb6dYPHTFjZjbzv39PZ1O6fWTXp9RmtE7NOGM2Fc=;
 b=CLLzppaxP3SPQIAyuHxyGXudwPEs7LcgFonp+e8WMRs1zPdFu9AKF6aT6+dnlKAavD
 +HBqupj4fFGCDxjvoWsf98uTITPZOSYb94hV1wmLcp1vVB+WhAscH22gNBVIygtBK7ps
 Cmv3znMNAq6OVZRpXhzI1ONaciflTKItJklNwlsqI5s30faF02JVbaoCm6zc5JqJlga3
 r10T9ZKj90ZNUuQRGfAfxXnB4kHoH4C88Og3QpJXaLdEzVdegNw9KlNeo0NZsm1r1cnV
 1xyu1UR+Unfu/QWIwFjTtEdcW5NrCK1qvATui/DCbTTMF8l09CzXSicg6ujWhtVJeIPh
 2NwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=pmsAb6dYPHTFjZjbzv39PZ1O6fWTXp9RmtE7NOGM2Fc=;
 b=akmLYz6XUsaKHsTRnlCwqAyqeCgb+sevWfAVBECP4AszVFKJ2xW7RQYTM0CYqNL1Pm
 0Hpd6lDQk14uHzm78B9ROxPD6ohTQ2PrilGWpH4PWqaWbG4h9cXr+WOZO1vwGIwRYAO+
 bKLjNrxsEi/xiVoBMhJgQNjTUyIRXxzxeMpeiQEuBDfuybYjAne6qBuJbDkXwKB5hpNr
 WalPrRS3wWSqO4UbPV6ZgLAoQjWnEUKi2ayx3/d8J74BOubaJOUIBUtQpFIJAmGaEgkX
 g8bIy0b3xsdnQfmEuUqMaxzQoFp+bWLE6rxRTRXAH9k7Z8wdN1yZ5Ens7yfllElUsPmo
 xWjA==
X-Gm-Message-State: AOAM531qEGCug0jp7UozcReM5FjTPrp4ZIG7R4L9BP49xaZWqicltqFt
 JeFQB5WxL5kiZYVPMEqgDzqtvHzSsGo6jV+dxfE=
X-Google-Smtp-Source: ABdhPJzdH5x//Ub6hJCP1LGWi0oy8I8cXL9RB2lnWbwpqiG9xJZPFaEAwbcxkJAOaifRzZoJIPQUdKfxmtMLgSEB6F4=
X-Received: by 2002:a63:e345:0:b0:3aa:6197:7ba1 with SMTP id
 o5-20020a63e345000000b003aa61977ba1mr6790297pgj.64.1650505214140; Wed, 20 Apr
 2022 18:40:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:6554:0:0:0:0 with HTTP; Wed, 20 Apr 2022 18:40:13
 -0700 (PDT)
From: TURKS BOH <chineduobodo292@gmail.com>
Date: Wed, 20 Apr 2022 18:40:13 -0700
Message-ID: <CAHF--8hLfQ-wreHCxkgrtncTkuE0TfTKSvXqVp3nu2W6-j6GAQ@mail.gmail.com>
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
