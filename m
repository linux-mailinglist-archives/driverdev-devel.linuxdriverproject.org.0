Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F3247E7F4
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Dec 2021 20:08:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E77EE81461;
	Thu, 23 Dec 2021 19:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OSmIrQXv6s7y; Thu, 23 Dec 2021 19:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42C3D81463;
	Thu, 23 Dec 2021 19:08:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 700DB1BF2B3
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 19:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5821F81460
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 19:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M_oLaik33Tnd
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 19:07:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7F4D8145D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 19:07:51 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id jw3so5752230pjb.4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 11:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=PA5Eb3SKatYFaqsO/40bx9AAytaL07oA6ydkj8EAbzQ=;
 b=UkmYk8bkT1Rlj5rgk1SO6h0a2ZnhiE0CBVLQVCDUO1lxjvxxLnJNbWx2J/zaCycaUm
 gpjDQqIAT6ZdkIVSdg12eiqOeKZjQ7B6avvrJ11TgZ58l6SPRF67r2i8cOWD6iLnPwPF
 +GcYnPV4M9mtgkW7MsgK10b37Ijt2h/pZL/47tsQAtxbO0Nb1h1DPgU3hjSIh8885jv5
 oNLiuaX90XkSrXfJ0vKffls2f+YLeWewZGK/zF0rLrvD9l7ES6ybm6hpfj/AVz5kx4WE
 A714SEbTsaEBoc+IzAmR9gzV6J73CerBUPJm1+2cTEpQIpocdCh9nGXBIgSVzkoz3fIl
 Ib/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=PA5Eb3SKatYFaqsO/40bx9AAytaL07oA6ydkj8EAbzQ=;
 b=c2gANx6hIotQSoC2gcchmGsTDkKJw1h4ea8MMOS8OzysylTj0sa/45tweF8iTRhvGv
 4BsCQu7VnQ2ZgaXL+tcZfT2UKU4IOQAtcn7U94woovv2rsk4KRqDpmlLZzOkHCZoYUOE
 md1y0alUe3b/EZf96Ks1RI6bOuRMD96Ne7DP/1lxvPSyQ6bpiEUObF8djJDQf03pb4Ql
 sniJwZQoLtcFXuR+MNdsLuvUQ+PHPYKLfpQV0dN+1aTVh+CW27/vYCIaGBrpikoFwlp6
 CdvmV89nZ0qpgkzwpeTOQX8yiyhwHt6iEhZkZ273nVw4Zpajs+wqFHkHSutx2lchLNc4
 0TQg==
X-Gm-Message-State: AOAM5304TDySgAbj6wWbjoe2Az42TSaQfoOQnmBDvQAKoQOFIgEp2bnF
 oVbMJsMuACOA43Wvva1vTGxu+m7NaqLsQWEkGWw=
X-Google-Smtp-Source: ABdhPJxjjNNaAAZf6zdtV7cHFZ3Xttipb6gKEGO0gs2RpfKNenVe7eKOsItJva599gJnrgD6H+SGyKXDWlL/iH75a/Q=
X-Received: by 2002:a17:902:bc85:b0:143:954e:8548 with SMTP id
 bb5-20020a170902bc8500b00143954e8548mr3526489plb.82.1640286471040; Thu, 23
 Dec 2021 11:07:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a20:789d:b0:68:7657:a7bf with HTTP; Thu, 23 Dec 2021
 11:07:50 -0800 (PST)
From: "Rev. Fr. Paul Williams" <melindagatesfoundation53@gmail.com>
Date: Fri, 24 Dec 2021 00:37:50 +0530
Message-ID: <CAMk=7STiO_AnPfiThkc0igBhN28j_=mWdZ6Aq04xstne4q8cRw@mail.gmail.com>
Subject: Donation From Williams Foundation.
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
Reply-To: revfrpaulwilliams2@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Contact Rev. Fr. Paul Williams Immediately For A Charity Donation Of
$6,200,000.00 United States Dollars At E-Mail:
revfrpaulwilliams2@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
