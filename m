Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB4E268AC5
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Sep 2020 14:21:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BCB2E20791;
	Mon, 14 Sep 2020 12:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tl4luzqJUQ+Z; Mon, 14 Sep 2020 12:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 152FA204DD;
	Mon, 14 Sep 2020 12:21:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D6DAA1BF3B1
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 12:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D108E85FC9
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 12:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uh5Ce-Y5IxI9 for <devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 12:21:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5785F85F95
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 12:21:38 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id mm21so5463383pjb.4
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 05:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=gxYQz48aGorfvze6exW0FuIKKJvVhs5z+cRnEenJUaY=;
 b=Y72V01Y7D38jrnv2+lp/+F/5v4w6hQRzvbwdLmIED1Cdz/OI8id6ts9aDKlbzGMBad
 MnnuBLEWC2JgiiWpRaFN0Z30tEgjCOZfqvj+ueImThvzmNbSgp4015KzZVuv66g3z/lP
 LzDI94PhFUH3afNR5EXZyyFBbrD1I/MFJ3Nkz6/eUsH6YdRfBhDmy0iOiQT/ut15a/F/
 2uqvtB7ozj0pLTZ7lvP7chXsZuLvlxuEfAyijY+leJOA3p5gdCAziLTw5uKZKM5crA2G
 ecNq/43hkmzlRg9suk5yp6xCGjPgchTkM4y3nPyRMzV2UIn0K8pLTK6csXsT7TImSOCD
 KbPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=gxYQz48aGorfvze6exW0FuIKKJvVhs5z+cRnEenJUaY=;
 b=MHcAzh9h+GNYWo3zNayugIxLPrRTLfE8AvZ2gr70tW23TFgrujUf9yeU57kUrlNS0k
 8Tz/YN/sceiuTSw75EPBukYsNqCGkIGu4XMf11ImlcmsoTVgf0UVIh3yMQa0T6xyaJDX
 Mbz5n1qJbTlXAt5RlX+ZglVi8IJpcSIwB7zqXmHEiVF4vUzhsQoQnYssGkzkSNXuCC8A
 mhyne/DrBYQNtZKOEHsw7/ylGyPwpGGB03uaWugAigtDJh5oAKCNtMPeIqon9oHnqrrD
 vNWR6YgHrDCtZsMznBIhk6IeqouYffGzDfZKWU6xUqsmL9LvpJHXqOjc92muQ58uPbXQ
 m5Ug==
X-Gm-Message-State: AOAM532mbFVOX4ESJataKTStLnMiLjVW1doeo5uyHgy77YGrW343tHJZ
 bNYKeudavCVGLZEWc14J+3a9IQrozO4kduvCXfw=
X-Google-Smtp-Source: ABdhPJxPA29aC2HKWMhcPJk0hcJxierOk7vxa3Vg0S6AcR2fSpqV0w+nR5eeTcYmAFqgJQFApTFOT/yJqxeeVCG2qxs=
X-Received: by 2002:a17:90b:1b50:: with SMTP id
 nv16mr13859839pjb.153.1600086097874; 
 Mon, 14 Sep 2020 05:21:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:60d1:0:0:0:0 with HTTP; Mon, 14 Sep 2020 05:21:37
 -0700 (PDT)
From: Ms Mary Mcniff <diplomaticstoragecourier@gmail.com>
Date: Mon, 14 Sep 2020 05:21:37 -0700
Message-ID: <CAD72A3NUZctATG1n4P-KrGh0YVRL1bW1q3-k667BOEaD0PNY0Q@mail.gmail.com>
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
