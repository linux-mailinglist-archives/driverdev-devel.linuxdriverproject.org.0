Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BC23DAC14
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Jul 2021 21:51:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 462ED60D8C;
	Thu, 29 Jul 2021 19:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5POKNY0qNTRk; Thu, 29 Jul 2021 19:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F6C360C0A;
	Thu, 29 Jul 2021 19:51:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A4D41BF36D
 for <devel@linuxdriverproject.org>; Thu, 29 Jul 2021 19:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85CA44022E
 for <devel@linuxdriverproject.org>; Thu, 29 Jul 2021 19:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLIkqfzzFfVl for <devel@linuxdriverproject.org>;
 Thu, 29 Jul 2021 19:50:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com
 [IPv6:2a00:1450:4864:20::643])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 287F34010F
 for <devel@driverdev.osuosl.org>; Thu, 29 Jul 2021 19:50:52 +0000 (UTC)
Received: by mail-ej1-x643.google.com with SMTP id o5so12664054ejy.2
 for <devel@driverdev.osuosl.org>; Thu, 29 Jul 2021 12:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=Z9jCaSUwBp3ShHF/9OP0tyS8Cc0mRgMlGmxjwb3Oo8g=;
 b=Pg0iSAvOl8YCtVakMyz20Htum6yYxaqkWHZCbqmDs0gRB913Xfq7DZ1OZfbapil+bB
 5rOetbShf2l9afFalG5Wqz4yfNcknNIeQkfMFrUotIhKgh87r8SlkcMMLuu94B7vAG9v
 0pdsj2X3pci2hZHaH7VPJ4pDrRbkQPmZwWkctupeFH50tfBze7LLZwGRFYOafPbwNdPk
 rTJqtl1rqCVLyBCIA6fDsbtQiLOzf7jM9GRwL4PzFjwGL1LLuhY9Kgvqefzvhin2pccO
 39CLrq6HRKWiO+u0uxtBhTU39Hm8BdKlswGH92FoR3DvnoWoxzP4/0blJwg5UzVM8VF/
 PJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=Z9jCaSUwBp3ShHF/9OP0tyS8Cc0mRgMlGmxjwb3Oo8g=;
 b=aBbKoJQysjSfpd8q091U3Pjobdqn8YDWH5FyG6zH1KCDqNFwt8++GzWieKM7zfHYZg
 mJD+ZyvEvKyufZ7ZLxjwVyHSHq6e9nlDBjmqQe+mYqd4RhO8M28B4HWQfEb8WBtpSb7m
 Rx6S+1BPl4Y8QStCPx1SyfhPSZtggFDvgp5mg2DkZ8Q2sMTndxnam9PzS8QmAH4hNI3g
 jM9MobgWNHrDKRYf1aqAZwNJ06EPvJpzdTJqFmT9bx8FahFlCnKIkUOJp9QWEUXNN7c9
 MIkfdbOZSNvspmC+nM+y/5mxnmbRekcGlNBDCeCtreMmk44Q01O7jAj8Yd2jEK2XsS1P
 Wm/Q==
X-Gm-Message-State: AOAM531vAkXKQpOVpzTkIgFWaWOT7mY1MIaR7qfXqzXl/e/TtahDid4e
 g4O3GfLZGZ/ECIEtlAStVvgHwL9tQt2SAaPNv6U=
X-Google-Smtp-Source: ABdhPJwl5lLZquzzCYvjbqR1OGql5yl+p2Lbn+A+WjgItkLEQZ3dLzALauz1LbyzLuKrunDhD0kPncirVJaA1JcMc5w=
X-Received: by 2002:a17:906:edd2:: with SMTP id
 sb18mr6256410ejb.82.1627588250529; 
 Thu, 29 Jul 2021 12:50:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:899:0:0:0:0 with HTTP; Thu, 29 Jul 2021 12:50:50
 -0700 (PDT)
From: Mrs Aisha Al-Qaddafi <mrsaishaalqaddfi@gmail.com>
Date: Thu, 29 Jul 2021 12:50:50 -0700
X-Google-Sender-Auth: 6YOknRZc0gLsOj_oKPaFc7Nva34
Message-ID: <CALJXCduS3uxbJyaixo_E14vkk_EeABoT0peRmrqU_kuj-hVc=w@mail.gmail.com>
Subject: hello dear please kindly reply my email is urgent and important
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I came across your e-mail contact prior a private search while in need
of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.
I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.
I am willing to negotiate investment/business profit sharing ratio
with you base on the future investment earning profits.
If you are willing to handle this project on my behalf kindly reply
urgent to enable me provide you more information about the investment
funds.
Your Urgent Reply Will Be Appreciated
Best Regards
Mrs Aisha Al-Qaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
