Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B9448F88C
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jan 2022 18:50:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1E8440502;
	Sat, 15 Jan 2022 17:50:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HexbPqzg_8xr; Sat, 15 Jan 2022 17:50:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 772FC400BA;
	Sat, 15 Jan 2022 17:50:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D9261BF3BE
 for <devel@linuxdriverproject.org>; Sat, 15 Jan 2022 17:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09822400BA
 for <devel@linuxdriverproject.org>; Sat, 15 Jan 2022 17:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aJTpAq34IlDn for <devel@linuxdriverproject.org>;
 Sat, 15 Jan 2022 17:50:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B39140004
 for <devel@driverdev.osuosl.org>; Sat, 15 Jan 2022 17:50:08 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id m1so14495520ybo.5
 for <devel@driverdev.osuosl.org>; Sat, 15 Jan 2022 09:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=2sEq9wJeb4ss8yrsKkSfkOiYCIMklDOHpu17iyV5OfU=;
 b=WWVMfxQ9eUsyqWgdqsBZ5MANmoDt5v0zQEr5gRZysC277rXEPw5fKMWSTSQjO/ITUP
 h4ldRcdqnMJeUW97TH/JCy3u8x1iqVtKmVUyDtKy4qqG/brzCRo38pIQ4qXIQ4nxPysr
 LqIGJGKS/HYnRD4Ax4PkDC+x0yKLbO9B4ipdxI6c1B8tWI7IPfstqri7JgC61dST24KY
 VSI7eWG6fsCoh2NzqonD63m+dwjbqcP0XSYUQIuEuNstd2DdCGjFVryvGgthOYLcV8vz
 RfqNT2SH305bq9AimPoLJGz9icHTfvzly8IC3lLf5WQb8o2rIIRRQGmFKmPr0cGmC0bj
 2IRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=2sEq9wJeb4ss8yrsKkSfkOiYCIMklDOHpu17iyV5OfU=;
 b=VZmr2ig94sVLwqVNTRrLBOLp78EJr9/SC6tI3LKWulCYtyuWcmZb3628TsfyFO9Vyb
 0Xlx+crY/sTa/FMd04dCC6P5YS6p5YszhpGrih5WcrdC8DQ5lGQAMozc/VlaKZS9jQuz
 haImbE9Fz8Hj502S3nIOLOSJtSPrla+C7yNRucpE/Dd2qLu23iSkG32H4YWPrl/CBcvI
 Yf25PpSqvodZMIe/jtg2yiiu35o8dZP9i1ymO6yTbbHTDRJaSCs2XFu6D6yFl7XCI/jM
 +MGD75Gkn9nsEOUHOMSzDMs3piuwCsppciHBu17zj4ppDMFe3fSfAmgX54qU+ixEQXuh
 FUxA==
X-Gm-Message-State: AOAM533nQmDCAPfwBzh+xjreXP8jt5NbWjZqe4b4VDoOIUHpwFrfTBbw
 RsDJddBrz+qqQ9LGP/ge6dgJAwyRKrzCPJctG9A=
X-Google-Smtp-Source: ABdhPJwwg0ZPBkl8sTOq6qTMGqYhWd12czM6EYzTE7u3Za8KxMQo0cMNeb3GC0CY97CeJ/WJ34Ia2m338qHXJwkeBOw=
X-Received: by 2002:a25:2cc7:: with SMTP id
 s190mr12054669ybs.186.1642269007927; 
 Sat, 15 Jan 2022 09:50:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:d60e:0:0:0:0 with HTTP; Sat, 15 Jan 2022 09:50:07
 -0800 (PST)
From: bill chantal <estherayuba0@gmail.com>
Date: Sat, 15 Jan 2022 18:50:07 +0100
Message-ID: <CAA9Jn=f_ToCfiaRJKBnOaZ4-dW87tTFdV3TfpNSOA3ALWcPY_w@mail.gmail.com>
Subject: You have been compensated
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
Reply-To: billchantal013@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 

 ATTETION:BENEFICIARY

  You have been compensated with the sum of $ 5.8  million dollars in the
United Nations, the payment will be issued on the ATM visa card and will be
sent from the Santander bank.

  The bank had confirmed your details through  Mrs. Lisa Bagwell of
Presidential Committee on Foreign Payments Compensation Payment Officer
which is(Foreign Debt Management Department),

 In conjunction with UNITED NATIONS FUND, IN AFFILIATION WITH THE ECOWAS on
payment of your funds through an ATM VISA CARD swift code per day at
maximum of $3000,which means you can withdraw $3000 each day until you
received the total sum of $3,500.000,00 dollars (Three Million Five Hundred
United State dollars) the payment will be issued on the ATM visa card and
will be sent from the indusind bank.

  Our procedure is that your ATM CARD will be sent to you by our courier
agent there in your country with your pin code given on separate email
directly or on your Mobile SMS unit.

  We need your information to be assign address,whatsapp number,passport
and with the copy of your id card.which would allow the bank to transfer
your fond to you.

privavte emails.(billchantal013@email.com)

PHONE: +1(619)833 9357

Contact Person: MRS BILL CHANTAL
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
