Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 983F759A53B
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Aug 2022 20:13:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A49EF842DE;
	Fri, 19 Aug 2022 18:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A49EF842DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w8bxMj0f_noY; Fri, 19 Aug 2022 18:13:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43306842D8;
	Fri, 19 Aug 2022 18:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43306842D8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2ACA1C11A9
 for <devel@linuxdriverproject.org>; Fri, 19 Aug 2022 18:12:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB5534059D
 for <devel@linuxdriverproject.org>; Fri, 19 Aug 2022 18:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB5534059D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wbam4aELEByq for <devel@linuxdriverproject.org>;
 Fri, 19 Aug 2022 18:12:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDDC8401B7
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDDC8401B7
 for <devel@linuxdriverproject.org>; Fri, 19 Aug 2022 18:12:56 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 c187-20020a1c35c4000000b003a30d88fe8eso4485907wma.2
 for <devel@linuxdriverproject.org>; Fri, 19 Aug 2022 11:12:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=zwjVZwGnm2rg15FlsdzE5yN9sbaUulvkvf2Xp5lcvmE=;
 b=Aw9OIMTwF638XXVzWkcne8KKM+E0xCSGVQiPS+HI8JsIutpN7pwDGqkWcS4oogxOac
 dcVzVDVfmrsDsb7mRH562z45+VxY2cjFFmCYrvX+ceJVA0msTdZG4psmnFD9Sh7nb6rA
 bwqgfPAYpzP5Pqfvjp8ZRan+fmXHsAvqYNgykXo56tQwH5ktJEyw+2lkEJgnLy2TzR5w
 Ad6qdORQsjp3WeTiGMab8t5oCGJzgNwwef+zMcZbdyL6y1M84Xb988evrXNJ7plmWjqR
 mfk/C9J26kSlFn41tI+0lJtiPgI4X4Q5zmE4s9ZqQZ6AwcF1XKvMFFvwErqzmpV5Q/iP
 ki/A==
X-Gm-Message-State: ACgBeo2mwkwxu2bJqRFuMZIh5eMQ2HRsN7HZRDS19lAuudO+hRVrVXEf
 rR4k8wXe4peUz6MkTGsTcKhPb1lFYBdXy5RG3HY=
X-Google-Smtp-Source: AA6agR4lXazkMo7Nec39fJSHPmnq+VWZnYbFPD4dqsQubrro9gzeAFGsid/QNmuf8BTwnj/eX1la+TikWVbwEGHAt8Y=
X-Received: by 2002:a7b:ca48:0:b0:3a6:2932:c16b with SMTP id
 m8-20020a7bca48000000b003a62932c16bmr4746430wml.140.1660932774835; Fri, 19
 Aug 2022 11:12:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:6a4c:0:0:0:0:0 with HTTP; Fri, 19 Aug 2022 11:12:54
 -0700 (PDT)
From: International Monetary Fund <anyanmileelijah@gmail.com>
Date: Fri, 19 Aug 2022 11:12:54 -0700
Message-ID: <CANZGQiS8Er22A7+E+fQrbbxYMHvf3pbM14aTUtZJWMkcYPv3ag@mail.gmail.com>
Subject: Contact DHL for your released Funds
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
 bh=zwjVZwGnm2rg15FlsdzE5yN9sbaUulvkvf2Xp5lcvmE=;
 b=iop74KZcMg/vfJfikWnrxNf2smK63h/Br1gvdeSttzb1OihxS3uoqGdjiuh8K4VwvQ
 Fxnt7ZXS19sF7hFVxbmPKrsuxzn5BDrVpd2A7chlGGkfAFmUS2y8hhtQATQ73v7gVxs4
 jXHPdeYus+M3ZdWa2LSoSH41VuGrQKwpjimL0E23YU8f/JJHRVzmwyp8yeDjTsCkMSyO
 s0bi+Kc6Al+/I6lWtlPxFnegTAWF8NkvfNeJMz7ZRQectHDBWBxdIJkiUP7BEwo3hPE9
 vlClfspvR82xj2x+zG+SHotOMvSLV7o14u/GdMjEJoy1s+cNIqcYDBEqIkrqbg4G9/ls
 xoLg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=iop74KZc
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
Reply-To: imf017851@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IMF International Monetary Fund
Fiscal Affairs Department
1900 Pennsylvania Ave NW, Washington, DC 20431

Attention: Beneficiary,


This is to inform you that the IMF has instructed the Courier
Companies in this Country to release and dispatch all the Monetary
Instruments in their Custody to their owners before the end of the
the first quarter of the year 2022 unconditionally.

During our investigation, we found out that most of the seized funds
were not for illegal transactions, including your fund that was
stocked with the DHL for some months. We have passed instructions to
DHL to dispatch your Fund to you since your fund was not for illegal missions.

We have paid for delivery and insurance charges and also supplied to
DHL the legal documents needed to deliver your Fund to you.
We understand that the content of your package is an ATM CARD worth
$3,500,000.00 USD, DHL does not ship money in CASH or in CHEQUES but ATM
Cards are shippable. For your information, the VAT & Shipping charges, as
well as Insurance fees, have been paid by this firm.

Note that the payment that is made on the Insurance, Premium &
Clearance Certificates, are to certify that your Fund is not a Drug
Affiliated Fund (DAF) neither is it funds to sponsor Terrorism in your
State. This will help you avoid any form of query from the Monetary
Authority of your State.

However, you will have to pay a sum of $195.00 USD to the DHL Delivery
Department being full payment for the Security Keeping Fee of the DHL
company as stated in their privacy terms & condition page. Send your
Postal address, telephone, and your name in full. It is mandatory to
reconfirm your Postal address and telephone.
Kindly complete the below form and send it to the DHL DELIVERY POST
with the below information.

It is mandatory to reconfirm your

FULL NAMES:
TELEPHONE:
POSTAL ADDRESS:
SEX:
CITY:
STATE:
COUNTRY:

DHL DELIVERY POST
Email: dhle76384@gmail.com
Contact Person: Mr. George Ted.

Have a great day!

Yours Faithfully,
Mr. Jerry Harrison,
Regional Director
International Monetary Fund (IMF)
Contact DHL for your release Fund ATM CARD.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
