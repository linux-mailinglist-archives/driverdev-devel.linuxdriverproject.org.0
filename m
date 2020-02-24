Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77766169DCC
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 06:32:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14F6B85D40;
	Mon, 24 Feb 2020 05:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Jb6AWmpJmWD; Mon, 24 Feb 2020 05:32:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65EE785D3F;
	Mon, 24 Feb 2020 05:32:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4316A1BF41C
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 05:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3FF4286FDE
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 05:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3s69kmzhMYx9 for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 05:32:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 88C1F86FBB
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 05:32:33 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 84so4753784pfy.6
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 21:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gmAc8ivr/C7d+QzZGVBXrbDmIH8je8z/sIj0mHBkKGA=;
 b=ZWrpZPkwcspILxRqZCPH6tehznrkWPgVYfNG0SD2upeoyUXb2JLfL7V8pdTjmALv0S
 +JADJ8tHoCASKaF0JZPZDYLtP+dyWdjrRL9md1pi6U2CvIaiBRLL2/oulbtKziwqEpEX
 jfDoCmYscWwSCtgfxTLf0hfKSbWa0RlcjEFt9n5ZZ89ECzhLBm6S97D5Q3hGtHH3mbi7
 q2lLJCeowTs88oR0wkYSShUwFfqhe8HymVHK+F1khjwVYT+fdB6q7ZLc5dLEnMw+RCIb
 pWLlzM2EP5kESxosnQWxBnEcv1ESO7Ld7CkPd6VltMfOI0r77iMlOrXSMsIhaqzR84CJ
 zE8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gmAc8ivr/C7d+QzZGVBXrbDmIH8je8z/sIj0mHBkKGA=;
 b=so7BkVZB6YxyHiXjpESKNSPggAPIpywYifOa+ptuxBPuTpsYlzVv3EdbeVDBumyufA
 kBe1ClMHEODl0m0wJN+AiiPHUSkNWLjAFJmzYcCcyzLhlEmgWZ5A2XXc2rn659gxnyzh
 0K9rTlAWPveOiyJI9AsTshXBxCRXomgFDPTVtoS1VD5ThHqY+ihu5Tf9287hIhSLALKW
 Epyn+bZGnrPANEfpyY43+n0BwohcQvtkcLa/dp8QtwF1rsueHjvcHvgjbPg38Hk1+kQw
 ri3s+n2h+RvHpsA0QpGjgUBPzrkin4iJ7izxG4EhBe0VfNb86e2yn07Qmw0fe3SIiC0z
 Hxqg==
X-Gm-Message-State: APjAAAVZaAVExFwk/RXpzEEpiBKpSwhEmvF+CXZcE5p7/vo2iNNNiCwR
 /UKnKEqT7LLqabrv4mAlJjs=
X-Google-Smtp-Source: APXvYqw2+OoNUwC+DHYLkIWINIDRLfS6iaF7yKwT/NrQkJuKpO0+htrhpSkg4MTKvnr4RSsOJ2K1Xg==
X-Received: by 2002:aa7:8804:: with SMTP id c4mr50981283pfo.214.1582522352952; 
 Sun, 23 Feb 2020 21:32:32 -0800 (PST)
Received: from f3 (ag119225.dynamic.ppp.asahi-net.or.jp. [157.107.119.225])
 by smtp.gmail.com with ESMTPSA id z10sm10489746pgf.35.2020.02.23.21.32.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Feb 2020 21:32:31 -0800 (PST)
Date: Mon, 24 Feb 2020 14:32:25 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: qlge: add braces around macro arguments
Message-ID: <20200224053225.GB312634@f3>
References: <20200221195649.GA18450@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221195649.GA18450@kaaira-HP-Pavilion-Notebook>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020/02/22 01:26 +0530, Kaaira Gupta wrote:
> Fix checkpatch.pl warnings of adding braces around macro arguments to
> prevent precedence issues by adding braces in qlge_dbg.c
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 8cf39615c520..c7af2548d119 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -1525,7 +1525,7 @@ void ql_dump_regs(struct ql_adapter *qdev)
>  #ifdef QL_STAT_DUMP
>  
>  #define DUMP_STAT(qdev, stat)	\
> -	pr_err("%s = %ld\n", #stat, (unsigned long)qdev->nic_stats.stat)
> +	pr_err("%s = %ld\n", #stat, (unsigned long)(qdev)->nic_stats.stat)
>  
>  void ql_dump_stat(struct ql_adapter *qdev)
>  {
> @@ -1578,12 +1578,12 @@ void ql_dump_stat(struct ql_adapter *qdev)
>  #ifdef QL_DEV_DUMP
>  
>  #define DUMP_QDEV_FIELD(qdev, type, field)		\
> -	pr_err("qdev->%-24s = " type "\n", #field, qdev->field)
> +	pr_err("qdev->%-24s = " type "\n", #field, (qdev)->(field))
>  #define DUMP_QDEV_DMA_FIELD(qdev, field)		\
>  	pr_err("qdev->%-24s = %llx\n", #field, (unsigned long long)qdev->field)
                                                                   ^^^^
You missed one.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
