Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A91E859A53D
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Aug 2022 20:14:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4884582849;
	Fri, 19 Aug 2022 18:14:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4884582849
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Auo3H-pbm-1C; Fri, 19 Aug 2022 18:14:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E52AB827A0;
	Fri, 19 Aug 2022 18:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E52AB827A0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2BEC1BF329
 for <devel@linuxdriverproject.org>; Fri, 19 Aug 2022 18:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CAE1482849
 for <devel@linuxdriverproject.org>; Fri, 19 Aug 2022 18:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAE1482849
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zHTwrk2l9knU for <devel@linuxdriverproject.org>;
 Fri, 19 Aug 2022 18:14:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01DA1827A0
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01DA1827A0
 for <devel@driverdev.osuosl.org>; Fri, 19 Aug 2022 18:14:19 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 m10-20020a05600c3b0a00b003a603fc3f81so2871653wms.0
 for <devel@driverdev.osuosl.org>; Fri, 19 Aug 2022 11:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=zwjVZwGnm2rg15FlsdzE5yN9sbaUulvkvf2Xp5lcvmE=;
 b=V7hKjT5Ns76YB/qh/UNisPwLYUyU+Ia4vvwjMwv6K9HQDhq9gUnqOfUGi2g2nBpN1o
 GPVp9kBbRB8P6I4ZxtBGpJVZr8zPzfZOFn/ANB3x+a6JtFO4dKBFXt1I19Cj2sxJL17v
 Mq0xUIIHsWD4iz7cFvD/xl4pu8fCb1MyYPtA7w4WzFekz/nTitHz1UOEkjbg+u0LxdRU
 weNjv0YRT9+nUiiqtzH/epEHA8jy19lATDcW6c1kvbCy7BmeswE9/UsB+85YJZpBcuAK
 qFS1XNfAM9FIHttozSuhlMw6NQqj11CmA2S2l2f7dRbJ+hI6MCNJzdgPstqRc+83Vgr5
 S0lw==
X-Gm-Message-State: ACgBeo1EAe2fjkS6PmxNATz7WofGNcoc38TDO6PylISOirMAb0Qccc7C
 uvFvc7C1chnKvYzTLsTUDhMsv61zDejou8bhXWk=
X-Google-Smtp-Source: AA6agR70x9lSMys9KxzbBYrxs/96tG7ucarvw+uzuekBQ8bEaoyY2e+MUaPZh4IfSysKwxSEXMqh9aIWNK881rnZuWg=
X-Received: by 2002:a05:600c:a02:b0:39d:bdf8:a4f4 with SMTP id
 z2-20020a05600c0a0200b0039dbdf8a4f4mr5477463wmp.201.1660932857913; Fri, 19
 Aug 2022 11:14:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:6a4c:0:0:0:0:0 with HTTP; Fri, 19 Aug 2022 11:14:17
 -0700 (PDT)
From: International Monetary Fund <anyanmileelijah@gmail.com>
Date: Fri, 19 Aug 2022 11:14:17 -0700
Message-ID: <CANZGQiQHMkXNORgkfZEO9rrgPDuJGc77roQ3ONugTZXE-yxyPQ@mail.gmail.com>
Subject: Contact DHL for your released Funds
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
 bh=zwjVZwGnm2rg15FlsdzE5yN9sbaUulvkvf2Xp5lcvmE=;
 b=GrPx28VMQ7ElPzHoHK4EA5u8QDFebckddgdubyqWQmx6qj/JmM6JxpnrBjC+9A+od4
 jiidXFN6Wyw3PA/NCsOMpvQrZT6dbPgFWA1qnmIoKSLLEEJBQsxs07eljs7DBokGP+lp
 /AUkjeb2RGD2ndt3ZFS8mPre7zG41wpt8newICTdmsS9nB0Xs2ZAT5a2wLOkpPJAau1P
 K8F7iuec4kZP9X56omJatIay7SbWSi4lnDKhZtPZoDOsdp7KH6iFLmn+pNvdDXFzE/4x
 7MJIVmmcKNVZAE3v7lABXrBcUjn2ue8/gHSI1T9nACVxBf36juWhiZ2zObUMXw0fwBIl
 PoMg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=GrPx28VM
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
