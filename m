Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6744633A769
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 19:18:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87D674B08F;
	Sun, 14 Mar 2021 18:18:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y9T7HqcIh7jh; Sun, 14 Mar 2021 18:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7922049999;
	Sun, 14 Mar 2021 18:18:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97A771BF414
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 18:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 828BB6F4D2
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 18:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2oOWpuuzRRb6 for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 18:18:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0A0D6F4A5
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 18:18:25 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id l12so7562513wry.2
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 11:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=p+POuGrNYEgl5ZmUe9GYUe8ESmbbmhapN7mzSH3N5is=;
 b=vg/vg18eF1c3ABXSKuj6Nphml3m+uu5rE9oFBCtnyX3vNpdh9mWZsySexWISJUaScd
 WW2T9Ti5bT0loR/ZJ8L63UfsUxpHr3nzcx02bwGF8zQiMQw7BoW1OvjtNe1gM4hwv6QN
 vq0NMw9Hse7CeqYMBprh3CxY58RxjupvJu2K45pnX0MifpilAf+QQ1dLBrbwZaUUQMmL
 N5xPnRvHz0SZlwjEkqUuh5muF9LumFAyY84CmtyNwgasc/kpcpEz34T2CxtW0gL0Lk3N
 kwFx/HtAv9eTya9B3EKWyxtKgj+0fmF8jCwbuxNhQpxCE1pzcElbF5JeXkEKZ2Fuyhw4
 SeNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=p+POuGrNYEgl5ZmUe9GYUe8ESmbbmhapN7mzSH3N5is=;
 b=Nwg4doWtKT/N4R7V8esns2AZeL+Ll1VYQjFGzZ5UkoDfVc+4k39p2xoLh2TNpqkQ6j
 wkgBJ4QmmKpQ5nkMutUWYNdSFQUtPbd3KNiI9wWEr2Ck6yozwx9mq44ujSa81gk+om07
 nMHA4ZJ/I3XJXxb3HKuPwH+pWRsmCQlTSbHNQ71WeHZ1sIDY+C7UpvH5TgJ9i4dONQ0a
 fkK3eWluekgwpu9ZdWt3FntzXjNVCh/kBE+yiFEoMCtJ9YKtLdTAd14pQKenYykQ8Pf4
 y5aiydTn+yU3imDpNDeD4ZqMU3Dqk48rjcQ38nxrjclOiuuWfG7f7VOmYNQGMxpBiu/l
 rO2w==
X-Gm-Message-State: AOAM5318ZDK4C/7Vcya/gAzl4Wv7jqnZcsFHnimt/nLk+m4X4bygxNQi
 GJ6WBkiWLmvy5UUN6yIm0YTuJWbEtBztAQ==
X-Google-Smtp-Source: ABdhPJzpdlHUSytyEuV/FMHSQTw3E0Wcs+O6wS00oYlNOG50iVcdMr4mm+ubJbrZM38I3IeWYORKUg==
X-Received: by 2002:a5d:5904:: with SMTP id v4mr24132060wrd.261.1615745904201; 
 Sun, 14 Mar 2021 11:18:24 -0700 (PDT)
Received: from agape.jhs (an-19-176-195.service.infuturo.it. [151.19.176.195])
 by smtp.gmail.com with ESMTPSA id
 1sm10206985wmj.2.2021.03.14.11.18.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 11:18:23 -0700 (PDT)
Date: Sun, 14 Mar 2021 19:18:21 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 0/4] staging: rtl8723bs: remove unused code blocks
Message-ID: <20210314181820.GA1443@agape.jhs>
References: <cover.1615572985.git.fabioaiuto83@gmail.com>
 <YE4ychoJngfPye1O@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YE4ychoJngfPye1O@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Sun, Mar 14, 2021 at 04:57:38PM +0100, Greg KH wrote:
> On Fri, Mar 12, 2021 at 07:33:13PM +0100, Fabio Aiuto wrote:
> > This patch set removes unused code blocks as required in TODO file:
> > 
> > 	find and remove code blocks guarded by never set CONFIG_FOO defines
> > 
> > Changes in v2:
> > 	- modified sunject lines to make them unique
> > 	- added a patch previously excluded (removal of
> > 	  CONFIG_PNO_SET_DEBUG code)
> > 
> > Fabio Aiuto (4):
> >   staging: rtl8723bs: remove unused code blocks conditioned by never set
> >     CONFIG_PNO_SET_DEBUG
> >   staging: rtl8723bs: remove unused code blocks conditioned by never set
> >     CONFIG_PNO_SUPPORT
> >   staging: rtl8723bs: remove unused code blocks conditioned by never set
> >     CONFIG_WOWLAN
> >   staging: rtl8723bs: remove unused code blocks conditioned by never set
> >     CONFIG_TCP_CSUM_OFFLOAD_RX
> 
> The first 2 patches here worked, the others did not apply to my tree due
> to other changes from other developers.  Can you please rebase them and
> resend?
> 
> thanks,
> 
> greg k-h

just sent,

thank you,

fabio
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
