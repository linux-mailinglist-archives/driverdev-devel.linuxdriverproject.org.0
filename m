Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D61154E572E
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Mar 2022 18:11:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7351884A3D;
	Wed, 23 Mar 2022 17:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtt-hQeeCeIN; Wed, 23 Mar 2022 17:11:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E74CE84ADD;
	Wed, 23 Mar 2022 17:11:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54AFA1BF4DB
 for <devel@linuxdriverproject.org>; Wed, 23 Mar 2022 17:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4990E41D18
 for <devel@linuxdriverproject.org>; Wed, 23 Mar 2022 17:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N6GEmHiaOKwy for <devel@linuxdriverproject.org>;
 Wed, 23 Mar 2022 17:11:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E0DB41DB8
 for <devel@driverdev.osuosl.org>; Wed, 23 Mar 2022 17:11:14 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-2e612af95e3so24766597b3.9
 for <devel@driverdev.osuosl.org>; Wed, 23 Mar 2022 10:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=kXDHCyy3qOeKvKXoH+7dMM0FcXrh/X1dNxsbifJKg8xbotk2koxA/qB8lwuAnRjph1
 CAvaLzBJ35CauNpzcDgrayrOlOdt3CnEng8Dj+ytxq2KcCKnWsy5xI16Voj/+EXRMbat
 qQ2FOzNBrYLxELylkqiFhjjV6NPpO9tDd38bTmKQANAMj2nQ2Vn+t99WbFNSTXuP/ind
 DjGDgI+EkHFXzUMAlMwQiyw8+tYb3DY05/q8dM1Byi7xRVglMT/aSpzg0ZPBtWpB2Rzn
 tZjtmbK7iu2zlEzBAj10ewChavS+nTDhAgpCIc8QcdLRZPkF1nmW1+6k0gle8cczRXv1
 xaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ZVpcPi7LQ5gLudij66lYK6TBzgF1A80F+pTBmMWakuY=;
 b=qDow+qswVlzKg2SicZcwH2/AZmaaY9bVy6DG+5U7iSCrPyXUFYpzDcFqrbp6qs1mtV
 kKIcRnfVv1/0xkktSsGo9mGJp62uJPrZAVzvkxuDJuekvvv+SownNd77Msvf7zPXSjfx
 zVloW2ruO1tB11V/KwXVJoz3wB3hRSkqHhotOZ8C7Y+AXNnuh3PzzYD2WH2NidVbhz7g
 KjhsNTJHgdHuY6QIoAFe4slZxWMHO7OPNAcUUIHw1bten5FC5cmRR8aFzgRrF1qFfJL5
 dMD08Cs/PoXtDCRdxod72dCx7Mu9D/QZkFlus6/Yh8u3ZnXQdemejycRcwfxPU3bYwYi
 3PCA==
X-Gm-Message-State: AOAM532X7HL7ygftq6rvYArRZks+/H6Fv4YlT0dM1Fod+cr+dp0JEc6a
 VyoQk+ToykCi41ybqOosdB4oypGNYRylG6KnbbA=
X-Google-Smtp-Source: ABdhPJwdl8hz6WXALCUvq7/WNgXuqfnhgIf5k/Yg9QaN7/qdUc0taEgHXT1YBGbocLNcE6QunyMlIW2xQUMSIoDajUU=
X-Received: by 2002:a81:7983:0:b0:2e5:9d0a:1c52 with SMTP id
 u125-20020a817983000000b002e59d0a1c52mr856203ywc.411.1648055472437; Wed, 23
 Mar 2022 10:11:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:2382:b0:238:baf0:d8ae with HTTP; Wed, 23 Mar 2022
 10:11:12 -0700 (PDT)
From: Mrs Aisha Al-Qaddafi <ibrahimtasha12@gmail.com>
Date: Wed, 23 Mar 2022 10:11:12 -0700
Message-ID: <CAEOt4Mxh6AXSz9dfnGj8KSf+ZUCAtLW6cvwg3yB9UeOx2=1S_Q@mail.gmail.com>
Subject: Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh
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
Reply-To: aishagaddafilibya5@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh,


Hello Dear


How are you doing today,I came across your contact prior a
private search while in need of your assistance.
I hope my mail meet you in good condition of health? Dear I have
decided to contact you after much thought considering the fact that we
have not meet before, but because of some circumstance obliged me, I
decided to contact you due to the urgency of my present situation here
in the refugee camp for your rescue and also for a serious
relationship and a business
venture/project which I need your assistant in this business
establishment in your country as my foreign partner as well as my
legal appointed trustee.

I am Aisha Muammar Gaddafi, the only daughter of the embattled
president of Libya, Hon. Muammar Gaddafi. Am a single Mother and a
Widow with three Children.
I am currently residing in Burkina Faso unfortunately as a refugee. I
am writing this mail with tears and sorrow from my heart asking for
your urgent help. I have passed through pains and sorrowful moment
since the death of my late father.

At the meantime, my family is the target of Western nations led by
Nato who wants to destroy my father at all costs. Our investments and
bank accounts in several countries are their targets to freeze. My
Father of blessed memory deposited the sum of Twenty Seven Million,
Five Hundred Thousand, Dollars ($27.500.000.000) in Bank Of Africa
Burkina Faso which he used my name as the next of kin. I have been
commissioned by the Bank to present an interested foreign
investor/partner who can stand as my trustee and receive the fund in
his account for a possible investment in his country due to my refugee
status here in Burkina Faso.

I am in search of an honest and reliable person who will help me and
stand as my trustee so that I will present him to the Bank for the
transfer of the fund to his bank account overseas. I have chosen to
contact you after my prayers and I believe that you will not betray my
trust. But rather take me as your own sister or daughter. I am willing
to negotiate investment/business profit sharing ratio with you base on
the future investment earning profits.
Apologetic for my pictures I will enclose it in my next mail and more
about me when I hear from you okay. Please I want you to contact me
here (aishagaddafilibya5@gmail.com) for more details.

best regard
Yours Sincerely.
Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
