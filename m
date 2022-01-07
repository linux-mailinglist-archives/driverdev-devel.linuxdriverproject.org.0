Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AAD487679
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jan 2022 12:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 405D68332A;
	Fri,  7 Jan 2022 11:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pN-WxmyohSBD; Fri,  7 Jan 2022 11:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9866D8141F;
	Fri,  7 Jan 2022 11:28:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDAA21BF2CA
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 11:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C314D40193
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 11:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c0KaCNMnYvPi for <devel@linuxdriverproject.org>;
 Fri,  7 Jan 2022 11:28:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C80C9400CC
 for <devel@driverdev.osuosl.org>; Fri,  7 Jan 2022 11:28:08 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id a18so19918899edj.7
 for <devel@driverdev.osuosl.org>; Fri, 07 Jan 2022 03:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=6AoyVOWf7c9RFjpxEiT+w9c2unEokAeC0sBZuIPQ5D8=;
 b=EpGVZ/3IMjYQc+vwdcZYOi5K7rRJWKzPPWeUjTTrqUJBncEoLePtgVMmIMSXwizgar
 s1oAMlaF+WUs4FR9wx725g7vWKq1OQVSKMnzZd8N6Bg0wxSA0Fg466GuGcEOoPRlXiKk
 MbxT5TIaSnTnHX8AX2w4RNpR7GJiD75/y21B28gcmvLebZX/mpHiK4m67ShbPnCDxhNG
 +261iaWBzhP7x5Ye0WcPfJonGH9M4bkmiNg+HkHtVJpXH1FdIo+rQv8l2aO/m8NESL04
 9YrDix5/ptNLc6rSmnOQYx5RIXBw4c+3VFpwDbdbIgqOT9C/BBxvAnnuZrnrQnPOsA1N
 EjWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=6AoyVOWf7c9RFjpxEiT+w9c2unEokAeC0sBZuIPQ5D8=;
 b=m0UmH7wmh7aqoiUMscs/TQ0lqcu1AubY8Fu5EnDKuHgRXVhtfHK3OwfF50RdSdQc3h
 AxuEFhk7D8oB/B3FJ/yS38rVnsDRiGSypyGn4rVQkdwVjO2J6yHcyN6MXyEQ5muhOQi8
 gBXqOIHdf4v6wRXg0o6VdnM07UwRewB3b7pdGtgS+NbYxECONaBZX/7PPTlRu5H1YMOi
 8a04U3YFpTsGYcK/23EYRsAXmlejPM6Exp0oAh7VIeYNZkz/UFbviQsIqx6qYzwtKnh7
 Y+Ye4Htd+iI3ZmnfyEa7mxy5spxqxz3iWuktIb4FAXSq5vOAKkvTa2lQ6zbOnYeYJ2KR
 SvGQ==
X-Gm-Message-State: AOAM533itfWomEeA97lmm66GU4X8dtR4WrIlngzjpdSRqlM9/2Aj9eTy
 Vjo7tetPXzBi/+lp5Vc9oiL9IHmIgHK2K7oKzmU=
X-Google-Smtp-Source: ABdhPJx4eIy0E52115KmI1Y5Z4kbx+CQf6ja8HAeHXxJHRpLmrDRmng3HswNwMMnM6PTrY0YAlOZJ9Ks5d0tqH7svY0=
X-Received: by 2002:a17:907:2da6:: with SMTP id
 gt38mr48780317ejc.61.1641554886558; 
 Fri, 07 Jan 2022 03:28:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:99c2:0:0:0:0 with HTTP; Fri, 7 Jan 2022 03:28:05
 -0800 (PST)
From: Rev Isaiah Michael <mrakainkarim@gmail.com>
Date: Fri, 7 Jan 2022 03:28:05 -0800
Message-ID: <CA+2x46nTPw1cccjOr67V+S7KJ6sXhJ9bdDjemcyq+bi90j4eWw@mail.gmail.com>
Subject: VIA ATM VISA CARD. IRREVOCABLE COMPENSATION PAYMENT OF $700,000.00
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
Reply-To: rev.isaiahmichael@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention: Sir/Madam.

We have actually been authorized by the newly appointed Minister of
Finance and the governing body of the United Nations Monetary Unit
Investigate the Unnecessary Delay on Your Payment, Recommended and
approved in your favorite during the course of our investigation, we
discovered with dismay that your payment has been unnecessarily
delayed by corrupt officials of the Bank in an attempt to swindle
yours fund that has led to many losses from your end and unnecessary
delay in your payment receipt.

The United Nations and the International Monetary Fund (IMF) has
chosen to pay out all the United Arab compensation funds to 150
Beneficiaries from United States, Europe, Canada, Emirates, Bahrain,
Qatar, Saudi Arabia, South America, Australia and Asia and Africa
Continent through ATM Visa Card Consumers, businesses, financial
institutions and governments to use Digital currency instead of Cash
and Cheque.

We have arranged your payment to be paid to you via ATM Visa Card and
this will be issued on your Name and shall be posted directly to your
address via D.H.L or any courier services available in your country,
Upon your contact with us, the sum of US $ 700,000.00 will be credited
to the ATM Visa Card and this will enable you to make withdraw in ATM
machines in your country with a minimum withdrawal of US $ 3,000.00
per day, Your limit can be increased to any amount upon your request,
In this regard; we will have to furnish the requested information to
our Directorate of International Payment with the followings.

1. Your Name:
2. Country:
4. Age and Sex:
4. Occupation:
5. Mobile Telephone:
6. Delivery Address:
7. Id Card Identification Number:

We need your urgent response to this email as directed to avoid
further delay, confirm and get back to us immediately.
Yours in service,
Rev Isaiah Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
