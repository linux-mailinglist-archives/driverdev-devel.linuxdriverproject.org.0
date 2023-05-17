Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 281E77072BE
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 May 2023 22:09:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7F6B81362;
	Wed, 17 May 2023 20:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7F6B81362
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gRG_dvdY9msC; Wed, 17 May 2023 20:09:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6D8E80E8E;
	Wed, 17 May 2023 20:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6D8E80E8E
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F1C81BF47D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 May 2023 20:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8429141F2A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 May 2023 20:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8429141F2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEDrDcdFNOLu
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 May 2023 20:09:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A5B941F00
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A5B941F00
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 May 2023 20:09:28 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id
 2adb3069b0e04-4f27977aed6so1417843e87.2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 May 2023 13:09:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684354166; x=1686946166;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NWoHcqRF+8HchD82wrNvx4+K/3zxtMcjuwRJdebecGE=;
 b=gl4R9vVLc9M9b3UpS4FlSza1dg9ke9VMPHoaWYLMO2f2ADrhFYT/Derr6Ynqncq9V4
 SOOYZjx4n5aduako7svktdxm8hMO3kRdybi/FmRIN/pwW0ApPWuYbkgDy/wcRAPFArjg
 o0E4/Ykr9WOB8+2ffar+U8gs0Pbrm1l2ooMOylyAtlAxaNcZwRO5YnK+hzLdIGifM7q5
 Y+Ni6991iQnoWdIZ/HvDGR5/6qkZ/MIKgFO9oXzn04sh30szPlCFBjzXJsL12I5Ai2Gd
 ly/oQicDoweI9t0qSbBglJj5iS3oWig9oXkjmPWsR2iOD4JXRt3Nh80kRMF3exiRJNsR
 R6xw==
X-Gm-Message-State: AC+VfDzXC5wnuWmgX8DANlUAmv0M7kBQ+ohrOBvrhW3EW8MQgas7Q3N5
 d4L377b8imda99tvcFwPZSrl7SI+X6x5hryxOkc=
X-Google-Smtp-Source: ACHHUZ48HNz9WRQeBooi85TBe4+4mx8xaOAqKkU2ZsYwq/YXV6fH93UpWwdRPClx28NXW6HNDK7sBxMafVm70iUHtA0=
X-Received: by 2002:ac2:5458:0:b0:4f3:933b:aa32 with SMTP id
 d24-20020ac25458000000b004f3933baa32mr526450lfn.7.1684354165963; Wed, 17 May
 2023 13:09:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:3857:b0:262:57e2:3c9a with HTTP; Wed, 17 May 2023
 13:09:25 -0700 (PDT)
From: Mrs Mary <maryjosen06@gmail.com>
Date: Wed, 17 May 2023 20:09:25 +0000
Message-ID: <CAEc3Ckrh4q_rvG3p2-WOdybV6XjtWsm5sq_6fsthvwG3KJ4izw@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684354166; x=1686946166;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NWoHcqRF+8HchD82wrNvx4+K/3zxtMcjuwRJdebecGE=;
 b=KkrJrZZD3uM+0MJ4f2gTbV+JW2QTtPHk9xjbttsHAu7G0ILZxW4Idjufv4nh9sgUof
 gD4PUmf2Cx/t+GVJ0p9XqCm5SOaoP7YzOd86mtaD1Cx7nMaw/XPSsUTLTKUGbmUhiZ0a
 UH2Cq7B5UC1+qucLweyPfmtmIoxrCt/asxKMH2CnMbevKNyA6ds38p9QujF5CUcR2VH1
 lMbxctxcV1M+xkOPuVEz8uSPTQ2msgDVWJ79NRKM68x5pvx6HDC9C3HPmSxjRKlfKp4U
 TCZtnU1cIXHw5HuDY0zn3IMEluacfamFiRuHQ2Jt/Q45AC1wuC5kCuXCbsOy8l7wlobn
 7UJA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=KkrJrZZD
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
Reply-To: maryjosen62@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 How are you doing and your family.

I'm Mrs., Mary josen. I have a fund of 4,500,000.00 EURO that I
inherited from my late husband that I want to donate through you for
orphanage and charity project, but I have been suffering from cancer
illness for so long now which I have been admitted in a hospital for
treatment. My fear now is what the doctor informed me, after series of
tests on me that I may not live long because of the sickness and I'm
afraid of losing this fund to the wicked government because they don't
care about the poor ones in the society.

I will appreciate your honesty and courage to handle this fund to help
the orphans, widows and the charity home.
As soon as I receive your message regarding your interest in this fund
to help the charity home and the less privileges, I will give you more
details
about this fund.

May Almighty God bless you while I'm waiting for your answer.
Your sister.

Mrs, Mary josen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
