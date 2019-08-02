Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0C67FC38
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 16:28:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9082588648;
	Fri,  2 Aug 2019 14:28:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id por9pPVWTTiI; Fri,  2 Aug 2019 14:28:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E03E9885F6;
	Fri,  2 Aug 2019 14:28:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 558251BF424
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 14:27:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52D6988612
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 14:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36gUAzQQ-oHN
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 14:27:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA598885F6
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 14:27:58 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id o9so48974689iom.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 02 Aug 2019 07:27:58 -0700 (PDT)
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
 b=B1BRjC3BjQdqa/rmRPk7Eb+t3xcBsaY2afUrzqoIbforZp0roCUV2GevIjZpFzm1fU
 zj39Idoxk5yCIPe8gQcgKO0j+osZqqgZa8TRj6XddSAejbYi2MbPTc9y0xhd5o3QSPu/
 YelJL0QDUJP0QKR8khQhZc6BTDtB9LNGPzr/et2y4/rmT/7uRZ2caw7busOyYmmo8tW7
 LPq3dYv+MQwEgejf2eEXOvxn9b5qBmqcLqLJHQnFKp4Xt1J7BFYMmtyaRMYmRYDZ4QLR
 81A+ZTU6H2MzuW73jljSEQ7XbdNu3B1voG/txzi/z79IpifH+JN9UtT+aDihZT/BLzVz
 ybeA==
X-Gm-Message-State: APjAAAULdk+4aHS/yxyj640CA8oc9Q5KEOsLZLi277tkmYi1v9MP0dFt
 1dxm5GhuTeaBFfESzhVfn9QSo8vPXJlBVd3RDw==
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
