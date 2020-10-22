Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED5F295904
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 09:26:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73D0786D41;
	Thu, 22 Oct 2020 07:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oRv9h-tjgCWW; Thu, 22 Oct 2020 07:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6F2486CF8;
	Thu, 22 Oct 2020 07:26:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 825F81BF302
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 07:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EB31876A3
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 07:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iMRyIUhmyUl1 for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 07:26:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0486E87402
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 07:26:04 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id y1so484114plp.6
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 00:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PBCvy90ncT+97kjyi1X2cC+3BdeIsVMpeFXDBOs/ylI=;
 b=obXnUa5wNOn6br/a0W4wgb55oSsXL1n4TOLoHQhiS4Nz3A2AnDLc06YcTQztdSo4pW
 v3XONQs8w1Wt2CA6+06dqMGY2S45NB3bRo12uOIKSyXv+5g5CUCCI1u/rVLJR6vUUqj3
 1XEenr88C7KSF1mH/zE+VLzRSGAilcK+xk+JqAp9rLBL50c6yvf+l2QA2NF4712ODrh3
 Kw0ni5sKbPnIJrestD6gaXZqal5Mvim93Uoc9sYTH/J3ojwwH29U3X0haCYauGvf/nSz
 cncIDLNtjgPWQMh47xKFZR7Nu/PSVLEjfvJ124ojxcaj7VFvk6ht1pX98xA9FTYSOxRV
 td0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PBCvy90ncT+97kjyi1X2cC+3BdeIsVMpeFXDBOs/ylI=;
 b=B0EjZDFK+HKd9Dm+FmVLEG62IR1aH0QTb+oN67ONEVgIQoZtfWNjEV0Lm5XdCozS8V
 G1H+DRD5P7ARkLyx5vOCqYMIU3AYK/i541rxw/pFwPvF/ostF2pDGeEoQSLwCicWYDFj
 FIUOKnYLNjKGcgaJrGHPCIwjxZy5o2/jzcS8ZyBR3MeAMNy8sZ9ADJEqvku0MVWxbm9m
 PyeFaT45S7zyIVmvEnimjM3nr83ha6BHG68p0N9lH9xfoYDKdScVwn+Y2O73F8LGBm8R
 iPZwY4brNdjJvLBWBRLmIqvmT9plFRE1UKlkfTDBe2fWA4i+nxa/IMXy4J9wPC1qiitl
 kmvQ==
X-Gm-Message-State: AOAM533iHD96IJotDMybV41XishNyD5g7al3HvJtKAMwqbHzS8jQf9Jd
 JC33kP3CGYDrxpIPUcD2p68=
X-Google-Smtp-Source: ABdhPJznhhIc0TWEi0UzCgBtY67TR59uwMJFcOCLTrjEPOVtP1k847ZFY0yCa2zHqwwnkWfT8XVfyA==
X-Received: by 2002:a17:90a:c293:: with SMTP id
 f19mr1220115pjt.2.1603351563608; 
 Thu, 22 Oct 2020 00:26:03 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id z5sm956703pjn.2.2020.10.22.00.25.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Oct 2020 00:26:03 -0700 (PDT)
Date: Thu, 22 Oct 2020 12:55:34 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Clean up query: greybus/audio_manager_module.c
Message-ID: <20201022072534.GA384774@ubuntu204>
References: <20201022033701.GA329478@ubuntu204>
 <20201022052931.GA6093@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022052931.GA6093@kroah.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 mgreer@animalcreek.com, vaibhav.sr@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 22, 2020 at 07:29:31AM +0200, Greg KH wrote:
> On Thu, Oct 22, 2020 at 09:07:01AM +0530, Deepak R Varma wrote:
> > Hello,
> > I am reviewing the file: drivers/staging/greybus/audio_manager_module.c
> > and have found that there are several gb_audio_module_*_show functions
> > that accept "struct gb_audio_manager_module_attribute * " as a function
> > parameter. However, this parameter is not used and should not be
> > necessary. Would you suggest cleaning up such functions.
> 
> Try removing it and see why it is really needed to be there :)

Thank you Greg. I tried that and realised that the internal show
function signature definition will mismatch. It will not be a straight
forward change for the clean up sake.

I got my answer. Thanks again.
Deepak.

> 
> good luck!
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
