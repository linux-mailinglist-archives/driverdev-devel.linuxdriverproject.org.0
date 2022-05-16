Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B74A527FC5
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 May 2022 10:34:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DD3860BA3;
	Mon, 16 May 2022 08:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4qcebNiBWlvB; Mon, 16 May 2022 08:34:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3975060BAE;
	Mon, 16 May 2022 08:34:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FEBF1BF3D6
 for <devel@linuxdriverproject.org>; Mon, 16 May 2022 08:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E1A482444
 for <devel@linuxdriverproject.org>; Mon, 16 May 2022 08:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zDYV0kk1DCqU for <devel@linuxdriverproject.org>;
 Mon, 16 May 2022 08:34:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6B8D81DAB
 for <devel@driverdev.osuosl.org>; Mon, 16 May 2022 08:34:35 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id i10so24418417lfg.13
 for <devel@driverdev.osuosl.org>; Mon, 16 May 2022 01:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=3tb8RrUQXAwqBH7qb618R8UIljGh4F66JuQuASoHUj8=;
 b=ouSyEE/KtWmvSDzGDj24BcdltjVglm6Hu0t5w/1UJIB7OhxU46/XoDcCVoxzAhybAc
 LHCczjYLobOPiNKJfhrMB1FJFbmiBa0EdE/JuccwrhhuqQ7Qskt74zam7QEnBGmMX2qe
 7125tVsW4i5o0aVfJFh596uTfxHCcFByqNFHioDhILaoMuU72QXpQFahKp/IMq8LoGe+
 /oPSJthvrMW9CM5ZH5ect9P25HFl1IHt3DdjElgjLtS3oSWQ5dr3U4JmFETMRSlt7L/1
 yTiiPjbRXo7E7qvfWY12sDNa5fdGNw+G5QFFoumsw5xBwEAE9eQPFhXYY+5y+Kx2yTdZ
 KKkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=3tb8RrUQXAwqBH7qb618R8UIljGh4F66JuQuASoHUj8=;
 b=MPPzfdS0x5izUIkKvkHolt5Nn/wMriSEBMG7iz3Lv0Lr0xY9Wfoc1IUoqI9ssCfmE1
 cYddSwmXrAEQa5hIcNNFw0Nn2hmXwczo4c/e+6aZmVY6X0eODF7sUHUFU/7uj9JztHAA
 /rvGfZrpb/7imRzyNwqOtxl9ylQNqsOS8oB4P3oQnQE5tr5KBouzTo4x3QesWNaNN8Ix
 C0/N3pjLy23dAzHy2DmFSRc2Zq6G/4oQyy83UAYs792lvaqwoKMxowKcLVywjlng96fE
 TzQUhovXNIQmuaPD0rgBawTmxKsowKG9OaonMaUQ/T//W6WW+vnwjiBxtPNPV9K1NELx
 fi0w==
X-Gm-Message-State: AOAM5303PuY7x4Qo8wvmIcJ+shgJQ/+wSdJ9h2XbnK/N5GmRRp6/Jdpf
 3RJKLxJfIxNOs+x0WQraesONEa1ZvIz6vS5mALU=
X-Google-Smtp-Source: ABdhPJzmPrVcHYliLiq7BQoQRy29/HNhitM4M45hvV7bTI17lhSDyxEXQZKPjrmV/gJy7LT76Y23TlnjFTuA9sncF5Y=
X-Received: by 2002:a05:6512:b92:b0:472:9cdd:f09f with SMTP id
 b18-20020a0565120b9200b004729cddf09fmr12650584lfv.54.1652690073558; Mon, 16
 May 2022 01:34:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:190a:0:0:0:0 with HTTP; Mon, 16 May 2022 01:34:33
 -0700 (PDT)
From: lilah Aim <tzameret.102@gmail.com>
Date: Mon, 16 May 2022 10:34:33 +0200
Message-ID: <CADzFuhhjedgEwRn0qcqcR=kgzNXD5QJ702=d_Sr82c0aPPcyKw@mail.gmail.com>
Subject: Dear Friend.
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
Reply-To: infolilah01@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 HI

My Name is Miss.lilah Aim from Libya, am 23 years old, am
presently in St.Christopher's Parish for refugee in Burkina Faso under
United Nations High commission for Refugee,I lost my parents in the
recent war in  Libya, right now am in Burkina Faso, please save my
life i am in danger need your help in transferring my inheritance my
father left behind for me in a Bank in Burkina Faso here,i have every
necessary document for the fund, all i needed is a foreigner who will
stand as the foreign partner to my father and beneficiary of the fund.
The money deposited in the Bank is US10.5 MILLION UNITED STATES
DOLLAR) I just need this fund to be transfer to your bank account so
that i will come over to your country and complete my education as you
know that my country have been in deep crisis due to the war.And I
cannot go back there again because I have nobody again all of my
family were killed in the war. If you are interested to save me and
help me receive my inheritance fund into your bank account with utmost
good faith Please get back to me.

Miss.lilah Aim
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
