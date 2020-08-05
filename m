Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE60523C9FF
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 12:48:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDF088776A;
	Wed,  5 Aug 2020 10:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SeDB4UytPESM; Wed,  5 Aug 2020 10:48:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE27087746;
	Wed,  5 Aug 2020 10:48:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C314F1BF863
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 10:48:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF7988355C
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 10:48:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eCt98vm9RK7c for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 10:48:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 646ED8623E
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 10:48:23 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 9so5365544wmj.5
 for <devel@driverdev.osuosl.org>; Wed, 05 Aug 2020 03:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oXu2Y7fD3k9npiuJU8zEDUoptykKZDxN94zEJS+x19E=;
 b=Eo6e5+2DYZC6Gh7Rwranq886u1jwCGSVMrE2eg8tzZZiYkRL+M3N65nOffOrWz1btb
 7V9o2uoq9GVktmT2zCiBSTZ9Y2Y3kmBw0pXVv8XsJXmc9KVGnMNB3rGjoy+Y2SaU5r5S
 U4bfNTcAim88eWxcIS5kWztRiESjE7c36Ew1jUstr9ZWQBL6TYVhEsPHQidqCGsIq4l0
 r39jYwXPAMeKLG6++FUKfbyyLAFU43Znx1F9otom8AEinh47hjAWJvApWmRJNXfJXaUk
 FI1B3NPzimj2VI9LMpsL39ZYZ5v4jxGivhZcQ4Rk5YtbiS1nAmSobaWddFDOnoCuc4e4
 Up/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oXu2Y7fD3k9npiuJU8zEDUoptykKZDxN94zEJS+x19E=;
 b=Bc4Dn9EeDEA2crIIkTwN03OBt24BYLTKxSqfld673Ckq58uRGj55qmv1RcwKgWzhaU
 GaZl7JuxEWQj61GqgzIviEDBIr/N5Ohw9L+wKB31FTHTLU2yK9c4Hmaq1fcTN6bU5W7p
 xyQwFML0MsXRwi0dvOsXcdKCBNjDXrwZfVZcAnb5vLZyjoENwHRITKej6FPT5Hst66FT
 AazynOynjiaxJOnxxOV4FaDsOtPqqVEUO/rk+ZrCLyj5qpd1jRC/GZeG9E7CEOCzFRRa
 rppIkSn/tr/xoIFIZDS1WMYqNhSLBzRWHJ/W9xOIbTZV+XMJ/jD/9cmxxZ5G0HRD6ONk
 gADQ==
X-Gm-Message-State: AOAM531vg2zFMh6FVRrsewrWjI5qzUr7oOXS7fXiw96/CoH1EY0WZgiD
 HjpEXTlEAhS4JhYS+feHKPU=
X-Google-Smtp-Source: ABdhPJxYNKu3WObBVVHD3oSW282IJS2I9MBZa4LIlt+LG6EOqVQdrYwGtJug+2ZhhKqohioW6GkOQQ==
X-Received: by 2002:a7b:c2aa:: with SMTP id c10mr2719406wmk.86.1596624501787; 
 Wed, 05 Aug 2020 03:48:21 -0700 (PDT)
Received: from tsnow (IGLD-83-130-60-139.inter.net.il. [83.130.60.139])
 by smtp.gmail.com with ESMTPSA id o2sm2445394wrh.70.2020.08.05.03.48.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Aug 2020 03:48:19 -0700 (PDT)
Date: Wed, 5 Aug 2020 13:48:16 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wfx: refactor to avoid duplication at hif_tx.c
Message-ID: <20200805104816.GB3260@tsnow>
References: <20200805085608.GA100079@tsnow> <20200805090425.GA655071@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200805090425.GA655071@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 05, 2020 at 11:04:25AM +0200, Greg KH wrote:
> On Wed, Aug 05, 2020 at 11:56:08AM +0300, Tomer Samara wrote:
> > Add functions wfx_full_send(), wfx_full_send_no_reply_async(),
> > wfx_full_send_no_reply() and wfx_full_send_no_reply_free()
> > which works as follow:
> > wfx_full_send() - simple wrapper for both wfx_fill_header()
> >                   and wfx_cmd_send().
> > wfx_full_send_no_reply_async() - wrapper for both but with
> >                                  NULL as reply and size zero.
> > wfx_full_send_no_reply() - same as wfx_full_send_no_reply_async()
> >                            but with false async value
> > wfx_full_send_no_reply_free() - same as wfx_full_send_no_reply()
> >                                 but also free the struct hif_msg.
> 
> Please only do one-thing-per-patch.  Why shouldn't this be a 4 patch
> series?
> 
> thanks,
> 
> greg k-h

All of the 4 functions are wrappers for the same duplicate code when 
every time there are different flags, so they are all connected, it is
feel to me more legit to patch them all together, should I split them
into 4 different patches?

Thanks,
	Tomer Samara
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
