Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8034CA761
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Mar 2022 15:08:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 324274048A;
	Wed,  2 Mar 2022 14:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igTxBQxZBy0a; Wed,  2 Mar 2022 14:08:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B63440184;
	Wed,  2 Mar 2022 14:08:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4EB11BF3C0
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 14:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B37AC81454
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 14:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y6knBd4hB_DX for <devel@linuxdriverproject.org>;
 Wed,  2 Mar 2022 14:07:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6479781445
 for <devel@driverdev.osuosl.org>; Wed,  2 Mar 2022 14:07:56 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id o6so2460374ljp.3
 for <devel@driverdev.osuosl.org>; Wed, 02 Mar 2022 06:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=JYR0MSjliEEcDgJsz62eJTq9bJRCvuJ6w2VQmg/D/2Q=;
 b=A7bZnZ2T61YvSuZ4X5R6HliGenhXvBtz/qH5NTde5PDQm8djdHakG6AMP5qCR+pyn0
 c6yUa7o4fYi+jueCGgb0H+b6WVCd9CJcYpQeSyLuCirO9xz5uB3HWE62EZ+xTBrlFQ2v
 siuHbB7/nnDaX6TD1tFhIXAS/Dql8JBijVb2N1gYWzwcpYu6+1uar0Q6dRe5HY8oz7bU
 Op2ws6hYoYnbC6gvperuVIUuMe28qIUi/xx7PyOz81aKcZd0uc7X/jn76cOlsg4g+i0L
 w+MCYPojbRWV+aZzmglsLalhNIOXcgJ5/52anIgLr2qypAG9l+UEwcrduo9/b2ydhaEO
 t8bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=JYR0MSjliEEcDgJsz62eJTq9bJRCvuJ6w2VQmg/D/2Q=;
 b=WJkrCUpIqPmVAT9o/f+vdsA2JtZL94z1B97UmCmCGXbCpCYAUjG+EKLJDE+6x1hiJo
 gcukcXluZlCPHNN831C2I9FjHcvirGZg6Pqi2u3aDfoY5y4jHkgMndfLtLQMq6SMxr85
 xml94jPfd7868n9s6psMwv+2VirIimAZjW1bho12YjbnFxhaz76bvfCw9uqLwYcmG6sU
 40TSzjPBoKKwPhS4SVinqmXhT2F/oBEVz6HdWMePpZJRBdQq7ZIu7WpHlQV/9F/Ue0hK
 1Eem9lu8akeFe7enZlfFsucaa3sujZdbx0qQOBeYBYYOV9fbirDQIBzT5ssrSlE4md52
 qbYg==
X-Gm-Message-State: AOAM531PgAriIpFZ1gyP3GSXpqPav1EP17dZh/Xl2BHjhjcft8yckTMw
 csmr0hTX63L1Ov0NntKY+tg0JlkKZaGEVRyLcJA=
X-Google-Smtp-Source: ABdhPJwJK8q1OgD5VDpdOFntDECjDB6k/2r3SX7UxmyDpSUcCagBotD9vxMkGRTmCPT4lvp2lP8ZAUSmUd240jIZM6Q=
X-Received: by 2002:a2e:8053:0:b0:23c:fa2a:5d3e with SMTP id
 p19-20020a2e8053000000b0023cfa2a5d3emr20276972ljg.96.1646230074049; Wed, 02
 Mar 2022 06:07:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab3:650d:0:0:0:0:0 with HTTP;
 Wed, 2 Mar 2022 06:07:53 -0800 (PST)
From: "Mr.Mahmoud Abbas" <chineduj21@gmail.com>
Date: Wed, 2 Mar 2022 15:07:53 +0100
Message-ID: <CALU6aQx3CZVhLdT8ra9Oga9qg+sX0B3L0y33-oxYSqN=-zZ=-Q@mail.gmail.com>
Subject: Dear Friend,
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
Reply-To: mr.mahmoud_abbas@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

Let me start by introducing myself, I am ........ Manager of
Bank Of Africa Burkina Faso.

I am writing you this letter based on the latest development at my
Department which I will like to bring to your personal edification.
(10.5 million U.S Dollars transfer claims).

This is a legitimate transaction and I agreed to offer you 40% of this
money as my foreign partner after confirmation of the fund in your
bank account, if you are interested, get back to me with the following
details below.

(1)Your age........

(2)Your occupation.....

(3)Your marital status.....

(4)Your full residential address.......

(5)Your private phone and fax number and your complete name.......

As soon as I receive these data's, I will forward to you the
application form which you will fill and send to the bank, you can get
back to me
through this my private email address (mr.mahmoud_abbas@aol.com)


Best Regard
Mr.Mahmoud Abbas.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
