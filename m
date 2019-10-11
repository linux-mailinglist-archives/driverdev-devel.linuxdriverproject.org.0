Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EBCD3BC8
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 11:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E7C286E07;
	Fri, 11 Oct 2019 09:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id soECsGFBUsjk; Fri, 11 Oct 2019 09:00:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A9A886D6A;
	Fri, 11 Oct 2019 09:00:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04A331BF255
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F265E88744
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hjet-0gXd3Wu for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 08:59:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57D7788714
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 08:59:59 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id j11so10990450wrp.1
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 01:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VxVxglgeL3qKEjfGtgRUEcui49ts/sXRyc9+Ru8EifA=;
 b=ZYC3+Ay0TTFta5z+ySOxT1yy5LpFRPW45F3DLzdLsSnFcssZD5FOIoGQzZIffj9PRE
 Xp7tSexxRRmFAfnkZnIO/H9xELp4WVgYngxAfGg8CAkMhxaspm/T7nIm0G2TR3GBanTM
 HqldEpDOP6i/fQq5iP7PdzKUQ73+2B+htlySlLloN30Ckav9CMDVbj8L/1jq8qHlMuEz
 YSYFbHAkouAl/MqRdWYzltEq+OMpzt0VkOObZO2U4wKuaPGaxKGOQoWrgL6uV88JNJd/
 sUUF0JmM2ZIyFw0Yiq/i0uyoqVA3RTqSFnfGEK+4ptYDsw83NTiLM6z1t2Wu9kKgKTSh
 Y0CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=VxVxglgeL3qKEjfGtgRUEcui49ts/sXRyc9+Ru8EifA=;
 b=nigsTb4O4olIVc9Bm5Xo5OKRdRqGCojTaZQMaZWNd7HHVLnfXVSIE+6c6icH56I7Pz
 xdcp2GbpIdtk8CtvMzHYYDdz2BxXl+0/FniRSxO2HNh2e7DDI4kh3io1I8HxscLbxEbB
 hq4lU6yv8PdBs7uCdEYX5oA65RczGEsaTG/E/Grcs3X4yhx8/Bwe7f+Dgi//DqjVI8vx
 7eL6emcvibvyVFav9IWcz+jGdJU+V/2p2nd0Cr4ZEfn0IZnwbHj7exr0Bi3ED2kXWfhW
 qxMnos8QOY/1lLFlb+QtHAJcq9OUrfnY81Ils9bWqVI5JGgWB7KJIUxZc+cX9aMOxuqJ
 1Aug==
X-Gm-Message-State: APjAAAXUUVWAOTL4niy7N11FdM7rg1lxBquahATkPMXOH7opUFXUClTG
 QAUcjScOTTkKPJ1hPyTrw9s=
X-Google-Smtp-Source: APXvYqyR+DoSJgDCtUsig3sb1fDtuGA9PsnsC+D7kvTxXfD4QRaZRJeDBKJ/39231CiBye99kWAcyA==
X-Received: by 2002:adf:f48c:: with SMTP id l12mr11609168wro.99.1570784397867; 
 Fri, 11 Oct 2019 01:59:57 -0700 (PDT)
Received: from wambui ([197.237.61.225])
 by smtp.gmail.com with ESMTPSA id b186sm11494222wmd.16.2019.10.11.01.59.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 01:59:57 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:59:52 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: octeon: remove typedef
 declaration for cvmx_wqe_t
Message-ID: <20191011085952.GA9748@wambui>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <1b16bc880fee5711f96ed82741f8268e4dac1ae6.1570773209.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910110817340.2662@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910110817340.2662@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Reply-To: alpine.DEB.2.21.1910110817340.2662@hadrien.osuosl.org
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 08:18:25AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 11 Oct 2019, Wambui Karuga wrote:
> 
> > Remove typedef declaration from struct cvmx_wqe_t in
> 
> You can remove the _t from the name as well.
Should I remove the _t from all the enums/structs?
> 
> > drivers/staging/octeon/octeon-stubs.h.
> 
> It's not really necessary to give the name of the file in the log message,
> as it can easily be seen below.
> 
> julia
> 
Okay, thought it would be clearer for the commit messages/git log.
Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
