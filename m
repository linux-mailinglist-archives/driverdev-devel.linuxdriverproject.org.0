Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14378308753
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 10:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 371028749E;
	Fri, 29 Jan 2021 09:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XPPum9Fzk4Ly; Fri, 29 Jan 2021 09:25:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DA4387463;
	Fri, 29 Jan 2021 09:25:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CFBF71BF59E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 09:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC3E586962
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 09:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNAcnsYxASE0 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 09:25:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 289D38648C
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 09:25:47 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id u67so5872009pfb.3
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 01:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SrJRdML7yk6Qv98s2csu9McFa5qnTY/wVdWlusd7L10=;
 b=Y+Wwd8qekFFF5f7YGOE9mD8cja3rWji3Y3k43MGeWKHDf4D3AAMW5EHoSw5xDqk7iY
 iv84vQhN1PNbruzUilGCE6LhsCGr7aCBOfB1oWrDw5opoNjnvu1UDLERLmbEl9lS7r1N
 i0WvTTfkevSMHmyByIrAAC/IhChySJD0QdZuv11ujBP/EdbyygxkTi/kTGbMWwiMnH3x
 D4Adt5W9dQmYtcqXuWlOxFd1NoNC4VwWB8vmF+Q25e9E02CibNQ+DdSOCObZWQIoQxMd
 LbJ6dYfeSfNL3DPLfz7JcqSEnvSGwrYoapJB6cl8xECtAL1ZhpXr0KAx5PLVTb9gg72P
 JMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SrJRdML7yk6Qv98s2csu9McFa5qnTY/wVdWlusd7L10=;
 b=ioMTNdAgfpB4PWxsc42zS6KPvBoqGNfqty3SZPQEcylG/kldcji+9JfXWmHgVR58Ca
 15LfCHwZgINLLwXq3Ts1iBTnxDfh+udSFrzMCuH13SDNq4n03BU5FZBUw36b4xRqJEZc
 nSj9xzXv/dfGjLIQpe1LTdlgj6stQBiXwJa0buUPFzPEg/FGer3N4AJCYVh+W54J7Gao
 tRLYmqjxQTLSLYo4dyF1ari+fEIZkWeEZjOjH1QX1euyI476At9ORHVIQqId/uGnEXak
 VJg026l+nkFVX2dHq95Cjvj0gguVPbtsnk8uRegWEGWPNmNKDm6HjQsw5oo2eXBUTgxa
 keQg==
X-Gm-Message-State: AOAM531Ub6t/Z+DfUCq/QWONMTjexvslX0CObW1BD6IizOzsy2/4sy7P
 TH81f0wyN8f1F5wRYZUCbME=
X-Google-Smtp-Source: ABdhPJycLTmRmRbNUdbhvyx/esQ5IpI3JJO0bF2QukMBiF4MLzW6U/mU4/B4hYujPe2uc8wD0RZVfQ==
X-Received: by 2002:a65:6542:: with SMTP id a2mr3835484pgw.148.1611912346702; 
 Fri, 29 Jan 2021 01:25:46 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:bf74:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id t6sm8349421pfe.177.2021.01.29.01.25.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 01:25:46 -0800 (PST)
Date: Fri, 29 Jan 2021 14:55:43 +0530
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: qlge/qlge_ethtool.c: strlcpy -> strscpy
Message-ID: <20210129092543.tl76sff4mmf6i6s3@apollo>
References: <20210129064522.97548-1-memxor@gmail.com>
 <YBPBoajKXbKhI7ji@kroah.com>
 <20210129082155.2ob4kokjdjbutdqm@apollo>
 <YBPMnCqlxSDs84qF@kroah.com>
 <20210129090833.o3sdo7drhd4un53z@apollo>
 <YBPRa5+rx52RqQtx@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBPRa5+rx52RqQtx@kroah.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 0129, Greg Kroah-Hartman wrote:
> [SNIP] 
> > Yes, because it's copying the source strings to fixed size buffers in
> > ethtool_drvinfo, so truncation would be fine here (as it's the driver name and
> > other identity related stuff).
> 
> So there is no need to make this change, or it is required to make this
> change?  I can't tell from your response here.
> 

It's marked as deprecated in Documentation/process/deprecated.rst, is
inefficient, so its usage should be discouraged (and eventually it can be
dropped from the tree). So yes, this change makes sense. When the return value
isn't being checked (the caller is ok with truncation), there is no functional
difference between the two, in addition strscpy avoids a useless strlen call
internally.  strncpy is not a good candidate (as it doesn't guarantee NUL
termination), and strcpy is broken anyway. 

strlcpy is a dangerous API (atleast in kernel context), and introduces cognitive
overhead on the developer where they need to remember whether the source will
be valid all the time. strscpy instead only reads up to count bytes.

When the return value is being checked, it needs to be adpated to the -E2BIG
negative return code instead. In this case though, that isn't required.

> > Should I send a v2 with the reason?
> 
> I've already rejected the first one as being incomplete :)
> 
> thanks,
> 
> greg k-h

-- 
Kartikeya
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
