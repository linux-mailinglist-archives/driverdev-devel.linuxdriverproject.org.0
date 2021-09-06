Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB73F401E2F
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Sep 2021 18:23:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D311C40309;
	Mon,  6 Sep 2021 16:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34NAktW-Uzxg; Mon,  6 Sep 2021 16:23:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35C8140241;
	Mon,  6 Sep 2021 16:23:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 519751BF48D
 for <devel@linuxdriverproject.org>; Mon,  6 Sep 2021 16:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4141240499
 for <devel@linuxdriverproject.org>; Mon,  6 Sep 2021 16:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7HlMmEQ4Cg7q for <devel@linuxdriverproject.org>;
 Mon,  6 Sep 2021 16:23:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA02C40467
 for <devel@driverdev.osuosl.org>; Mon,  6 Sep 2021 16:23:16 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id
 c42-20020a05683034aa00b0051f4b99c40cso9388184otu.0
 for <devel@driverdev.osuosl.org>; Mon, 06 Sep 2021 09:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WizRIXIR4uxjQePI6UpOlG0L6ZYSM0YPMrQFVQM48ws=;
 b=qLgsxbtDwdrvTjcfqEP3TZMB8hPbQcRhAfAoaaGTuF9kzBTxPF3FnrJf/JVmjo8CQ7
 yR4RB60LBbBeGw/Y7EMsWYI1yhOVKNM7R4uRZ9uxSn9yktvoEw2MxxdCIX4kUiF/OJx3
 yngxOw3LxtXdL4+3fs2jcSwqpdtfmKbi/NQWvriUjBFkxS5HLiWp+RXn+3NPEVSLZt2r
 4lQQgIcc/RLdnXWQps/brbH4vd4rQWHutVYsn3m+WHN4dz6bcC1i59ny+zO3QMK/LSBl
 PsQ/kj9kUzlEuJ0SdMPvHhlp8gyFXZct6HAYhImxzUZjvj7Wu9yepFidbQ7GnNyd5Alo
 hzgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WizRIXIR4uxjQePI6UpOlG0L6ZYSM0YPMrQFVQM48ws=;
 b=jqT68AIGokLleJ2XIR8yFs/qA+YvmOEIldthMS4GP9nZXG43eQBqVe5EcAgOLEhHg7
 FmFoC2z+0Nx5VTN0Lp4FTmCICtwt59bC60ZJr2J3HHiF3eBfI0xQBr/VgrtnoR0p9PE/
 6xy1HKIMcQ0Bvtmh95fDJ/wjgp8mJosZL5iIy1qL87wj2T2VrFLOswDAxn+XEJUgRlTP
 jATXtqsV23hdNnaXHhnDhqWI9eO6l3o0InpYRmUJ9FojX3Ho+v5XWMr9+AAMqlfsxSba
 RaKigFES1fiG4JvSCvyu4p/+r7Jk3bCuKmAqc8bb0AHhXClLLWQiTNeB4x0mr+2zLTMV
 ioGA==
X-Gm-Message-State: AOAM530RhNOVI/2wo53wBN5me0TofJ/Z/uFZcoBTh7nuBmBfVsElXZvC
 kFmmEHIO+hPUjqMzNrEl27PJfTDiedzGDpw9NpjOM9VKxxA=
X-Google-Smtp-Source: ABdhPJzCJ5vCr6u7kReMNcetK0rJqsNtlxbKsLKy4a4JpZNK4DUghok9zwBWkFUzNHrNO/jDLE3lD9ulvPoD3B30pQk=
X-Received: by 2002:ab0:5a32:: with SMTP id l47mr6147725uad.0.1630945384574;
 Mon, 06 Sep 2021 09:23:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:6dc3:0:0:0:0:0 with HTTP;
 Mon, 6 Sep 2021 09:23:03 -0700 (PDT)
From: Mrs Suzara Maling Wan <agent.ovo.4fbi@gmail.com>
Date: Mon, 6 Sep 2021 09:23:03 -0700
Message-ID: <CAHUXX45kogi621KuH3XD43zsgd_Yt+eDSvWiDkN63v1gavU75g@mail.gmail.com>
Subject: Hello
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
Reply-To: suzara.wans2021@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Good Day,

My names are Mrs Suzara Maling Wan, I am a Nationality of the Republic
of the Philippine presently base in West Africa B/F, dealing with
exportation of Gold, I was diagnose of blood Causal decease, and my
doctor have announce to me that I have few days to leave due to the
condition of my sickness.

I have a desire to build an orphanage home in your country of which i
cannot execute the project myself due to my present health condition,
I am willing to hand over the project under your care for you to help
me fulfill my dreams and desire of building an orphanage home in your
country.

Reply in you are will to help so that I can direct you to my bank for
the urgent transfer of the fund/money require for the project to your
account as I have already made the fund/money available.

With kind regards
Mrs Suzara Maling Wan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
