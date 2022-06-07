Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A58853F3E6
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jun 2022 04:27:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 854BD60C27;
	Tue,  7 Jun 2022 02:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2K45tuSptuIs; Tue,  7 Jun 2022 02:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E44860BEE;
	Tue,  7 Jun 2022 02:26:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 315E21BF476
 for <devel@linuxdriverproject.org>; Tue,  7 Jun 2022 02:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D29B84218
 for <devel@linuxdriverproject.org>; Tue,  7 Jun 2022 02:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zoyyl5iooJo6 for <devel@linuxdriverproject.org>;
 Tue,  7 Jun 2022 02:26:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E26D18411C
 for <devel@linuxdriverproject.org>; Tue,  7 Jun 2022 02:26:52 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id fd25so21132192edb.3
 for <devel@linuxdriverproject.org>; Mon, 06 Jun 2022 19:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=iMgfh4dNrbZNC0zackE+NFoHodFU+BrSQXwCeyK59sA=;
 b=VEMv7Uo9PCu+EiLJTmdj0N256UAgm0bGxjROPFEOODwZAyx7/ZH97u84E7WFKOkqYY
 wJnUlUaehYZgCdoenuVYr/DiR2mKRYXgqYxcTsh/fPykYWESWQvQIqPWqIHtNvsj3Dpu
 i0tuHm8o0nXmSHuBC8FpGXPoUGyRlhX+x0p9p59SFMD6xijg5IGodCPG3tBJtonLTMG9
 s2DbkAqAIIfkWMHmNz0S1wKBhtw5TIxw+F9KgryzW3oa7Um19ZEwaKFQ3BgM34xFR6Sq
 +giP/Hq95FB/sP89GZfyOUAB4x57NaR/ySwS8vAlu0uX//nD9gyMCL0TvXr24AdzMyw5
 wm6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=iMgfh4dNrbZNC0zackE+NFoHodFU+BrSQXwCeyK59sA=;
 b=16Rx6QAZk0qzRsVGe2cuU1EcY9/KAnWfhSG6nlPaQiK5OD8Aoxr1RmighAfbZyJxDa
 e4jLuj+lk02xKCFRWfxRCpWFkTFy0w++QEOny9rDFu3MzMu4YCiXerDiM65lO9YKff4H
 HmqbHE0hWpZYsi3ZFv6nU8KoGuviSILkFtA5EPtDXtrdBns5IoAGBvWH/xdwFjWuJ0LT
 U/M08z3l5RlATtK3JLCbv1xQNMJ1GwJFGeSznkRUWeC4j0/PybyreCxWb2tFXaSxHnoC
 02WocWDC8dgKkIKl//WXcYcwooixQNOByYvmJt0V8IT3MHnDlUMdsQOfNDb/JUG5VAq4
 ZZ7Q==
X-Gm-Message-State: AOAM5308qaJXLFoKtX4FkJw9E/8WLRkKHulgH1rDFgt79lohUD3kbt2/
 9wNZjXPjQjB7lcdk5HqfqWb1LeOaKX1dj+eQLsE=
X-Google-Smtp-Source: ABdhPJzeaqAnN2Z/rQhzV1niuG2D1tKMlQFChO0KJm3VGMG23G5SpmLgT4IQ+ILBrTnfSWwVF+/spQSK3x90FvA20UQ=
X-Received: by 2002:a05:6402:25c2:b0:431:932e:eb6f with SMTP id
 x2-20020a05640225c200b00431932eeb6fmr124805edb.296.1654568810812; Mon, 06 Jun
 2022 19:26:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a7c:8e88:0:b0:187:2cc5:ae1f with HTTP; Mon, 6 Jun 2022
 19:26:50 -0700 (PDT)
From: "Mr.K.Mashal" <michealibe122@gmail.com>
Date: Tue, 7 Jun 2022 03:26:50 +0100
Message-ID: <CAMciPd91Kj3FiDjh5L8neUxhUHY1nOJWDaxW8fq1=S3-bm+0nA@mail.gmail.com>
Subject: Opportunity
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
Reply-To: dalh52179@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sir

I have a Lucrative Investment business proposal/Next of Kin
opportunity if interested kindly contact me for more details:(
dalh52179@gmail.com )

Regards
Mr.Khader Mashal
( dalh52179@gmail.com )
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
