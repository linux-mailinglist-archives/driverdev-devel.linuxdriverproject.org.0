Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C72DC268AAD
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Sep 2020 14:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70042858FC;
	Mon, 14 Sep 2020 12:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8R20keV9vrD6; Mon, 14 Sep 2020 12:10:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83B1E85ABF;
	Mon, 14 Sep 2020 12:10:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A04B1BF3B1
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 12:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 056B4859D9
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 12:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lVfldexsVKji for <devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 12:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4CCAA858FC
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 12:10:53 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id t16so17328565edw.7
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 05:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=gxYQz48aGorfvze6exW0FuIKKJvVhs5z+cRnEenJUaY=;
 b=a7cpRrVGyjmaMKEfaGc84ngdB1IC/olV6hmky0P9JcYJItKjSzIR8nCCP7fx+xXPQW
 sarYQH9A1eSkyj9tHLtBpoUYqp+sVEoKI8Ox9AVoUIyP+fMwsG1Yzm1dyo7WMZoIs3T+
 tSwrIfuuvR+qj+YZ8h9iKn/NrPFREBpq6nepaZ17gFna9dppdB+SXDjmFbz7+Gm2pRRZ
 xAZJVWZgexg/Eu7Xe1D4fn7cyY/GWVY8XbzlYqPGTlU20XkqpK1Eq/jsXk3a2oyCa4Ue
 v6ue1a2mseWzhCmaxy6RkI0UcUdtHh2llXHNikmJeoOeTkIlsgdh+UTx8qArNK6A2xAv
 RgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=gxYQz48aGorfvze6exW0FuIKKJvVhs5z+cRnEenJUaY=;
 b=s3nheGZKhAsWK+++weWfasGrozLEr6py9zYGi2iZOcEKrJsFasHfIoGVx6lWnZY3UR
 IcJqAf9Rgu1W2BuHJcOHq+0Km4XDnDxWQ+R78k6FD3GSaIEiD49zqIhBmQWpm+S326zK
 Qj3U/e5Oul8xDlzfkuT4wWyD2KbaIWOJ5pJ5hx1rl9xzLxkPklgmrzuwXOSQkPc3SMNl
 +RBWQQdGWfBrSTYGWk5PEXHhD+CKDv8kW0To1AX4uNxY52T9OkovPp6Y7eN2pTmlw3HJ
 o1qC6QvfvkU9K5TWeTwIdOcaR4ByRb+tlUeGrt74E+r7fG9CfhsGq/K3pNrnYlEXiZYK
 P2VQ==
X-Gm-Message-State: AOAM531H4voWiGuZnv61/MAvDjLfM4oSys8DDP0/zJzeVyFlDB4VtNPV
 baRF7CD/q9Z4FRM5Z5mMInlRAuxlHY1LSL+mkYU=
X-Google-Smtp-Source: ABdhPJzuR0j2QEz1TmA7Jkeqg12xsZMHYEA0cdPF1wQU5LZ7rRQyZ4MjeqwBWLsw+xycyeaMq0G4YJ9PaDTrraO5EXs=
X-Received: by 2002:a05:6402:483:: with SMTP id
 k3mr17169095edv.24.1600085451805; 
 Mon, 14 Sep 2020 05:10:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:6945:0:0:0:0 with HTTP; Mon, 14 Sep 2020 05:10:51
 -0700 (PDT)
From: Ms Mary Mcniff <dhlcouriercompanymiami@gmail.com>
Date: Mon, 14 Sep 2020 05:10:51 -0700
Message-ID: <CAG_OktqfbE_fUSXzAL8uDCZU8NL9v5TXHac4eCw7hN2vqXQmNg@mail.gmail.com>
Subject: Your Respond ASAP
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
Reply-To: mrsmegwilliam6@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
From Chief Compliance Officer, Citigroup Inc CITIBANK
388 Greenwich St, New York, 10013, United States United.
PAYMENT CODE: FRB010
Swift: PTBLBXXX
==============================================

Attention: Beneficiary,

We write to inform you that Series of meetings have been held over the
past 2 weeks with the Secretary General of United Nations,U.S
Department of State and Dubai Union Organization this ended last
week.And parcel is under our custody right now, It will deliver to you
within 24 hours once you clear the charges which will cost you
according to the BANKERS COURIER SERVICES that wish to deliver your
ATM CARD card to
you immediately.

However, it is the pleasure of this office to inform you that your ATM
CARD number; is 29741733 and it has been approved and upgraded in your
favor .you call me for the pin code numbers. The ATM CARD value is us
$10.5 Million only.

Kindly contact the paying bank for the claim of your ATM visa card
payment fund $10,500,000.00 through the below contact information;

Contact Person:Mr Williams S Young
Director of Financial Controller
Bank Name: CITIBANK
Bank address; 388 Greenwich St,
New York City,10013, United States
Email:mrsmegwilliam6@gmail.com

Reconfirm the following information?

(1)Your Full Name=============
(2)Mobile Phone Number======
(3)Current Home Address==== ====
(4)Fax Number================
(5)Passport/Drivers license ======

Endeavor to keep me posted once you contacted the officer in charge
through the above mentioned information.

Your timely response is highly appreciated.To this end, you are
required to forward your payment information as follows to enable us
load your fund into the card with your information and deliver it to
your door step. as the BANKERS COURIER SERVICES are in charge of the
delivery services to your destination.

Yours truly;

Ms Mary Mcniff.
Chief Compliance Officer, Citigroup Inc
FEDERAL RESERVE SYSTEM.
Email: marymcniff7@gmail.com.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
