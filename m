Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ABF4415DA
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Nov 2021 10:08:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62AE040235;
	Mon,  1 Nov 2021 09:08:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdXQgY2uHY_p; Mon,  1 Nov 2021 09:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51D9B40131;
	Mon,  1 Nov 2021 09:08:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2363D1BF31F
 for <devel@linuxdriverproject.org>; Mon,  1 Nov 2021 09:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1FFDE6063C
 for <devel@linuxdriverproject.org>; Mon,  1 Nov 2021 09:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zzBJXZq7gkrg for <devel@linuxdriverproject.org>;
 Mon,  1 Nov 2021 09:08:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA6ED605A9
 for <devel@driverdev.osuosl.org>; Mon,  1 Nov 2021 09:08:34 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 n11-20020a17090a2bcb00b001a1e7a0a6a6so15598713pje.0
 for <devel@driverdev.osuosl.org>; Mon, 01 Nov 2021 02:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=6HWY2RI+FtvVbkoOY7LdNKW2rsbJpW2fRnm8iybCLEU=;
 b=TBONYN5HGkVMd+z8HjODtXdiuCeIw9L2L/LsPvd9JSnBAd+5Z6ixiJe9hOJ9ehXYz3
 o94UNnvgu/p59g1C5fK11akTpTz4ti0W7dWrMt1o/MZzlrG8ttUZecrbvBBNZk0JYJ9I
 uA+0rEZ19itaAsjojm9/bknb9ZtUknTT2xcsEWTMS1inIE2yo4MPxt8N61J0sSMrV6i9
 sWgIKM0HYxI1kLoL+5uZq4rh8XVcG8yKzbue0+VxJj2A2nAeLx1sZCN4EFcFtumMi0Oq
 2cAxwqBOvQ1Iwykvwat7Qhr6LEfa66/XqpJwtzh2KqI0OZP8GoMkrCdFDMZKHl0MeIEq
 LsNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=6HWY2RI+FtvVbkoOY7LdNKW2rsbJpW2fRnm8iybCLEU=;
 b=UHbW0kECiVOVWp4vgrQhtm6cdZBCLIJFWopmxvDy8OaCfe46OSQAbZSM9sK1sjhKG6
 HgD7XuQifXle2rz6XY2KYoqv229oJNq07NrEoIWvC/c2YznicMELW+vi6kTBIgjFCuvG
 RuMZAcAHSiAiCuOtFdLlZKPwaFvzTFz1n8m/MOplyuL2VXEvm6oIp8tz+i1SArW9njN2
 snnoJDuwMwTNgu7UieAbkK3LMN7tql8+W2Ylb6XAI7u/Wj7Gp9aNfCbEXEs04V4U8a5Y
 EHG4cOA+5QjlqiyM7WDse4D/k5n16Ojtxr+6CvRi0ett+Nm917KxvPmRJrETCldGQbSi
 D6yA==
X-Gm-Message-State: AOAM532EVXtRAk4BjE7ttv95uTAo1EV4CED/aC7vQiIZ6zxMg+/a3EfG
 Rix+uAQ0hmkW8OFicw9wjgfJJJyGrT4JD2cMiOY=
X-Google-Smtp-Source: ABdhPJy1Z66x9TLY1ojY5XLHldiEkClYPeeSoUBTrF6MGnIfrVBYRI/33T2u5nPEDfKIUX8uw/r7W45DFyNOQTi7aJA=
X-Received: by 2002:a17:902:6b83:b0:141:6368:3562 with SMTP id
 p3-20020a1709026b8300b0014163683562mr23502780plk.42.1635757714014; Mon, 01
 Nov 2021 02:08:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90b:4b47:0:0:0:0 with HTTP; Mon, 1 Nov 2021 02:08:33
 -0700 (PDT)
From: "Mrs. LENNY" <ssbutt07@gmail.com>
Date: Mon, 1 Nov 2021 09:08:33 +0000
Message-ID: <CADEVqW2J6Xun=YdWTp1okrGN_gvfpOonTp18xEyOEqYQSdtx5g@mail.gmail.com>
Subject: Good Day
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
Reply-To: lennyfidel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good Day


With due respect, trust and humanity, please exercise a little
patience and read through my letter. I feel quite safe dealing with
you in this important business, you have to believe me and let us work
together. I have a business to discuss with you,  just let me know you
received it and I will tell you more about this 10.6 million business
which will benefit the both of us.

Reply and send this information to me at: lennyfidel@gmail.com

Your full Name.................
Age.......................
Country....................

Thanks and I look forward to reading from you soon.
Warm Regard
Mrs. LENNY
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
