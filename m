Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BD8D98C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 19:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B09A878F1;
	Wed, 16 Oct 2019 17:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L3-RtURS70+3; Wed, 16 Oct 2019 17:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41CD287895;
	Wed, 16 Oct 2019 17:58:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57DBE1BF2BE
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 17:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52A26204C2
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 17:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oQrFGUxhf54M for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 17:58:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 91552204D9
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 17:58:09 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 3so3747214wmi.3
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 10:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=nFz4T0vFX9I/roldji38Wknwl/JNJ6KhqR7kFUGrr+8=;
 b=MG8kkB/maSXdkwrwZNVgc+Xt3j8g2HWexcftmSC0vzdBO837oFQKzV2Hlniy6PE0yH
 WI40Q0LAOwT9M9yDnx6e0NCvpSy4g4fh8iUCaLzH/ciRPfS9YHMPj6bgX234D+yhGdse
 ZYMPpMe5M3HTAg6sMw0/Jw/gVWMTJCypdNTDrqjnLixFJIQT3uvbrEfcWCHPxuFfMcwi
 kRwt4w2lZLppVnDv6jcrUjfbaaRIZFEqlJj/qA0AazdcIEf8bOsvGhUCdpB2RRrexIMC
 PlRL465867YiyQtZ8NfvBTsriVq6F11OzW1hvwIB/JKliHP5V8RHHXIpJjyolospeWtQ
 r9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=nFz4T0vFX9I/roldji38Wknwl/JNJ6KhqR7kFUGrr+8=;
 b=Ui99AdAv45ZMpJSnO6Nu6iGKY1wtOSrV9NyclJyZRWs8qJgFCVuWZ3Ze9ZcgCUAKz1
 jCA11tQYLbjVgaAe8a5J0mNJuCrkkc4QOWW65Hs591jEiK/8IhoLWj9p3dAmy+XjDm6B
 xUwdC3WtMkB1LXY0k46OCPLpMMDA2o1hrT9y1+vaHrVHkq4lf2ucRg1LZ6Stzf1FG6fY
 pbYrzUSVa4JsU0FVnvPt424ov9ggR1P2yMAIKgi402tsYd+6YZLaIPpSUH9WjaRKpgpH
 yv9uEfqdnTWtbbkCR4rKGTuVHVdrwWe/F9zJYG6u/zdTyakswWRvJCqSfwkQXF6KQFIo
 If/A==
X-Gm-Message-State: APjAAAX4WYzrTAg3DJHKp8D392gU01YN6iu/9YpTLMBMi+D7RM8qy+Ul
 6fx9vFlZ7uqnbq4XYD4zcA==
X-Google-Smtp-Source: APXvYqzhSei8ojosNKz5bE95s1ODgdjfle9rj/9SqQgQEUrQ7Cy8VxXIGgT84Tsi1e8CY5tQ6SuylQ==
X-Received: by 2002:a1c:e455:: with SMTP id b82mr4444588wmh.41.1571248687904; 
 Wed, 16 Oct 2019 10:58:07 -0700 (PDT)
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.gmail.com with ESMTPSA id
 143sm4430952wmb.33.2019.10.16.10.58.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 10:58:06 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Wed, 16 Oct 2019 18:57:42 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix line over
 80 characters checks warning
In-Reply-To: <alpine.DEB.2.21.1910160713140.2732@hadrien>
Message-ID: <alpine.LFD.2.21.1910161855320.8071@ninjahub.org>
References: <20191015225716.10563-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910160713140.2732@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 eric@anholt.net, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Wed, 16 Oct 2019, Julia Lawall wrote:

> >  #ifndef VCHI_BULK_GRANULARITY
> >  #   if __VCCOREVER__ >= 0x04000000
> > -#       define VCHI_BULK_GRANULARITY 32 // Allows for the need to do cache cleans
> > +#	define VCHI_BULK_GRANULARITY 32 // Allows for the need of cache cleans
> >  #   else
> >  #       define VCHI_BULK_GRANULARITY 16
> >  #   endif
> 
> The branches should be indented to the same degree.
> 
> julia
> 
> -- 

Thanks, I have just  updated. 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
