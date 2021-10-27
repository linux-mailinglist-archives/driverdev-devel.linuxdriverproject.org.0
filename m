Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D16BC43C880
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Oct 2021 13:23:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53FEC403B1;
	Wed, 27 Oct 2021 11:23:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ITFWE6sxMKIP; Wed, 27 Oct 2021 11:23:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD4AD40222;
	Wed, 27 Oct 2021 11:23:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34B321BF359
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 11:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22FF7403B1
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 11:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uh2Ju9tH70ll
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 11:23:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A37204038F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 11:23:27 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id b9so5422196ybc.5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 04:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=gbhxMvAYGbSqfpcSxn09gxeDfjPDxDoohtl7lweoc/0=;
 b=B0XmRXQEURt9QkJLxwkrqT9isrDrWXJKSFNg0ZW6o+4FzX9Zq/MlF+9ic/pIAGQf37
 fKsuPz+yY9FfBwOHgUU1DOO7T4zd7buBsHxFKOyy1sTwoaeGYIZP9BKvm34CCKp3CHMj
 G83G/SnwSPrXNogf4ffesBJWG1d2JpGxg841+uN2VNIh0swP/QaTZ5Esy0yN8MF9C5HF
 hsc3a97h/sJDLX76YYIh1xz8A8fJ3Xfdtv9rmEYZPMK4YtgsRjaK3G2YaqyQ94+I2AyJ
 X0sQqIZ1b8zD4nJryFSTRzRdiG8rEBWxq/WeNvFXPD/cisjJin8xAvkAiapQzgWUDA7O
 aX1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=gbhxMvAYGbSqfpcSxn09gxeDfjPDxDoohtl7lweoc/0=;
 b=Xl6cm0IQOYHef336XHfe9SuTczSJAjauMcV14U8W8K1VZPsTx5njvBnmxUN+TdwgY9
 E2NgEBHT5o0YKFIkSVpL76SLnbKDU+eZVR0pJ08pl7wQXNaFP1EX/gXQ91IZLjagXKvu
 lqNXMKfPHG7U5ZR51bW9O8e2qpzNNLrgeM+W9UIjEhcsYGIUnKyWIlgUDO4tYR6u+ZYj
 lIZ0MxhVzHavaGIU/wAfWaWitx9ijgs9h1BU229851JEnUZFVBdTyPvdYMxXE+uvvjSc
 N1irv9Yr9zHmVWvB7E/0awc5AQOn1hea8FoOBLP5//nooL4UODZqiHfK2tyCpQCJU7CJ
 s5+A==
X-Gm-Message-State: AOAM531sdftHc9n7AoBk0miuvkftsC2uVj0qyu2OlekEh2UPpYC/ZfYj
 7b0ThZ3Vi10dw+NqMBIh+0j3YNReirLaQzeyrjY=
X-Google-Smtp-Source: ABdhPJwZ1YPg0PfIFqYuUN6Wr/f4gCP5f+bmvQO6oIpt64+VHsnZAeZedb7kTEAmJgMNxWaOvPqsXw/DAUFK6oWrkBw=
X-Received: by 2002:a25:e702:: with SMTP id e2mr28227670ybh.347.1635333806177; 
 Wed, 27 Oct 2021 04:23:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:3d95:b0:145:d0f1:ca17 with HTTP; Wed, 27 Oct 2021
 04:23:25 -0700 (PDT)
From: Abdulwali Alhashmi <victorjohnson202@gmail.com>
Date: Wed, 27 Oct 2021 04:23:25 -0700
Message-ID: <CAAY7gEv5LP++NTi=0aZWp05Or9d=cFjCBSH2mWqR6YYPcFzdeQ@mail.gmail.com>
Subject: CAN I TRUST YOU
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
Reply-To: aabdulwalialhashmi@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings,

Firstly, I apologize for encroaching into your privacy in this manner
as it may seem unethical though it is a matter of great importance.

I am Abdulwali Alhashmi, I work with Cayman National Bank (Cayman Islands).

I am contacting you because my status would not permit me to do this
alone as it is concerning our customer and an investment placed under
our bank's management over 5 years ago.

I have a proposal I would love to discuss with you which will be very
beneficial to both of us. It's regarding my late client who has a huge
deposit with my bank.

He is from your country and shares the same last name with you.

I want to seek your consent to present you as the next of kin to my
late client who died and left a huge deposit with my bank.

I would respectfully request that you keep the contents of this mail
confidential and respect the integrity of the information you come by
as a result of this mail.

Please kindly get back to me for more details if I can TRUST YOU.{
aabdulwalialhashmi@gmail.com }

Regards
Abdulwali Alhashmi
Treasury and Deposit Management,
Cayman National Bank Cayman Islands.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
