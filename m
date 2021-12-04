Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A448B468456
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Dec 2021 12:07:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F01C060BF5;
	Sat,  4 Dec 2021 11:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kxx0e8zx-o2L; Sat,  4 Dec 2021 11:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E84360840;
	Sat,  4 Dec 2021 11:07:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60C0A1BF35A
 for <devel@linuxdriverproject.org>; Sat,  4 Dec 2021 11:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A735F41BEB
 for <devel@linuxdriverproject.org>; Sat,  4 Dec 2021 11:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDWlMTFy7JTQ for <devel@linuxdriverproject.org>;
 Sat,  4 Dec 2021 11:06:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78AC241BE1
 for <devel@driverdev.osuosl.org>; Sat,  4 Dec 2021 11:06:57 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id c32so12884062lfv.4
 for <devel@driverdev.osuosl.org>; Sat, 04 Dec 2021 03:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=4UOel4oNivglI2BZeZ3El3S/cWYl9t/NRfK4XkFXrTU=;
 b=YZIBjUGV0gmCr5quUH7tbKinxxfcjZYWCamIO3hDrEH+g/JIEH+jLHaOLyLRE0f/Nn
 C70DKCepWZaLpOLpwSJYpLb3AIhkRPe1B1yqiO5y33llyANxsSbq/4ZRxFVFQB+VstEF
 0k3pMx+uOfsOSGtW2c4eB5jW6xkWv/HvTXkXJiOXdTk9Le9NbSEaMO4oWeMIHazAdWxa
 scFBomV70BcldSHY5/D+qLTfUIDhfDLjZSUJS/t1wVagQJugCF+HPxQlH687LR9fG1O+
 oSjYnUv7eO5R15nuGkhae8WNMY7oQFyIBiFwHyurH45sg/gjU4825SEvGYXU5t7KL23N
 Tbnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=4UOel4oNivglI2BZeZ3El3S/cWYl9t/NRfK4XkFXrTU=;
 b=bVfB0QQSUR2z9XpjJ5RbRFo048IREIh0+6iO5tt+bv0ZJbEIh2eXSDHNHZyxTyOpOh
 +T+GEMRxt+l6wM6eSn9+AQ80Yx1Gfsdn6aF4ErNwBrXItCYrUcwe7bfecTbDKhOrKnUc
 E59/Fsvs2nx7kGc4aWT8PNMNslDnR0XDwP4POn/U9FYH4LjQqURH6PizTsTOXfZ51IZ7
 URweVmwA4HmE5KiPBUXH9hAxhzRp3XAS08tWTZvgi2RyznHoJRRoRaza0Iixz7ydvm6b
 +vpnMImRG9Rb9hxXLW4IrJiQuy/1PKn67GcfN9kKRwHfvTovA5H2pgK1eWpPn7txTrK8
 efTQ==
X-Gm-Message-State: AOAM530fwDo6+nV8Eh984QLAjgT2Dea+boYclHdt+FhmBLerYEbTC/Eu
 BrUbXIb3mwNFlqXXMDn7UUXe/65OS2tgqUj/Xtc=
X-Google-Smtp-Source: ABdhPJwR6ErBOX18qlN7K8NI2LHuKOB6xkKaZb3l0n1CMS/v6InyZ32VjCExxQeGaVJMslH47JdYd5k+l9nGtI/H6y8=
X-Received: by 2002:a05:6512:33d6:: with SMTP id
 d22mr24240266lfg.564.1638616015066; 
 Sat, 04 Dec 2021 03:06:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6504:8a6:0:0:0:0 with HTTP; Sat, 4 Dec 2021 03:06:54
 -0800 (PST)
From: bill chantal <mramhedibrahim2222@gmail.com>
Date: Sat, 4 Dec 2021 12:06:54 +0100
Message-ID: <CAOekadbxcR24t8hwnBGf21UrEdk=oTVfpp-3X7mK-qV0Sw3=dg@mail.gmail.com>
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
Reply-To: billchantal01@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
You have been compensated with the sum of $ 5.8  million dollars in the
United Nations, the payment will be issued on the ATM visa card and will be
sent from the Santander bank.

   we need your address,whatsapp  number and your passport
 this is my private email address (billchantal01@gmail.com)

Thanks

Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
