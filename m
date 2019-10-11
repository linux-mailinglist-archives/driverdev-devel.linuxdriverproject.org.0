Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E85D3C3F
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 11:27:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 15056258CF;
	Fri, 11 Oct 2019 09:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lkFcKodZqREa; Fri, 11 Oct 2019 09:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B219F2012D;
	Fri, 11 Oct 2019 09:27:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 273E51BF330
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2156486E36
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:27:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVjMlCxaBJc2 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 09:27:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 72B3D86E34
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 09:27:00 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id v8so11073865wrt.2
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 02:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dLVl3DsGhkxOyBDwhPCeN0ImQMXW3n75XQjG9mYAy/o=;
 b=t8s5bxx7C+fKPIIBPy949vMQclzBJ+lBKteDR4GyXhkirQvH5DZIeVDG9zdkq19UIj
 ge/gUM99tjtSovZSaFz1fPJBkubQkbXlg6Uh/bo3FTQpV3CIULT4EByCiGdNmK3/3Ysb
 /rDdqb8G5kinD39QAALmikeVvfBzJ0D4C/cIpzyY/jvtsu05VpUUYVFV8UqjiAeFjDHo
 +2mJzPoENqtE6XcC6LEcO0WFFs68/QioX7eQevfQQ11W5e2TfFzkSr8KJZyrwMedKhGv
 Ek4dE4/4lOlR4NiAEGmiB5RmFZ1ihMYUdlZ7fx/gzBJ5/fOqFSjrgRp4NXWW2+hGMLiU
 cUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=dLVl3DsGhkxOyBDwhPCeN0ImQMXW3n75XQjG9mYAy/o=;
 b=NV14jbDGI6Z3D4JfZA7e+6W87bwTrqwTqMD3rfaJitgzxPIM305+1DyMY+ZpJMc53j
 /L75cJfJls31NRE99IDZ/BQ5x6jKFNeFB/0ZS3wYAFP9Kq6li3GnjPd3FzDLPb1vBWsh
 TdiAW4hCz4G0D54s/zwoKX/+30Btc4G7o0JCVNO8Kvt2kqD/xmSPAtHqAGl6UW+TLPCH
 //KYni6imHgI2ERo32OgKKXDhhmoyhRABKKz89wNzOmHVW/1zsEOaSa8bGSlAu/hjQoB
 aIDc+6301VRrVlJA+EjNCfOSCeh/IqIdEjWlyc15dP9lyHp8HcjJVPRBX9+nhjsbpR/9
 DgEg==
X-Gm-Message-State: APjAAAWsZ+TqXzJhO6pF3mv9iOUPQERG3wnqLBKtly6bE+E5xHUBmAjT
 KAmyRefWyQ2EwGCaVbmjvpA=
X-Google-Smtp-Source: APXvYqzX3dd/RoeyFYvYk+GNyWdHr5uGU99lkXoKfWbntpFWSTl5Y+aqSM1VIJmypj0Ou8DxbmOiLA==
X-Received: by 2002:adf:fecd:: with SMTP id q13mr11450759wrs.224.1570786018961; 
 Fri, 11 Oct 2019 02:26:58 -0700 (PDT)
Received: from wambui ([197.237.61.225])
 by smtp.gmail.com with ESMTPSA id 36sm12179547wrp.30.2019.10.11.02.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 02:26:58 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:26:52 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/5] staging: octeon: remove typedef declaration for
 cvmx_helper_link_info_t
Message-ID: <20191011092652.GB10328@wambui>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <78e2c3a4089261e416e9b890cdf81ef029966b75.1570773209.git.wambui.karugax@gmail.com>
 <20191011090213.GB1076760@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011090213.GB1076760@kroah.com>
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
Reply-To: 20191011090213.GB1076760@kroah.com
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 11:02:13AM +0200, Greg KH wrote:
> On Fri, Oct 11, 2019 at 09:02:39AM +0300, Wambui Karuga wrote:
> > -typedef union {
> > +union cvmx_helper_link_info_t {
> 
> I agree with Julia, all of the "_t" needs to be dropped as that is
> pointless.  It's a holdover from the original name where "_t" was trying
> to say that this is a typedef.  Gotta love abuse of hungarian notation
> :(
> 
> Please redo this patch series and resend.
> 
Great, I'll send an updated patch.
Thanks,
Wambui
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
