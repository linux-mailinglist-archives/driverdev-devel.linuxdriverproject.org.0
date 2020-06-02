Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D971EBF89
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 17:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D9A4810C1;
	Tue,  2 Jun 2020 15:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zuQ6L2QNIYCq; Tue,  2 Jun 2020 15:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3393381B87;
	Tue,  2 Jun 2020 15:59:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E92F81BF20D
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 15:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E4A50883F6
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 15:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f9q7FRJoAusv for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 15:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 46D43883F0
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 15:59:05 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id g28so12268679qkl.0
 for <devel@driverdev.osuosl.org>; Tue, 02 Jun 2020 08:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GhDlzzj1mv7yjNQeNayBeO/EQ27hFrs4LJVQMmEO7ZU=;
 b=HRVVix6fLBW7SoImi6PGKNWY5i637jkMDGxfNb8eOkFYvDbYhVtpRgIbPUDpAmUXjf
 UTqXCi9AycOA+YTVlnYw5fQKrexMzJi63m5RJF5KYgV5ejHwovcZUMej/vCTvN+RxnB1
 buligpO9CEtdJHqekLm24+bVz/gCOSWv7MnroG0OgTERoLrnrqeBKAULBEsRMEnGSvT5
 y0cFZzTGu9DA18IZoZUKgBHsBbY3yGLY2CWI04iwDas8pJZILbNQqIwArQQ+Lu9JDhN9
 3P80nOLUa3GvxWDVNPt/KEUA5hNCDFpB9y1NBFFR3u/8HcdLVyV1nmyN2J5fLkJSxOeG
 5/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GhDlzzj1mv7yjNQeNayBeO/EQ27hFrs4LJVQMmEO7ZU=;
 b=FR5SRgjeqiaE6e2+kqCOXLtQFecxv1UZgTyJfGZZD8zZvUs9G5WAiiGlawtVEXjHsB
 uoUXzOf9cjfQaslg9b171/Tyb2E0C405jcQRxin4YtxayuPBb7SlvkrVe5dAMOU/lK+D
 Z9NVDn4AHELB4jROSbJfzsQni1dyTPtiighhPFOIO6MhnT23vQt6jwVKkV0lGGTatSqf
 5Essvn54DENIewGMzbDG1S09SvCyQSrz/waHCWXNUSwLJ0NRFjkUpk/8j9VHpv6kMPhD
 K1oI7hUBwZorDH1Mq/yvoirXPjHhfkzENO62viHtskvfK/gGxEB16T0V2Nk6m8lzmNC+
 pWpg==
X-Gm-Message-State: AOAM5338ntUnaeYZqC4yqcpMn3qyWuf2qRfbiDMm1oW3nMNxgb8mTNZ0
 z/S8mdpPQ3bgJJM3crqt0r+nUCMJYRGaolkCa9Q7mA==
X-Google-Smtp-Source: ABdhPJzPXqtYUnytWt1lWymuRWC7EmIk7gvjXjPqtJyBraYJlsrH+F7AKpB0S7/2vmcXlFuqJXfy40/Ft7BjRB6w5lE=
X-Received: by 2002:a37:be05:: with SMTP id o5mr10744656qkf.309.1591113543271; 
 Tue, 02 Jun 2020 08:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200601202410.124593-1-pterjan@google.com>
 <e668fc72-9103-70cd-e545-095e88c53dcf@lwfinger.net>
In-Reply-To: <e668fc72-9103-70cd-e545-095e88c53dcf@lwfinger.net>
From: Pascal Terjan <pterjan@google.com>
Date: Tue, 2 Jun 2020 16:58:46 +0100
Message-ID: <CAANdO=KBPh81Jaxhta8k3ipnwWbr5xdhTuRW6GNEZsTTpyMjXQ@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8712: switch to common ieee80211 headers
To: Larry Finger <Larry.Finger@lwfinger.net>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2 Jun 2020 at 15:57, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
> On 6/1/20 3:24 PM, Pascal Terjan wrote:
> > This patch switches to <linux/ieee80211.h> and <net/cfg80211.h> and
> > deletes a lot of duplicate definitions plus many unused ones.
> >
> > Non obvious changes:
> > - struct ieee80211_ht_cap is different enough that I preferred to keep
> >    (and rename) it for now.
> > - mcs_rate in translate_scan was not read after being set, so I deleted
> >    that part rather than using the renamed struct
> > - WLAN_CAPABILITY_BSS is replaced with WLAN_CAPABILITY_ESS which is the
> >    corresponding one with same value
> >
> > Signed-off-by: Pascal Terjan <pterjan@google.com>
>
> This patch does not apply to the staging repo, current mainline, or
> wireless-drivers-next. Where did you intend it to go? Staging is the correct tree.

It was against staging-testing as there is a (trivial) merge conflict
in there with https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=2aaeaaff1ae21b2817256435c7fc0095eeda61ae
which is also in staging-next
What is the best practice in such case?

Thanks to kbuild test robot I found that it is failing to build there
because I forgot to add a dependency on CFG80211 in Kconfig, so I will
need to send a v2.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
