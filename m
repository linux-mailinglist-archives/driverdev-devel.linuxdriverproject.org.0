Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3311A40791F
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Sep 2021 17:39:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A3E140CEA;
	Sat, 11 Sep 2021 15:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wcWaqp2SrfV0; Sat, 11 Sep 2021 15:39:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D6AD402E1;
	Sat, 11 Sep 2021 15:39:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 676B21BF35A
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 15:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64071402F7
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 15:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id affqT8wl_Wra for <devel@linuxdriverproject.org>;
 Sat, 11 Sep 2021 15:39:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0781402CE
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 15:39:28 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id
 i3-20020a056830210300b0051af5666070so6751480otc.4
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 08:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=k3+PIl84BDEKsR+afDftURi+daSqqQKQrezVjb4o2gs=;
 b=EJ9iMBlIhWDL34jXFzk4RfmD/Uv1SyKHfjceJRooQ9/QQThKSy3XPabWDq204QI7XX
 SO10zjDfqedCPZi6OQkF3BhDd+1HNuMsDb5+wPyvdont5K/bvQzGBG9hU28jhkjcMXFw
 DyGavZ2ancHwovHdhCt10o2g5kNiPTrC7iXQoEFGQ+tHwx3HhtrW7K6ucXm9/tI9ZOFJ
 QD4RjU3dUrxFM29lhwAsM7eaf4saxxp2TLHxZbSShB0pMyQVgf43EElevUmVaEls525L
 XNYgEwEQ1z4Tw5S0MieRSHh6AJQsPl1ZdOlKgQ6zoYBc2TExHgoRBjclkY6niCKLYug8
 7fHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=k3+PIl84BDEKsR+afDftURi+daSqqQKQrezVjb4o2gs=;
 b=wKHWGBjyjO3j62NpeXWCKqCcicfKaQeNYzp2DsbylqlD12qR9I/YNzD/rZ0z9/qd6U
 FkTzwM5W8ultvr+pP5ipSA/78esK5WfXcbHQi92fDHrdw4HAwNa5HPCoAvpQkFRRctxo
 cAi6j3DHn7w3eWcNA4daqQ1gOSa/leD0yoUsyt+COUQaI2Pnw24FgPha33PqudgcbvU+
 3BNFZk2wGbFJoKmBR0ZomxGxrRpoOCL6THPJGv2DvoiaKbQ87vj418VChNkjgLg/Cv6v
 0de4DiKWwooxDmodAQDnthR8zovhCjnYODrKtZ/AsMt4DPEtC4WnJ6yPjdUFhQOYf/pQ
 qjMg==
X-Gm-Message-State: AOAM531jJrfsXLyDlndz6HWZNmUPaHVzZkBkMnasmhN317osKsM/rMCO
 EBIZPB9pmfN0aBI1sb6e7RZ/No6i4XLjvcUAulM=
X-Google-Smtp-Source: ABdhPJzqBax30/Y5FWsGm2o+sGjq9VU5x6O27o1ItgjwkNIkFMSRQhtsf0tOo+13+E48TjaPIa+BbqFH3767O8sdoJo=
X-Received: by 2002:a05:6830:9:: with SMTP id c9mr2938896otp.122.1631374767859; 
 Sat, 11 Sep 2021 08:39:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:2f4d:0:0:0:0:0 with HTTP; Sat, 11 Sep 2021 08:39:27
 -0700 (PDT)
From: Mrs Lila Haber <mrslilahabe2016@gmail.com>
Date: Sat, 11 Sep 2021 15:39:27 +0000
X-Google-Sender-Auth: 6zp61q5g3hXh41M7G-bJUjKxkjw
Message-ID: <CAAw7UWF11a-vjSfUAb4y-FbcqohneuOLfvGju0CvfLGPAKUuOA@mail.gmail.com>
Subject: Dear Child of God
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

Dear Child of God,

Calvary Greetings in the name of the LORD Almighty and Our LORD JESUS
CHRIST the giver of every good thing. Good day and compliments of the
seasons, i know this letter will definitely come to you as a huge
surprise, but I implore you to take the time to go through it
carefully as the decision you make will go off a long way to determine
my future and continued existence. I am Mrs Lila Haber aging widow of
57 years old suffering from long time illness.I have some funds I
inherited from my late husband, the sum of (19.1Million Dollars) and I
needed a very honest and God fearing who can withdraw this money then
use the funds for Charity works. I WISH TO GIVE THIS FUNDS TO YOU FOR
CHARITY WORKS. I found your email address from the internet after
honest prayers to the LORD to bring me a helper and i decided to
contact you if you may be willing and interested to handle these trust
funds in good faith before anything happens to me.

I accept this decision because I do not have any child who will
inherit this money after I die. I want your urgent reply to me so that
I will give you the deposit receipt which the SECURITY COMPANY issued
to me as next of kin for immediate transfer of the money to your
account in your country, to start the good work of God, I want you to
use the 25/percent of the total amount to help yourself in doing the
project. I am desperately in keen need of assistance and I have
summoned up courage to contact you for this task, you must not fail me
and the millions of the poor people in our todays WORLD. This is no
stolen money and there are no dangers involved,100% RISK FREE with
full legal proof. Please if you would be able to use the funds for the
Charity works kindly let me know immediately.I will appreciate your
utmost confidentiality and trust in this matter to accomplish my heart
desire, as I don't want anything that will jeopardize my last wish.
Please
kindly respond quickly for further details.

Warmest Regards,
Mrs Lila Haber
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
