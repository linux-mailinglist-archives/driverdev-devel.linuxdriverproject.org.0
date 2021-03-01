Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B31A6328032
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 15:03:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE61F4EC28;
	Mon,  1 Mar 2021 14:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id strWSsageSdo; Mon,  1 Mar 2021 14:03:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3FA84B0ED;
	Mon,  1 Mar 2021 14:03:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EC9F1BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DD824309D
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W05RBOrVomXO for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 14:03:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
 [209.85.166.54])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1E1C4308B
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 14:03:05 +0000 (UTC)
Received: by mail-io1-f54.google.com with SMTP id n132so5983172iod.0
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 06:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8cjlGiMrapknGiyDRRumzTREtj0P+xU+/mIsRJmrVZE=;
 b=k74YN6G6JCyY0gwdS5D9tFn7NRveuJ8lKNf5MQKsdouZqYJ4haZpQdK8fn6qCA7OWX
 5vf7qXYkMzXiH9c8bPbPdVGjnZKcDLfpVPqZW5TRehQj1qNB0w+R4JMVNJ04TeZl07nH
 ISvFdQdcDuhCW9iLv/JCa+Kmaoc8DW5mxnvwD1carCoT1/pp3TEkPHH1DEYtdzfgs8KL
 OvmQHMgu2NA12DhKxXuPP73meWzYyrcMf2225Q140XAMRTIOzVehv0KT4bE4Z5Ajwmf8
 xaiW7BNbDBMXESBGwloRz2HHXgkuPF5pN6RqGACoHFKq+G1NNcToDMcv8yxrlMgNe0w3
 RJcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8cjlGiMrapknGiyDRRumzTREtj0P+xU+/mIsRJmrVZE=;
 b=PigxhavcNd0fWRPg/hGWA7mcMj8tJsXnaAcDGUuEAcE8o8m24aKh6r3k3cmYj7kiUD
 9BJBFI5HY6H6fFNu+0IpvIyF7HosbI9Bty5swM3dcKOq+zXonC/qqsndr7zOWyvXIylJ
 nFiuRs7Cuaze5cNrcdOW6lReEBCGqjC7JIch3PwEDfoRJVmU+7CTiLWyK+s3addseVg3
 JLHKMSprUzpXsvFjU6w/q9J0IcuuVfOG63n2pqLvWfhUiIbFzhrwFnrD1ds7zY/YWzX0
 5KhMHVUVwaoicPESpR2X7I5RWazbyPz8ooKE6EtGy4DywRp0QTGR7K52WPliTb2JeP2l
 7joA==
X-Gm-Message-State: AOAM532LPttTlvKJgiOj4ml/EUUj8Z8MH7Dqmny7bzh929huxqn65FZb
 Dg2736MSmUfgPFgl8ZyYzQ==
X-Google-Smtp-Source: ABdhPJwPP687MnJmqNKUzCceQEFnT3QiR/VbLlWZx2DCeheYB+RYApkz/kWnGnVXiqPr5Mw46YOJoQ==
X-Received: by 2002:a6b:6206:: with SMTP id f6mr13405262iog.18.1614607385110; 
 Mon, 01 Mar 2021 06:03:05 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id h128sm9896819ioa.32.2021.03.01.06.03.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 06:03:04 -0800 (PST)
Date: Mon, 1 Mar 2021 21:02:57 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>, gregkh@linuxfoundation.org,
 Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org
Subject: Re: [PATCH 0/3] staging: rtl8723bs: Replace sprintf with scnprintf
Message-ID: <YDz0EdeYud+/vRQK@mainframe>
References: <cover.1614603705.git.cfebriyanto@gmail.com>
 <6e6c21b1-ad40-4719-b9bb-989a36ea7b4e@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e6c21b1-ad40-4719-b9bb-989a36ea7b4e@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 01, 2021 at 02:45:00PM +0100, Hans de Goede wrote:
> Hi,
> 
> On 3/1/21 2:12 PM, Candy Febriyanto wrote:
> > This patchset replaces most calls to sprintf with scnprintf, thereby
> > preventing potential buffer overflows. The rest I left alone because
> > they write to a buffer passed by a caller that doesn't pass its size
> > alongside it.
> > 
> > Candy Febriyanto (3):
> >   staging: rtl8723bs: core: Replace sprintf with scnprintf
> >   staging: rtl8723bs: hal: Replace sprintf with scnprintf
> >   staging: rtl8723bs: os_dep: Replace sprintf with scnprintf
> > 
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  3 +-
> >  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  4 +-
> >  drivers/staging/rtl8723bs/hal/hal_com.c       | 45 ++++++++++---------
> >  .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 20 +++++----
> >  drivers/staging/rtl8723bs/os_dep/mlme_linux.c |  6 +--
> >  5 files changed, 41 insertions(+), 37 deletions(-)
> 
> Thanks, the entire series looks good to me, for the series:
> 
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> 
> Regards,
> 
> Hans
> 

Thank you Hans.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
