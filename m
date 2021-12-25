Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E6A47F498
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Dec 2021 23:36:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF4854061F;
	Sat, 25 Dec 2021 22:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f017aCeprSHd; Sat, 25 Dec 2021 22:36:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB7B840602;
	Sat, 25 Dec 2021 22:36:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A5F21BF2C5
 for <devel@linuxdriverproject.org>; Sat, 25 Dec 2021 22:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 116EE823E3
 for <devel@linuxdriverproject.org>; Sat, 25 Dec 2021 22:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7eGWh2B7ThP for <devel@linuxdriverproject.org>;
 Sat, 25 Dec 2021 22:36:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com
 [IPv6:2607:f8b0:4864:20::f44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C63481CE9
 for <devel@driverdev.osuosl.org>; Sat, 25 Dec 2021 22:36:12 +0000 (UTC)
Received: by mail-qv1-xf44.google.com with SMTP id fo11so10595569qvb.4
 for <devel@driverdev.osuosl.org>; Sat, 25 Dec 2021 14:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=OZJwjfFDQdewi+xbeyqOBYzLPwD/79wL8NpiYm7+qHQ=;
 b=Gyp9WIyBnnGr3tkpu5Cytnt5qxX9h2P4n/IIvPheA1PkNJa+IAkMoJqLN1PoS9XvSR
 Y/so2MsTP/M95zcABSLgBYY+id17vXv4wbyw3KQpHVDrKwBQDNGAF5PWCgFpIGWj+Dut
 lY6VKl1IVxQv6V8E8MvE6WirZ1Iah1SyP7jXhh5GZi56Nsd1E59OL8x8wmy2o15mk2c8
 zv23KMZp9/qziUOIWGnXI5uvvTbM/4QX6L4cEXM5qpCNo6MTFCND92f3gWpfO17y2Ein
 GFDHnKkTLdhtLdjmQQ39p1P2sFb5BLnIxaxXXSGf3j6OJ57P0aCubbPRzIxt4NTVyr6A
 0UCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=OZJwjfFDQdewi+xbeyqOBYzLPwD/79wL8NpiYm7+qHQ=;
 b=4i/QVmic313egpQ9ZjCYrtNvn/rfvbATRis99JGyBVfEyn8IzRe5waIhX3Taac8ffT
 aSOh8E1DavFm8Ag52KyTKbA22FzlbV1s8G0jbgornAkTjfxaS1nJpSsayAJZLfjOYoFk
 UQHMCvzQOoTuY4k3JDaZB0VcVBDNvRMISl3QIijWPtu7CPwQHSzyP+6Lfe+r6Mn+MKOE
 IziBO5q6QAwpWvKtRiEVyPOJ4KSxnncKT/RcB7PKpygGH0UlJuPH0dUvf+RBempee6m6
 ghMc3LYV7UkTQxfyOzDnlG4pSCI2KdJAMMXthDWBZddY/0w2cy0Iujo1fu/H5OSM+Xf5
 sUzw==
X-Gm-Message-State: AOAM532M4OuAerd38PO25OedQb9qg2E7ZJlf2GiIEsjqFSZAz2WFpwf9
 /cpu6C80ngP4dXrrdkvF0Ly86SIPaiNdovOQQuE=
X-Google-Smtp-Source: ABdhPJxvuHB3g3Dx1Ixb3eg8MDtNHQdlxbLReMqA7xE96qOZ8zXoMX4/nGQhZRbG9pozaJuBNWgmBrS93eu/ufauG38=
X-Received: by 2002:ad4:5945:: with SMTP id eo5mr10168774qvb.22.1640471771120; 
 Sat, 25 Dec 2021 14:36:11 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f8d:0:0:0:0:0 with HTTP; Sat, 25 Dec 2021 14:36:10
 -0800 (PST)
From: ACTIVO BANK <krishinakrish417@gmail.com>
Date: Sat, 25 Dec 2021 16:36:10 -0600
Message-ID: <CAGfATnA+rP4Dr-1wReo2EtaBA8cbekoVeTtecNUGBsKoCP5v_A@mail.gmail.com>
Subject: URGENT RESPONSE
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
Reply-To: activobank5@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 

Congratulations!

The United Nations has come into conclusion to endorse compensation
fund payment of six million us dollars ($ 6 000 000.00 ) to lucky
beneficiaries across the globe
through the help of the newly elected president due to covid-19 (
coronavirus ) that has cause economic melt down in different countries
and global hazard to so many lives.
 The United Nations has instructed the swiss world bank to release
compensation fund payment in collaboration with activo bank of spain.
The payment will be issue into atm visa card and send it to lucky
beneficiary who apply for it via activo bank in spain through
diplomatic courier service company close to the beneficiary country.

This is the information activo bank management require to deliver
compensation fund payment to beneficiary country door step.

1. Your name:
2. Home address:
3. City:
4. Country:
5. Occupation:
6. Sex:
7. Marital status:
8. Age:
9. Passport / ID card/ Drivers lience
10.Phone number:


Contact our email id: ( activobank5@gmail.com ) for your payment


Thanks

Activo bank management
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
