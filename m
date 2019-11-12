Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FBAF9598
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 17:26:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 41D97203D8;
	Tue, 12 Nov 2019 16:26:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zWVvBs8VRAjh; Tue, 12 Nov 2019 16:26:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6DB2E203B5;
	Tue, 12 Nov 2019 16:26:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA4B1BF479
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 16:25:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 177EE8757E
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 16:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3Qa0QNjcT3F for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 16:25:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 56744874AB
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:25:57 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id a24so11731336edt.0
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 08:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=qNdulMghwGPBvmgJ8scwCvXDFRwh4jWCkPxL6qrSIjQ=;
 b=s0OtgEyBzfQDX6l8iBQ656aK39QT9cYJrK6j6UoM8p49K2fPKW+lTxH2miOW+ifKyj
 EgnDTf2vYoyvMousqCqSfvE48FZ3pllh3Rl8BSfrN6LrYDdLlaYxolDctk1GAV1Dc5Ha
 rjBNRq3QMDUEjQN6llJceHRYeZCIpbjOgVUOu5ltYM5HPsYUtrtS1xpUtchKOBWMyXlF
 fI/xOEvBVdgh4UgxpuIcK/uKoHa2ydxQAth1DQZonHDQR53zY6EyvOIV8NnE+3duVFJ5
 9Fg5pah82j+3sEATgT+JUt6VVyeRs6ZQqyq7iFVH/iLTxqhrZpQwNaf2jdk9KH50OtNp
 8DMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=qNdulMghwGPBvmgJ8scwCvXDFRwh4jWCkPxL6qrSIjQ=;
 b=HIDKfIutwoao5xbc1Ls5S6RQNcV3Z1aywJhYWOm0y3M0gQQdaD4ptfsTcxcGGDz2ek
 aaMidr69qTqi6xghFRYUvAMOPaDvFf7YoiByndS4T5dKoO3QOOhmU2rGsKvkPgvkoXmj
 jx6TYlYWQogloOjRQbZmnWn9z5zs+TrWyR+0ZrndJ1OvkOVHsbKWbd2AcLuOu2x3YPfT
 u11KwPSpcHXD9NaKWBCdpaMzUlxvOmS4ZEEwNVvcEtLNswTDrW7yt3E9kZ1bs1WzzP5X
 LW/CguJ96h4mZbUTx9SzC9MRwJUZ/OLaxhaO/m46hBojQzv9E8h3scFPsa8ywMHBqZI9
 n/9w==
X-Gm-Message-State: APjAAAVhOm4gDcqt02TwMjVjYgi5n2pJewavNQqj0NNatObAmPb92CVs
 PyA5SYC1FezGwTDESUDuxe3SGiZRRLHGwJdBNdo=
X-Google-Smtp-Source: APXvYqwhqdRow05DXBj589Vp0KphTrjQ6ciBUn4XUPHVWtpvXM4UmtBTg9o5ymv8pW+npmlqSU6LWMvGS55XZEcH0aU=
X-Received: by 2002:a17:906:2552:: with SMTP id
 j18mr29694003ejb.244.1573575955519; 
 Tue, 12 Nov 2019 08:25:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:1118:0:0:0:0 with HTTP; Tue, 12 Nov 2019 08:25:55
 -0800 (PST)
From: "MS. MARYANNA B. THOMASON" <eco.bank1204@gmail.com>
Date: Tue, 12 Nov 2019 17:25:55 +0100
Message-ID: <CAOE+jACK6QHRhhASVJWjC0bme2moy8jH40ErzPVPxpbcmo8RNQ@mail.gmail.com>
Subject: CONTACT WALMART TRANSFER To pick up $5000 sent to you this morning
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
Reply-To: walmart.b100263@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 CONTACT WALMART TRANSFER To pick up $5000 sent to you this morning

Attn Dear Beneficiary.
Happy to inform you,I have deposited your payment funds
$10.500,000MillionUS DollarsWith Walmart international money
transfers.
Receive the Money with Walmart | MoneyGram service.
Walmart partners with MoneyGram to allow customers
easily receive money transfers abroad,
Contact Walmart international money transfers office -Benin
Receive your approval payment funds $10.500,000MillionUS Dollars
HERE IS WALMART CONTACT INFORMATIONS.
Contact person. Mrs. Mary Anderson,Dir. Walmart transfers-Benin
Email: walmart.b100263@gmail.com
Telephone. +229 68823234
Text Her on this international phone line. (256) 284-4886
Ask Mrs. Mary Anderson,Dir. Walmart transfers-Benin to send the transfer
as i instructed.
we agreed to keep sending the transfer to you $5000.00 daily.
Until you received your total payment $10.500,000 from the office
Once again,
make sure you contact Mrs. Mary Anderson,Dir. Walmart transfers-Benin
today including your infos.
(1) Your  Full Name==============
(2) house address=============
(3) Your Phone Numbers=============
Urgent to receive your transfer now without any further delay.
Thanks
MS. MARYANNA B. THOMASON
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
