Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C1B4384BD
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Oct 2021 20:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC21081B04;
	Sat, 23 Oct 2021 18:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a9_WTBYxR91p; Sat, 23 Oct 2021 18:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45B9A81AF6;
	Sat, 23 Oct 2021 18:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB36C1BF34C
 for <devel@linuxdriverproject.org>; Sat, 23 Oct 2021 18:38:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7D2281B04
 for <devel@linuxdriverproject.org>; Sat, 23 Oct 2021 18:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q_ut7BUJGQAa for <devel@linuxdriverproject.org>;
 Sat, 23 Oct 2021 18:38:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com
 [IPv6:2607:f8b0:4864:20::b34])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E1AC801DF
 for <devel@linuxdriverproject.org>; Sat, 23 Oct 2021 18:38:49 +0000 (UTC)
Received: by mail-yb1-xb34.google.com with SMTP id i65so13985861ybb.2
 for <devel@linuxdriverproject.org>; Sat, 23 Oct 2021 11:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=geczGTHn5VeCvub+uTma/PXREfA+zQbHUxfmekOcdTU=;
 b=UuxaHz2CkRMO3QHL1ogys38G7QzZMfkQ+Q8KYb/rLtXSn+VuxlOYCASri1Q8dqtTKK
 7PpiSC6G3LH+0+I+uSrbOPcLz6gTR8SdvwgMLaiOT8/PP5FYnxNIUn0TF8mXcNPa9YyY
 F4ArlAE/nXuLosbLQEPJEZHgFRrMBntWnA9OwPFEv2NHlkwkEAzuumr7Ysr/5UkbMl6g
 1HIXmlOWL7UrerlaQChQ7iIbxVjZdii7Rsu1nhUgFjo7DZ+1Il6LZOtF0ksREbh+qrMD
 tkuVSc5F0vWZQSBjSKAWLOymV33cW1FFAgWxZMdOSj1zyGbn54j+y2i+N1kmTOAlYfdm
 TdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=geczGTHn5VeCvub+uTma/PXREfA+zQbHUxfmekOcdTU=;
 b=2RphG7Hf7iMYqLJlmOzFofqLCMyPz8wl1skkfUU16Saa0/KNL1dxGG1F0eu5dO/rf/
 G45AR1nQHOTKgVoaACPReViCOz08jrbOBCtCpqkLvWKZUP0hlIwBMNuCqvQT3TOT3E6H
 XS/eQt9eS8bfNqcU0JcCz5fGUJNes29xin3sQss4ibpvJ2wzC31VO1iVFsU6MHGjwj14
 qOlLFiIhbCuKcUu8T8TJ+NxUcyDcqlrPtF8r9d07s2m5ro0V38SRTVZtKAiY1IQ0R1/t
 +9ej4QRj0YrP5G/3lxcW1JyXcDMYh6YtADRJvlMZkD0Nf8XcAvoKt8m5amR9JL6xycBY
 gMAQ==
X-Gm-Message-State: AOAM531xTipkV1/B1/ppO6kw9eDw9/jZUdIrHbTM9EvinNRbFc5mnyDr
 3gv3JFACT5NYycJ2mw1hu+O5dur7jl1MgL199sU=
X-Google-Smtp-Source: ABdhPJw2Lvq7mhq5VeoQYHDv+lHelmpral5zjoROaxOkvU+++fhC4xbTFbZIdNgKg9Hb1rSs57rxmndGWp+lMW7qDuo=
X-Received: by 2002:a25:b447:: with SMTP id c7mr7656015ybg.214.1635014328022; 
 Sat, 23 Oct 2021 11:38:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:3d08:b0:198:69a1:2078 with HTTP; Sat, 23 Oct 2021
 11:38:47 -0700 (PDT)
From: "Mrs. bill Chantal" <friendsdfgtyh@gmail.com>
Date: Sat, 23 Oct 2021 19:38:47 +0100
Message-ID: <CAH+ONnVDBAxhDWpP3izpCUnUSaZQrzvkqdhrMF51auRrLufY7Q@mail.gmail.com>
Subject: Dear Friend
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
Reply-To: Mrs_Bill.Chantal.Lawrence@email.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend
You have been compensated with the sum of 4.4 million dollars in this
united nation the payment will be Issue into ATM visa card and send to
you from the bank  we need your address passport and your Whatsapp
Number.
Thanks
Mrs. Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
