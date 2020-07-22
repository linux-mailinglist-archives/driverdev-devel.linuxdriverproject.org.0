Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E66C2290A1
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 08:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 174A984BB2;
	Wed, 22 Jul 2020 06:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mN4PIfa1k0ps; Wed, 22 Jul 2020 06:27:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18172848A0;
	Wed, 22 Jul 2020 06:27:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF0BE1BF41B
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 06:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A363C83F31
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 06:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXsW835PXZAF for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 06:27:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 51FF0820C5
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 06:27:15 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id l63so641821pge.12
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 23:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=W36/Vr9pGmbAtnl2H+EUKf/gRMqlurmDjUb677YHTdQ=;
 b=GaaHmUbjyArhJH+Qq4zBjcwlkRakJq4PRV6IVwISIDhNjAo/Fbqw7IdZ0tzxxyxJO6
 EVmUsEf9JNtsjUqe4xHbd2E3GQTOeir87QQ2QW3mx2AjWGlJUTr6TCzePq3DZx0pFXH/
 dAHW5ffqs0jYuH9eiHWctZ9FJX5OkBF85T0S0UN9DRqyxeC9CnXMNVDAq7zJf871xmOF
 Yq26WpEhJgLiHv9UnebQF/SgIowUnq0/c+wcC6hJUd8RbFcGEjmCa0Rw552TBow2NXJg
 MmqLQ8c+rI92Q2RoEEZSolv3CQTioeraU1XpRIab1APahueYsxzKAOhXlkQhyTVLy/9y
 94zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W36/Vr9pGmbAtnl2H+EUKf/gRMqlurmDjUb677YHTdQ=;
 b=ijdIVHwf1jetK8vO53kvkkf66QGe7KWFvudn3XgMc+yOxDTkDvywgFt7dBvKLBnZbY
 CAYCsNTIeJgREWs3pOVDWgH3XQUONTiLloM95owOgdiQomjUbWMYZoNHfO5Hd5Zyy7vL
 IdoBkCgUvawFSXFhKiTQV+4xQmAZ7BjsHH4HEhw5EsIq9l7dGiknjJTMXDXx03pu3lBy
 1xbcbHMZPfMsKkZ+S0H58tGXH15CdVdBLFGsfXOgaj26qJeOkGRYRLHb7oL5SuwueHoZ
 CzPSbNvgn+WLOBtGTH6p+95iFKxNNisySY5XlVNovwA4wj4Gas4V2RWWpGUmW6SjdSg8
 49hQ==
X-Gm-Message-State: AOAM5311HtRWVbZOdgH5jGz0ry/IN6tLi/LS0NJVLfSiyaxbAMYwTNFd
 qCUude+Xs9TMKsj8l9xOkLBVIt6qolc=
X-Google-Smtp-Source: ABdhPJwXh53c5OyEPXE2t1n3X2sw8v08YRXg83goiswlk3SRZuBm5Nmxdkxqls+xH2keEXUkUCc0Fw==
X-Received: by 2002:a65:408b:: with SMTP id t11mr25130367pgp.407.1595399234848; 
 Tue, 21 Jul 2020 23:27:14 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.73.180])
 by smtp.gmail.com with ESMTPSA id t5sm19332557pgl.38.2020.07.21.23.27.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jul 2020 23:27:14 -0700 (PDT)
Date: Wed, 22 Jul 2020 11:57:11 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: gs_fpgaboot: get bus width input
Message-ID: <20200722062711.GA3300@rahulg-ThinkPad-T450>
References: <20200721180203.GA16154@rahulg-ThinkPad-T450>
 <20200721180533.GA2570082@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200721180533.GA2570082@kroah.com>
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
Cc: devel@driverdev.osuosl.org, insop.song@gainspeed.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 21, 2020 at 08:05:33PM +0200, Greg KH wrote:
> On Tue, Jul 21, 2020 at 11:32:03PM +0530, Rahul Gottipati wrote:
> > This adds a module parameter to get the program bus width as an
> > input rather than hardcoding it, and checks off a TODO item.
> 
> Ick, no, module parameters are from the 1990's, please make this dynamic
> somehow.

Hi, I'm pretty new to this. Do you have any ideas/suggestions on how to
do this dynamically?
 
> thanks,
> 
> greg k-h

Thanks,
Rahul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
