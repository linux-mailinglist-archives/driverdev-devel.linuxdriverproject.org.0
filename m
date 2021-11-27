Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F824601D2
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Nov 2021 22:58:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BD6560669;
	Sat, 27 Nov 2021 21:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QPoxECc02xXp; Sat, 27 Nov 2021 21:58:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7A7B6061C;
	Sat, 27 Nov 2021 21:58:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 205711BF5A7
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 21:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BBF580EF6
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 21:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cfiK3fxpDsVC for <devel@linuxdriverproject.org>;
 Sat, 27 Nov 2021 21:58:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71E0680D93
 for <devel@driverdev.osuosl.org>; Sat, 27 Nov 2021 21:58:13 +0000 (UTC)
Received: by mail-io1-xd30.google.com with SMTP id b187so4888934iof.11
 for <devel@driverdev.osuosl.org>; Sat, 27 Nov 2021 13:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Qxa1VPbD4iRACjuGwaVkmeOrXfoNdyRVdr9Wp5Nogdk=;
 b=kueSHKcavW4CcPseo17g04hfZhpPz2gTp4YRYfMe6g57dU3w6nSAZulP06Stg/SI3m
 O6b4S/259g59nnQk800UYCmhyr5qWOBhRZG4Egs7ZQoD4mLI4t44tR/s2qoIFCMsZr2q
 FjWTuSRJnHdLgIbuIawYjNSomYXz2tQoR45rnDf+WEPO+CC6HiNWCSX4B2HnmcEeTKms
 xDcJTDYrvmNT7fukFaKPE8l+v5IRjArPGPtTzV9OwXIB1QbRT7gRYARD0Ut5Hs6gTt43
 KBwk4VHLLelcnSBunCHDLqtv1qhA//j6ynziOqtNhTa7+q66xCp+QLON2ztReQdHBMWa
 6qgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Qxa1VPbD4iRACjuGwaVkmeOrXfoNdyRVdr9Wp5Nogdk=;
 b=ep55eolvFkAZ+OtBec9JcwPkHjZM9eW1462QqgUVqqYfkOOOtNnQoCct5uWb4glvi8
 ooad0Hgv2dAkmfXCsxejQwZDoDp8CjlKHUeGlTTrl1X/q3BN61cxiqTquPTBJ7p10oYw
 ptRcEOtExID2WtstAhCYgpmKF4rtuFf5MknYf6G5I/nHbkWbw9aC99ibWFHf76M5JXco
 V3/4Cb0ttdcO7D0TGkv6IPRSXGgQLLmKcEohcpTtb7yBM8hmiQznqDhPlM4BQYQQJZmK
 FzZ+0z/kAozRl/gt0EQGWweDbuPfv1C2IeQPxHG7I1pV9UwspkzBE4l1bqd0jhtTS71g
 U/2A==
X-Gm-Message-State: AOAM530GI0At9Hd8rJVYm9iUjwmRKMsWUXWaDa7YaZxs6H3Fq84zF34f
 /i6oI4sjm5ZgwssiXAAWwcMq8zvcpZB8OObcfp4=
X-Google-Smtp-Source: ABdhPJxvQnxH7w+0myNO0a7KV7603fA8PNzvbelTehWkM5vAzybRBUKRzBAAi9kPa8wIgjHIfVTDArOVmKLTXN44fok=
X-Received: by 2002:a05:6602:2b83:: with SMTP id
 r3mr50364430iov.8.1638050292537; 
 Sat, 27 Nov 2021 13:58:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4f:2408:0:0:0:0:0 with HTTP; Sat, 27 Nov 2021 13:58:12
 -0800 (PST)
From: "Miss.Mmamie Shimirah" <nspector205@gmail.com>
Date: Sat, 27 Nov 2021 13:58:12 -0800
Message-ID: <CABJaD1gdaEX34noi0akZ0CfV1GDdskTWFXjPphzCXbJq9hxTjA@mail.gmail.com>
Subject: Regarding Of My Late Father's Fund $10,200,000,
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
Reply-To: mmamie_shimirah@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

dear,

I am Mmamie Shimirah from FreeTown Capital of Sierra Leone, Time of
opposed to the government of President Ahmad Tejan Kebbah the
ex-leader since 21st November 2005 But I am current residing in Calavi
Benin due to war of my country, my mother killed on 04/01/2002 for
Sierra Leone civilian war and I am only child for my family bad news
that my father passed away on 25/11/2018. During the war my father
made a lot of money through the illegal sales of Diamonds to the tune
of $10,200,000.

This money is currently and secretly kept in ECOWAS security company
in Porto-Novo Benin, but because of the political turmoil which still
exists in Africa, I can not invest the money by myself, hence am
soliciting your help to help me take these funds into your custody for
invest.

I want to add here that if agreed 35% that's $3,570,000 of the total
worth of the fund will be yours minus your total expenses incurred
during the clearing of the fund in Porto Novo Benin.

I would like to invest on heavy duty agricultural equipment and earth
moving machines to enable me go into a full scale mechanized farming.
l wait to hear from you
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
