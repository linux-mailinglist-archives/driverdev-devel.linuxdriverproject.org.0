Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CE5197A0D
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 13:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F54D86B11;
	Mon, 30 Mar 2020 11:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPoiIoqovG02; Mon, 30 Mar 2020 11:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 038D486B10;
	Mon, 30 Mar 2020 11:00:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBB331BF301
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 11:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E8B7E87D56
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 11:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDrfyXgfDLEY for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 11:00:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1799D87D36
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 11:00:52 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w10so21109071wrm.4
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 04:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=EmnByVjRRIj/dcGI2wocpvR+OQ9kOqGokD1SxfsI6FI=;
 b=PGYwmyzSnO8lYIctoWOgKr2t65onJsNJa7izYBAlosChSzoMhxuQVHZKPEHEQBxErF
 sXfRuq2a1XzNswib0d8cMg0rihW7FrCu7FOAk2dTtQLZWGYGy9ABXBdLjvW9D9NnxBnA
 oosm/Niajf/mpckI3nkM3hRAVbUSKrxhwVla0YhYU2CWz2+0yX/NTktb4xD16ZZrzJZX
 CVHGeLaomqv4mq29V6+idz4gkPbWzvJQzrRF1/HIIzLp8H/ecJZDC4/xSBcPW3jsv0fI
 ASqobZfyy4a7E6iiDNvJZGy/cgckqAf7G15zJ/hrVrznYz7h9FrOfa7YOxqiVYnu6dNt
 uyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=EmnByVjRRIj/dcGI2wocpvR+OQ9kOqGokD1SxfsI6FI=;
 b=i5sCQZLS7yv5VBIk2NN7Ica/VBpcIP6UcJ89S3rC1wU9JeZCRkkIpOi1lb5EiMmmUt
 pElqb+/WNgOG654P4P7xvnfuS7NI5sPj6Ta6hu9/dSkPiQ47zB01R8vTD05R3ciZ9lmS
 KmOoLKNrabid+vaB3/RiRPg5Ohc+WXqHvOseXI/iWB4oOjl0dYAJySRohmdc2hxNeoMC
 X1R/F5Pg69p8mb1UDa9bSa1skVyGGF1H2uDFOjYHlGS8DhSJ+04eyNSN5VLLBWRqB95Q
 5egUofo2T6CS21xX+tObtHt76ItgeioJfpQz08sj97ihmdMVHnjPjVB8e5g/qtcmUqcX
 Xe3w==
X-Gm-Message-State: ANhLgQ0oHoW9WQnR4oAXuy83PTQIcv0WdFK7smtJmOA/F8V5h8YoRUOK
 tVBBmqTgWzu2phoyTXkEXM2GBTCQA+AoMQD8t70=
X-Google-Smtp-Source: ADFU+vt+mQw1yjmVkBmonSZw8/B/4gW17tIa0gpklK4ZS7YtDt7d/ZGnfrN55iZH7Dz+OutTWeed17yQ5dnBTL1oCvM=
X-Received: by 2002:adf:83c4:: with SMTP id 62mr15165852wre.105.1585566050510; 
 Mon, 30 Mar 2020 04:00:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:fcc7:0:0:0:0:0 with HTTP; Mon, 30 Mar 2020 04:00:49
 -0700 (PDT)
From: Harvey Terence <ochefut11@gmail.com>
Date: Mon, 30 Mar 2020 13:00:49 +0200
Message-ID: <CAPCmsMN+i5LC6n1NjvXYcMugLxMRDMonewij4LkX+B==D17u0A@mail.gmail.com>
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
