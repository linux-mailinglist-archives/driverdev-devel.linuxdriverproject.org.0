Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A13AC456927
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 05:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E30781C2F;
	Fri, 19 Nov 2021 04:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bi1O7BOf7xHr; Fri, 19 Nov 2021 04:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 135C081C21;
	Fri, 19 Nov 2021 04:27:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFE821BF591
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 04:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DEF0D81C21
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 04:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJpDogl6Hgwe for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 04:27:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com
 [IPv6:2607:f8b0:4864:20::92a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39FE781B99
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 04:27:07 +0000 (UTC)
Received: by mail-ua1-x92a.google.com with SMTP id o1so18755465uap.4
 for <devel@driverdev.osuosl.org>; Thu, 18 Nov 2021 20:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=ujx8Pmruz5VDMz2Wga0CAPmfOeIDJ9v6BK31oqh0jck=;
 b=UTW9tUymV+Y1vbzBnycwE4HXSG4n+cKx0LmDtcMSJ5BzLSFUqdhyS5FqbFzEeEDJca
 f2Af/x8rcauV7eAwZ0FaZDdPkL4FoafK+Sxly42KUaWRjprEwA06AQCwSOExkv8ijyKv
 YGkeYXiY9HlH2Qwwrbw5ChnrnkhYilI6CSjRKEtXLuTDVp/Fdyc03tRv29s1OnYP3ZC7
 M/IU0KxfOmyddwxsRMcexasBeRiOQW02PiVw4G86uR+1BHEX5/zSljq3pvtrUl/peHBo
 rGJ675rl5UuTX2/adluF67loiRCGwjAibLNkJEVgHm66XnZGm0444X4UtaZ47++9hFGm
 eceg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=ujx8Pmruz5VDMz2Wga0CAPmfOeIDJ9v6BK31oqh0jck=;
 b=gJBnV/+l88M7Bq28hAdCK0HDUQlQCmNfcfekC+fMgUZTi+oGeHpUv5vunsjA3xhAOi
 LX2+/286PYTBN6K/zlndL39eTfkBvULJhoeEv2wHPEJ6pAcj8IRxUZSIS7N2IRNCTfJ+
 33d6Uq6W1VygYXUfYiDK97SmwshOC4IvttJL5MwlD3T0XNPgNezY+1pQDD1hpTX5jdz4
 CCboPoJ+fuC7soUEvsE2YPsH0cSmg6Zl1v+G2+S6ilxtIWI4tbgXkrGYqgpJGyOrj7ms
 vzgyo9KaY0v9FNhpqBjin9XqMPww2MtXMoA5Bn1SET38pJGPPrTkqAsltP6Wycs4ADTh
 y7+w==
X-Gm-Message-State: AOAM531zSvg+/qnuHNQ6oZIBmdaaNwS5kjdnxxS4vQtgrslsemvtegzG
 YRt83Gzt8ll1cDGurqJrD2+MNv1DtHVaK2Ud1eI=
X-Google-Smtp-Source: ABdhPJyVqk8PO5FFFNZGj2sGxi/Qa7J2CzGQCVw2f3Yf1M38kzrsDzbe3u7JSjAzcpp5gZjWY2T5MGuYNEAxBT5QiQQ=
X-Received: by 2002:a05:6102:32c9:: with SMTP id
 o9mr89125750vss.46.1637296025867; 
 Thu, 18 Nov 2021 20:27:05 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a67:ea45:0:0:0:0:0 with HTTP; Thu, 18 Nov 2021 20:27:05
 -0800 (PST)
From: Godwin Pete <godwinnpeter@gmail.com>
Date: Fri, 19 Nov 2021 05:27:05 +0100
X-Google-Sender-Auth: a9mmzntZXKXR6UgfVxXbMplWaJQ
Message-ID: <CAA_hoV1nHVfDMqdODhyc0AdTKUE0_JX3a+u5UPMdT+wouTHp_A@mail.gmail.com>
Subject: Reply urgently
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
Reply-To: godwinppter@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

I'm contacting you to know if you can help me to transfer the amount
of ($6Million). After the transfer we have to share it, 50% for me,
and 50% for you. Please let me know if you can help me so that I can
give you the full information regarding the transfer.

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
