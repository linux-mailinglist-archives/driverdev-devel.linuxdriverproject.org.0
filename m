Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737A9197970
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 12:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0FA9884EF;
	Mon, 30 Mar 2020 10:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rwyRTsqESCTL; Mon, 30 Mar 2020 10:41:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 531C0884D2;
	Mon, 30 Mar 2020 10:41:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2801A1BF2A1
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 10:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F97487C98
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 10:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qWwIrR-QOaQ9 for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 10:41:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A639F87C8A
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 10:41:18 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z14so2832675wmf.0
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 03:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=EmnByVjRRIj/dcGI2wocpvR+OQ9kOqGokD1SxfsI6FI=;
 b=VQOLU62hdrjPHfq35FmkK7mKk/EUpHjZwQkngk/LArzcryqRMrHb9o43pzS2+151CB
 h2r0DmGrvAjnNb49nUODIoHB7Snx2Q0sowFz+ffRFox9XZiOLbRV55SEi2kCHCNrzcRA
 dT5xfenb5jk755fz3akDrqvjlGUUGSnMf+q5L8pQhhMD6xku6HWU4WPZ0T6RdDHtRTfB
 ebaKeRhNwLh5/GBVrL6sf+Kbi2SyTASMI3SwYwG45yIgvpRkgD/0YMgtQjQHYNH2saoT
 AiAybGoXRGmAHQTf/Ry3VtMYT9BQdYHxtx1H76d7Kle9tgpgqSOEvTOEnzirbTPJzz5+
 tJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=EmnByVjRRIj/dcGI2wocpvR+OQ9kOqGokD1SxfsI6FI=;
 b=omw88JfUoVy+PUJiWpBXsqhmhxsbSxJbCWLU5sDxZGSUXPFgiSZ12d+vWoaMDu/n+e
 jiucEZmRyTFzWGilx49vNaEuMH+/tr/0AXx8H08MQmeT5tlSQ4IfmCiwlvo3l1Mu5OUh
 9kPMdr594UeIin4txNyi/Ok6GlbiK6a0WYr2/OcuSuwd5HQ+l633n4tA5ZznwsbMIV0E
 vJJ8fwqXYHryIZ4SeDabI2pKuqTkDZIDMA1QxULxJbXZnEzSArdZ+f84n2LiTy1mqiEm
 nxPESc1SptEO14LjHMqsuWVxfQzNnuHAH4jCkobBnTjv+aD7pyfLQZhL5DotaAf9Hnsx
 +pVA==
X-Gm-Message-State: ANhLgQ2sPqBjUje5IsE7R0PXHvMD8okje77rs2OSz47JIXQWw1KdmmB5
 twYMbDQAS7v1hM3IgHPcPPMAzzC55kb1XETHK5k=
X-Google-Smtp-Source: ADFU+vsxA+n38Wxy9V771nVV7IBY2BkIA2hZTfEUMNeE6Cve3gAcNTP4GjU8j3TPDP4cVuueQ/mBaEbtpko95Ucf1+Q=
X-Received: by 2002:a7b:c404:: with SMTP id k4mr11964261wmi.37.1585564876904; 
 Mon, 30 Mar 2020 03:41:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:fcc7:0:0:0:0:0 with HTTP; Mon, 30 Mar 2020 03:41:16
 -0700 (PDT)
From: Harvey Terence <ochefut11@gmail.com>
Date: Mon, 30 Mar 2020 12:41:16 +0200
Message-ID: <CAPCmsMNkzJWoM1WVk3TayTXVhUGAtY+_iCo520DZ7d+FCwt_Jg@mail.gmail.com>
Subject: THANK YOU
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
Reply-To: maab1@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From Harvey Terence (Mr.)

25 Canada Square, Canary Wharf, London E14 5LB,

Good day

I am Mr. Harvey Terence, Operating Officer of this bank. With your
honest assistant and cooperation, we can finalize this transaction
within 7/14 working days.

 I need a reliable and honest person who will be able to handle this
business opportunity with me because of the need to involve a
foreigner. I am contacting you because of such demand, and I believe
you will work with me to achieve this purpose and will never turn down
my request.

Before the United States of America and Iraqi war, our bank customer
Mr.Hatem Kamil Abdul Fatah, who was the deputy governor of Baghdad in
Iraq and also a business man made a deposit of (GBP10,750,000.00) Ten
Million, Seven Hundred And Fifty Thousand
Pounds Sterling Only in a Bank account number: ABP-LN-685
00/52207712321 over here in our bank.

But I later discovered that the Deputy Governor has been assassinated
in Baghdad by unknown gun men.

Below is the information about his death as a proof and verification
of his assassination In Baghdad:
http://news.bbc.co.uk/go/pr/fr/-/1/hi/world/middle_east/3970619.stm

During my further investigation after hearing of his assassination in
Baghdad, I also discovered that Mr.Hatem Kamil Abdul Fatah did not
declare any next of kin in his official papers including the paper
work of his funds with our bank which might be because he embezzled
this funds while in office and was afraid of revealing his political
dignity when opening the above account number in our bank until his
dead.

My aim of contacting you is to assist me to receive this money in your
bank account over there in your country and let me know how much
commission you will receive out of the total fund when transferred
into your oversea bank account?.

You will diligently transfer the balance to me through another bank
account number from another bank I will forward to you as soon as the
fund is transferred into your over sea account after deducting your
commission from the whole sum or I will come over to your country to
meet with you one on one for sharing of the fund or shall invested the
fund into any lucrative business out there in your country together..

We are going to process and perfect the transaction legally as bank to
bank procedure has been put in place.

I need your urgent reply through my private E-mail address at:
maab1@yahoo.com if you are interested to work with me.

I provide more details on how to process the approval of the fund in
your name to be release for instant bank to bank wire transfer into
any designated bank account of your choice without delay.

Please keep this transaction safe and confidential as exposing this
transaction will jeopardize my reputation in this Bank.

I would like to hear from you in no distant time as soon as you read
this mail through the above stated E-mail address so that we can
proceed accordingly.

Best Regards,

Mr. Harvey Terence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
