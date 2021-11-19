Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46FF456EC6
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 13:24:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDA8A408E0;
	Fri, 19 Nov 2021 12:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HT7r9W7-yEjU; Fri, 19 Nov 2021 12:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AF66401CF;
	Fri, 19 Nov 2021 12:24:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16B431BF4D5
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 12:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F41AE403DE
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 12:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUthjcybgfjM for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 12:23:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F9564037D
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 12:23:55 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id y13so41824093edd.13
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 04:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MuH5rThjE7AvNyMQmLc848IhLLeZHT+gUERcim6VkF0=;
 b=TS7FXlTOmqFvzipR3Itk3Umc3qnNUwe1nhkqpQ3ILKjuKdzftSFs5TWRRF6vx8BDrw
 xo7wHlm9E0oPaWn7gqXPWK5JiYcZdIjmr0lm+cq0RXkUhIEKPHN1nKwYCPSaA2WC+8I4
 oQrt43EyZO9s9wbf4fmbHzhyK3f63c4tCqJwrpBp90ey7guZkq4fLcmKH2K+IPAqiskK
 XRg2+pyyzwD4obSerJeoMPQesqFMGTib3mypObujRuzBTlbbDIPpp4OPpigvUv0TzaWq
 ninMtt+ALRK08dB2/n0TPyhlLnfQqbdX/5fSPDosXFpXwLbPuNZZXkgKHyATu0lGoNXf
 g3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MuH5rThjE7AvNyMQmLc848IhLLeZHT+gUERcim6VkF0=;
 b=jegj54oV6Ts59bqf0hosSfMVfVx6bxRkKJLv/zNgvlDVaeVV+3F9+qieIvRLczWsgL
 d1ct+jGMuJYKLnrYLkFVTMGmJbeT/TyqYaP3SG065f0RyaPaAWbdCANzN3H0lFTc09M4
 Ja7XZzt6erK6rf1mj2d87QSeGWsQgyKwTCz68VOzEMwjGB3BMt4H+4oQqzKfjizR4LyX
 YYCXL2MRHAEqztNBV7gsoN963zG9eLhdHgKE/YT9BMICJcb2Smcg+r/e8oDzmkaHrEVO
 nW/ICSVnt9oKTH2ZwFzCKvICr70dahHGYxU9RO1WwqnSwEAlmBNdHptJR3pzXebQiesH
 tx/Q==
X-Gm-Message-State: AOAM530J0Ev0rXyj/gj+gPq57FT9TXtxQpbAbAjFadwvqrrgNLrVc/z/
 EAPv2V3/idJNIJoLg3F73kc=
X-Google-Smtp-Source: ABdhPJw9Zm7yVICd9q+JFfPFVWC1qPYjYnJmCimRDll3RhU37qa5+ki2ImYNo+W1f0glxr/vN0Gi1w==
X-Received: by 2002:a17:906:3c46:: with SMTP id
 i6mr7038004ejg.371.1637324634120; 
 Fri, 19 Nov 2021 04:23:54 -0800 (PST)
Received: from alb3rt0-VirtualBox ([151.22.100.250])
 by smtp.gmail.com with ESMTPSA id b14sm1392741edw.6.2021.11.19.04.23.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 04:23:53 -0800 (PST)
Date: Fri, 19 Nov 2021 13:23:51 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <20211119122351.GA2519@alb3rt0-VirtualBox>
References: <20211118202718.GA152832@t470p>
 <20211119085138.GR26989@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211119085138.GR26989@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm using the master branch of 
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/

Alberto

On Fri, Nov 19, 2021 at 11:51:38AM +0300, Dan Carpenter wrote:
> On Thu, Nov 18, 2021 at 09:27:18PM +0100, Alberto Merciai wrote:
> > Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
> > Indicator) into linux kernel coding style equivalent
> > variable "current_rssi".
> > 
> > Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
> > ---
> > 
> > v2
> > - correct mailing list
> 
> Are you using the staging-next tree?
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
