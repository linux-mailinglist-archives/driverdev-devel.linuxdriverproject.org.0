Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6EB7FC39
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 16:28:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B6F98864D;
	Fri,  2 Aug 2019 14:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k1XfHSSgAIEN; Fri,  2 Aug 2019 14:28:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AA8C885F6;
	Fri,  2 Aug 2019 14:28:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 594A01BF9BF
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 14:27:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 53CBA2344A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 14:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eONLSeG7kURE for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 14:27:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id C760B204DF
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 14:27:58 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id m24so152618413ioo.2
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 07:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=COQSSC3FyQ9zsjfcJetSPqTqonJJTUUS9kZ5oAAdlbY=;
 b=Dm0i06YnHPrJyh2t6AxP5+pDWHhxBDyVRQ3NyvWhqM+hhTTGp2a1tA25QSRPIpFGLd
 d2WxDEqNJxBlr268x4wTD4GVHW9PLpzYFkVHYy/zmFf8TH60Wc5zmomKg9S1czjqwqXW
 IItf257uk+GLejIInk9VtdCCesaxXki5WBoHqa11or+0rBk11whwzuISjO/gJDdkEXmj
 //6PEGhIkAS8Z43inMdfHFu+6fV+AyQsHFHwKnpvDA1+C/FSEbP8oOLpmaetwGPZefEb
 NQjxvs9b1m1BUWOEjh6oBL99uPFNquPqipy2WSvCZQoAeY21nlbY7RMFeC75fOq8fIN4
 oNQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=COQSSC3FyQ9zsjfcJetSPqTqonJJTUUS9kZ5oAAdlbY=;
 b=OXcRKbAHTCeGJwz3569r0DfS/FVdoP0SnuYPbVMVLp70qwnxquCACuPBVd5DSfeyZy
 uTyfTXNeCiMXi4OK/D+YVAVFD1iWVfwCnWjLt+IiTDqVMY5MPsoAYqbDV24uO50cP7uC
 z1DEbU7siss9Yx6+v5Rz/M8Rrl9znQh7hS7zGK+YQjUCh9d6FGbfT7CB4f1Ew6j0fSdZ
 zdpOnyaC0iUtGA+x8OuIFz5+oAard0jpPNxkPdCgEEjk2blBUiKPcsO7wgcimmGuIZgV
 OTnnCZRn2u6n2VcEaWJREVHz7VghNnTlTfjAytmBfKQxQoATjFFeOzQcW9DzzZ/biU2l
 sqfg==
X-Gm-Message-State: APjAAAV/vM1P28P7p2vkeYtyNfMgkJL3kQohoT/JBd17GFixCdIjyAZR
 uPVqU6NcZqJAvFkJiRONm9hk2v7F07rA28AvPg==
X-Google-Smtp-Source: APXvYqyIK5r/8JgcUZtRsBu9woEfJVYsrXqVzJCWby0n82DaBHIAmJp1K0rizYnOtojI+I9XChM8U73pDitezk79m2U=
X-Received: by 2002:a02:914c:: with SMTP id b12mr3176875jag.105.1564756078071; 
 Fri, 02 Aug 2019 07:27:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:9188:0:0:0:0:0 with HTTP;
 Fri, 2 Aug 2019 07:27:57 -0700 (PDT)
From: "Mrs,Mary J. Anold" <info.zennitbankplcnigerian@gmail.com>
Date: Fri, 2 Aug 2019 15:27:57 +0100
Message-ID: <CABHzvrknBv9u7WG8E3TPnxKanLiE+imPGF56fwZVo4Fpy0mHbA@mail.gmail.com>
Subject: I have already sent you Money Gram payment of $5000.00 today,
 MTCN 10288059
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
Reply-To: moneygram.1820@outlook.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn Beneficiary,

GoodNews
I have already sent you Money Gram payment of $5000.00 today, MTCN 10288059
because we have finally concluded to effect your transfer
funds of $4.8,000.000usd
through MONEY GRAM International Fund transfer Service
Each payment will be sending to you by $5000.00 daily until the
($4.8,000.000usd) is completely transferred
we have this morning sent  MONEY GRAM payment of $5,000.00
ready to pick up by you, Money Gram payment of $5000.00 sent today,
MTCN 10288059
So contact the MONEY GRAM Agent to pick up this first payment of $5000 now

Contact person Dr. Don James
Direector MONEY GRAM Service,Benin
Phone number: +229 98856728
E-mail: moneygram.1820@outlook.fr

Ask him to give you the complete, sender name, question and
answer to enable you pick up the $5.000.00 sent today, Also you are
instructed to re-confirm to him your information's as listed below to
avoid wrong transactions

(1) Receiver Name--------------
(2) Contact address--------------
(3) Country---------------------
(4) Telephone------------------

Contact Dr. Don James for your MONEY GRAM payment of $4.8,000.000usd
Note: I have paid the deposit and insurrance fees for you but the only
money you are required to send to them is just $19.00 dollars only for
transfer fee
You must make sure that you send this required transfer to office
before you can be avle to pick up your first $5000.00 at your addrss
today.
We need your urgent reply

Best Regards
Mrs,Mary J. Anold
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
