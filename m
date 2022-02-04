Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5AC4A9F35
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Feb 2022 19:36:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 124FA40350;
	Fri,  4 Feb 2022 18:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nvuw-mJIogSp; Fri,  4 Feb 2022 18:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89E2A4018B;
	Fri,  4 Feb 2022 18:36:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B5101BF297
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 18:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2850640350
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 18:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QaZdwIGzv3Sv for <devel@linuxdriverproject.org>;
 Fri,  4 Feb 2022 18:36:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F24A4018B
 for <devel@driverdev.osuosl.org>; Fri,  4 Feb 2022 18:36:32 +0000 (UTC)
Received: by mail-yb1-xb2f.google.com with SMTP id m6so21227758ybc.9
 for <devel@driverdev.osuosl.org>; Fri, 04 Feb 2022 10:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+5Aj1KjYxfLdKjI/WZUbvXzI5x0t228gk/N8Q28NwXc=;
 b=m2yPocPkciKFGCCbvaln3VxAlvAsooZ724bmD/N4oVRNvlL0VoMSE4qNXZ6Dp4VN84
 TMskNSAHGDldEClw1PdUHIrN0kRP0kI/yqSHpPMNihmGdy2UxKXS8Gm5Tq18MkRAinRe
 EdWn3NlqWh12+3X55hF/jc2PCPBonzObBRf0sM/j8oKsDhKedcOjCciXuiAW1EruLmtY
 mBdSkQd1/NxxDo1jv6dDI1lM9SuAS+WEZ9LRGBAiYNqt+tQBpU0N0/fAxT7BMIY4QQMu
 xY1sTyYSg6fr4V+QxtOFxy9rhjoa8sFwIhSkXK2ImsPcFnvdbFhgBmG7iWv7XNtP885n
 D1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+5Aj1KjYxfLdKjI/WZUbvXzI5x0t228gk/N8Q28NwXc=;
 b=0Br2RSMuM2p5JD8HrGzu5BX0s3vUUHmZrrKKnOvne0LWCzzbSaaB9Gl1m/5T48Ltux
 NNoAgWxi2kUL1dUE6vTy+uc+/a3mx0BFSjHwp8TVWC3fpuMJkVAO5ztnK/Y/kIQGVCIe
 jTg1DuwM35l3SXm1zqrBD22CVW0+Yhdw8wsr1qp8lNLGijqNaaQVr+FN90+WS9GPH/hJ
 kmbndH5HJc1WS1VTFXtCtX424JaCFIBwJvncix4A3T5JQ/tvy4YREddfGxeZ6mqvrah5
 YY2jpIHnS/2Q0YSp5TL7kTgeQofc3EsdFAunfRhtgFhKqdlZUJcaEFkkbS4tTIt1cMqa
 0ZuQ==
X-Gm-Message-State: AOAM531KC9s9/r671zQG15YvIIt1RskRxNSE/MH2cX9W5mSCRJglpXAR
 1ywVgsfOoK39hCdis1Xmvh6cZnQsaShFfmCboU4=
X-Google-Smtp-Source: ABdhPJxcSUbvJwDw+JlzrS/bulYbjADv05HysQJPJATVorWp5WCcH3QqAPDjvAjAGc8SvpMHCNCL8XrxA9N1cb+TU3s=
X-Received: by 2002:a25:1809:: with SMTP id 9mr434289yby.633.1643999791205;
 Fri, 04 Feb 2022 10:36:31 -0800 (PST)
MIME-Version: 1.0
References: <20220204054028.3123858-1-ztong0001@gmail.com>
 <Yf025dphJw2rUVR5@kroah.com>
In-Reply-To: <Yf025dphJw2rUVR5@kroah.com>
From: Tong Zhang <ztong0001@gmail.com>
Date: Fri, 4 Feb 2022 10:36:20 -0800
Message-ID: <CAA5qM4By97L-QEjJd3HhzJ=9XLve7Fuj_Wo-uO8Lp94XWJDx3g@mail.gmail.com>
Subject: Re: [PATCH] staging: gs_fpgaboot: revert removed board specific code
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, insop.song@gainspeed.com,
 Paul Bolle <pebolle@tiscali.nl>, linux-staging@lists.linux.dev,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 4, 2022 at 6:23 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Feb 03, 2022 at 09:40:27PM -0800, Tong Zhang wrote:
> > Loading the driver will always fail since
> > xl_init_io() always returns -1. This driver is broken since 2014 and I
> > doubt anyone is actually using it, we could either remove it or revert
> > to the previous working version.
>
> Let's just remove it obviously no one is using it.
>

I am on the same page with you folks. We should remove it. I sent out
the patch to see if
anyone in the list is still interested in keeping it just in case. I
will send another patch to
remove it from the staging folder.

Thanks!
- Tong
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
