Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 037DF262569
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Sep 2020 04:53:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8C2986D31;
	Wed,  9 Sep 2020 02:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id efUCBNIm2qN5; Wed,  9 Sep 2020 02:53:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5839B86CBE;
	Wed,  9 Sep 2020 02:53:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 620BD1BF317
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 02:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5191686CC4
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 02:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VVDiDBWND9R3 for <devel@linuxdriverproject.org>;
 Wed,  9 Sep 2020 02:53:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9914786CBE
 for <devel@driverdev.osuosl.org>; Wed,  9 Sep 2020 02:53:28 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id n3so631562pjq.1
 for <devel@driverdev.osuosl.org>; Tue, 08 Sep 2020 19:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bWiHpTWwoxfuhyD+uhvF0nLSotcxfKz0far+cCmt6Yo=;
 b=dTzjc4CMACS4xN6pVJFG+zJ76PbQJV9+sdnUEAcj1wGXVjgekjWXN1R1jEXTJSotGm
 7rBrKG1qyT7Sgz6Exq+6W5kw52mMslgDvtqISJEXui7eILOc35G+AuiuB0EQIVFwbPib
 bk9ljPeZz5bP8glC4FOkH8PtIS2LNj0MixzruhZuiBvR4ACBu3KQbIYF8KsvNkJaBpdq
 xnGxG/RXijXkRxGJGEFEqOTm3iJu5npcnfXYdaGoUagydNNcJy05uTHlsb5fPAWSDp9b
 Rf4J9gKCyukIMZ8J/vibopmslFH8lZfInM7gef8SLS8zjqvTLJDnQXAESuTuTCea4cj+
 BBrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bWiHpTWwoxfuhyD+uhvF0nLSotcxfKz0far+cCmt6Yo=;
 b=uCvM1hMC8YJGhCZU3H92V9pbIKQyWDdflPwDz4I6pGxguBYxlhCGbPxV/OLnP73J//
 icOI3Re+ghmwXYBLwqUv1dMPV9Id4YtCGAvLABpAtnwFoC7i/jN1gOOr5UO+bbDJBIOi
 k3qYBttZDbafNov7FK3gkR/O0KMkkVMGxycAMwi6LKk+ZA2ujYgcqYI88ogfrQQwj/md
 mlhanBVH2h16QP8gVQmysoNlFe/tSxoDwuQliYzjvAWf41sDWomIYCmOuOt8SgQB0+8u
 S80/Zh/XgfqcKW6bDqU30OwZXgtLBXN2AySLgXzWzOe/lRiRQ2li3fpqo5SSFkxtkcil
 HknQ==
X-Gm-Message-State: AOAM533wLG7j+FTj8UH25aYSUNSBgKSLT5apvLrQjrSAI59+IC3UHi1v
 bwt0JnA7fzE9ZqN4gKZMKSM=
X-Google-Smtp-Source: ABdhPJxlhccHjtgYykpkHW6hlQo9sCVwV0/dT/Wu6e4b3YoDvUK41j2g3hN8jZSy3DjveoyyMdT0Xg==
X-Received: by 2002:a17:90a:e80f:: with SMTP id
 i15mr1574159pjy.62.1599620008192; 
 Tue, 08 Sep 2020 19:53:28 -0700 (PDT)
Received: from localhost (89.208.244.139.16clouds.com. [89.208.244.139])
 by smtp.gmail.com with ESMTPSA id t24sm510755pgo.51.2020.09.08.19.53.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Sep 2020 19:53:27 -0700 (PDT)
Date: Wed, 9 Sep 2020 10:53:25 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [driver-core:driver-core-testing 29/33]
 include/linux/platform_device.h:75:40: error: unknown type name
 'irq_handler_t'
Message-ID: <20200909025325.GA29218@nuc8i5>
References: <202009080432.5YpVmPhM%lkp@intel.com>
 <20200908113754.GA1453813@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908113754.GA1453813@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 08, 2020 at 01:37:54PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Sep 08, 2020 at 04:21:36AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
> > head:   fa802fde315b87157f6d7c5dfe5d926bdb97d6e4
> > commit: 4f4e9ddba1225e2dcdd08ac91f1e82aaca51f2b8 [29/33] drivers: provide devm_platform_request_irq()
> > config: h8300-randconfig-r014-20200907 (attached as .config)
> > compiler: h8300-linux-gcc (GCC) 9.3.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 4f4e9ddba1225e2dcdd08ac91f1e82aaca51f2b8
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=h8300 
> 
> I'm going to drop this patch, and the follow-up patch for this, from my
> trees.  Maybe the prototype for this function should go in a different
> .h file to resolve these types of build issues?
>
I'm so sorry for that, Greg, you are right, This problem will be caused
due to the loop containing the header file <linux/interrupt.h>, so I will
send a new patch and put this function to a different header file. 

Sorry!

BR,
Dejin

> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
