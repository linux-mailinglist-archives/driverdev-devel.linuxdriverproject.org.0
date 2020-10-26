Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 343132994AF
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 18:59:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C9B032E131;
	Mon, 26 Oct 2020 17:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxX0V4oeTL0g; Mon, 26 Oct 2020 17:59:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 275332E0E7;
	Mon, 26 Oct 2020 17:59:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F8A41BF20F
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0CDCB8598A
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdDhf2wuPJ8S for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 17:59:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B115E85910
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 17:59:38 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id w11so5089541pll.8
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 10:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ciNA78jzPLJaDoJ3trn3a2BcwF+MJZVxp8NiADrUvu8=;
 b=AhjPLiaOP9FdG5ogodkGPDSJtyKWyL7b/s1SKCdqVPPTsgICf4Fy7jfAQn41u+ImD4
 WRD7ce7iFAuH61uOEWZ5AZmeqK3cVAecUEaIhOoP+QmP0xhuYct+f2vOBtx/aQj0a/F+
 OHqk7XsCCaIHPuv9SehGqmheXX1xEHu/3t46YL+QO2tcge86TA07ZOFEdyDQG8dlmHRg
 vGYDuY5xm0DXigDmluuFlNarkYwaKfjqYMijnvzAohJ+i9QkXSPYJx8j+Ov5nI3m7yma
 74FrfWG4ALR/l7DOm/BNI1hnFIhm5iseT360AVuoqFcpdBF1fGEbL9oMupuivlVjg3f5
 RqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ciNA78jzPLJaDoJ3trn3a2BcwF+MJZVxp8NiADrUvu8=;
 b=dtIRGayInPQIFpsDV98o3pfmJb7pUoKVfKpYwE51B39RXdQYFJXgRj5ioOMTpK4cxk
 DDeE46AUQMv/wNLvLx7xXBZhnUdoAlo0qMPQhFYp1Llu/R8gnzcwUfZV28itEgObVUMy
 YA6eD4Li/WROSIugG1mE5bMqmYMt6oHJQux2fliK9iofMPtb6kJ2GDA6nkfMHEKpp89o
 hhGJJf8IbN7VruP/7ilzPIDHMX3RZDqY258ufSOQku3SQhjj3snr9g0UEl0vlivaOzM9
 /efYcQF87foBF0tD8SPGpW2/LMTyPV+ERBND5pQ5uqUU0d8OjzSMUWqPpz3NcZoXI4Nv
 IqDA==
X-Gm-Message-State: AOAM533kj2Vb3I6Fz/4a0f6krqQNeOh+RUKbWy4Xyl3L59e1S5/s232A
 GDQ5knOnk39bro7VPqeq6Gw=
X-Google-Smtp-Source: ABdhPJwPXDDH8caolB+TFtSkVmmq/koh6as1M78UgATeif/x4zXCHXfXdKotyJFaZIdqcszlD3AjGA==
X-Received: by 2002:a17:90a:9ab:: with SMTP id
 40mr16992083pjo.26.1603735178409; 
 Mon, 26 Oct 2020 10:59:38 -0700 (PDT)
Received: from my--box ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id j6sm1465648pgt.77.2020.10.26.10.59.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Oct 2020 10:59:38 -0700 (PDT)
Date: Mon, 26 Oct 2020 23:29:33 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines
 exceeding 100 columns
Message-ID: <20201026175933.GA6047@my--box>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box> <20201026055717.GB779791@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026055717.GB779791@kroah.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 26, 2020 at 06:57:17AM +0100, Greg Kroah-Hartman wrote:
> On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> > On Wed, Oct 21, 2020 at 01:01:07PM +0530, Deepak R Varma wrote:
> > 
> > Hello,
> > Requesting a review / ack of this patch.
> 
> As I said in my previous email, to the outreachy list, if I have not
> applied something, it needs to be resent, if you still think it is
> needed.

Thank you Greg. I have just resent the patch set with changes suggested by Matthew.

Deepak.

> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
