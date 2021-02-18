Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0887D31E762
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 09:25:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E97086C25;
	Thu, 18 Feb 2021 08:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u97yGUAbQkub; Thu, 18 Feb 2021 08:25:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F2B8866B9;
	Thu, 18 Feb 2021 08:25:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CD0C1BF2C5
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0946E860E0
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RQubL_vOxaqp for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 08:25:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 76B9085F9B
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 08:25:08 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id e9so848123plh.3
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 00:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZXmJoWMTsUrH2ZYtYp6YioWvsZMFTlZD5M/gphHqrR0=;
 b=Hc4WfW2OwdvOfAd4uK/tsJFBw9Y3KnhIHI15RQioABsLIYYJ/F0keIOX4rFXdiTdPA
 3oF6krSEpCdiFEoF+R6hRv6c10f0Kh77dxSGhGkVvAmNWNnSDsRhtpTX27g6SUtHMZ1D
 9AEyQTMzteT2PtGkgLjLV9v49y316FbgxGlQzyfRJu+b9PBsYucAf2fIHMBjOZ/G9EbC
 CGFUXXJ6Lc7VnIG5CDYG+TSwQCi6gS33E+k2WEwpodQP/FyPSC2N/Com0PD5W8xd1003
 8bjep+nikHR8OdnsB1NdNmPGDMr+B97t3gnaARMA6P7jCmrSRLOrp/7jqSO78BWGq/YN
 xZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZXmJoWMTsUrH2ZYtYp6YioWvsZMFTlZD5M/gphHqrR0=;
 b=Mi6mUnEtSaWFTsqy4n6Xo4qvju0r7iCvsVY4J02DqXXsliL7kZ9JXFKBM2CzOoasAE
 zmarb6RyR5Y38QpXyNvyCz7hofMtOdUnKdSzCnAjThL4tNkoTsS7Vd++zS9uXjY0LF6F
 Rx+fVClAlKUZkCkS6x1MYZhaT1I63nvh0i/eZdj/WmCJylp9be7bx4d/j0amsGcx2Cj2
 u1UL2DNuA5w5aVhZFYmFFPnx9REmaPkBfAcDcYPCw+T6fZSPqIbs5dJuHzROQ8BlsYTq
 BM/vNjcaYwIS9ZSDaALI+Ut4eYWFp2nTCdTrsv+Bn8a5IlxUxPcZS9Q2AxQeN9lqlQTZ
 KvLg==
X-Gm-Message-State: AOAM531clTc5+QkV+8e/t5SdfjCB0vazZEVZbBGjggyTdoBe9VDGvpOD
 aCYym/Kz0ZkMygddG5y72n0eMpDI9rc=
X-Google-Smtp-Source: ABdhPJyhhnf+/pc2nHrJk1TK1bIScUijp1RLFu+59a3U8HAj4ag5pQwqLlGugrMlUa9+kap5neQc+Q==
X-Received: by 2002:a17:90a:de97:: with SMTP id
 n23mr2973053pjv.165.1613636708080; 
 Thu, 18 Feb 2021 00:25:08 -0800 (PST)
Received: from atulu-ubuntu ([27.61.13.238])
 by smtp.gmail.com with ESMTPSA id l11sm4602059pfd.194.2021.02.18.00.25.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 00:25:07 -0800 (PST)
Date: Thu, 18 Feb 2021 13:55:02 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: comedi: cast to (void __user *)
Message-ID: <20210218082502.GA2257@atulu-ubuntu>
References: <20210218062839.32650-1-atulgopinathan@gmail.com>
 <YC4S5Pxw341zw9DL@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YC4S5Pxw341zw9DL@kroah.com>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 08:10:28AM +0100, Greg KH wrote:
> On Thu, Feb 18, 2021 at 11:58:40AM +0530, Atul Gopinathan wrote:
> > Resolve the following sparse warning:
> > drivers/staging//comedi/comedi_fops.c:2983:41: warning: incorrect type in argument 1 (different address spaces)
> > drivers/staging//comedi/comedi_fops.c:2983:41:    expected void [noderef] <asn:1> *uptr
> > drivers/staging//comedi/comedi_fops.c:2983:41:    got unsigned int *chanlist
> > 
> > cmd->chanlist is of type (unsigned int *) as defined in
> > "struct comedi_cmd" in file drivers/staging/comedi/comedi.h
> > 
> > The function "ptr_to_compat()" expects argument of type
> > (void __user *) as defined in include/linux/compat.h
> > 
> > Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi_fops.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Is this different from your previous patch:
> 	https://lore.kernel.org/r/20210217165907.9777-1-atulgopinathan@gmail.com
> 
> if so, you might need a better subject line here, and for that one, as
> they look alike at a quick glance.
> 
> Which one goes first?
> 
> Can you resend both of these as a patch series with better subjects as a
> v2 patch set?

Sure! That subject line was a terrible result of me trying really hard
to make it concise and fit within git's recommended 50 character limit
for commit headings. I will make sure to prioritize on quality more. :D

Thanks for the feedback!
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
