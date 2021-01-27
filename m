Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E31B305D71
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 14:44:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E80285D2B;
	Wed, 27 Jan 2021 13:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t21sj6ORyW12; Wed, 27 Jan 2021 13:44:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 399AA85AB5;
	Wed, 27 Jan 2021 13:44:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C94E51BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 13:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BF65286738
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 13:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wx0o-mQDKCIE for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 13:44:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33A0585ADF
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 13:44:40 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id n25so1635557pgb.0
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 05:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=F4yViBKvPcHMiCuhvR3TKpgz0BdKruFE9Fx6bKd/1bM=;
 b=CHLUaMBJaZD75tNWX0pYhho4I1Ko/XOezyGiwjHJRD/y5tG2WxtAiMTZDIKNoyON/r
 wPegeIsTtHmap5BNZQT+U1QmzHHRcX5aFviOx7ua7vjrKB00GOxcvjUXqPUavNB8V6Nq
 LjHvjw7Vxi8WHqE6hPOtkf6WyeIy+w3yuNUN3iR7I7gZSfW2hu4DPKLmMFw+j3fAzlg6
 exSldKNhyQAM8m/FYYyozDmrmrcSpHZRxsZsRTYC6MZBVyRex63xAISRGIZ5UOWWC+OD
 bcxX0CBfEnwKszKuCkvDCNwIRvMP7S2qs/C7XRa/yHQU2c+ZnLAjdvtgRIrEFCowM+eR
 5oHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=F4yViBKvPcHMiCuhvR3TKpgz0BdKruFE9Fx6bKd/1bM=;
 b=FN7912D7yN0O9dHbSiFa4e62ObpOydEI0d7kmBdnLUXBEFllSgxpNYJ54iGW/pVKjz
 Jhrh6LFeV04WinuSnVwmKREfyhHsRUp4WuA+dhvEfthp6Gl2BbfQwm9DR0CfHhC1n8Xm
 VLbTTjQNe0WjN8Kv+xfuj8LKv9ipj85bSK7R4xd5hrgGcq0fn7+3KL305aaeEBkwlBxB
 L8SRdZfwbezs4JjkE5sUDPTKvoYi7GCaC0TFLH2WuXlRx40NYUpmNz/INvzn6jmeTnW9
 9vAcXUlbrprLb5aOcuMerQdCt+tZ1wgL9/eQ3fEu0PxeyL+Jw4zJyfkDRn+881DZIlTu
 ywfw==
X-Gm-Message-State: AOAM5319hKJF9Dw1Iy6DqrxbiWGLpWD92d7iCB9ka/SPhAkaq56Yq8DF
 kt0vwOB+DY/GEeaVtJm1TNg=
X-Google-Smtp-Source: ABdhPJw7p+CSCxPecQ050cCLDkisjTb/wNpT/CIqIzh6zq8+qdjHeGwEONhLztOwMBpq/aL32wCVyA==
X-Received: by 2002:a63:450d:: with SMTP id s13mr11086715pga.443.1611755079856; 
 Wed, 27 Jan 2021 05:44:39 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id o14sm2986305pgr.44.2021.01.27.05.44.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 05:44:39 -0800 (PST)
Date: Wed, 27 Jan 2021 21:44:33 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v9] staging: fbtft: add tearing signal detect
Message-ID: <20210127214433.00005c15@gmail.com>
In-Reply-To: <YBFmg3yHlORg1mhf@kroah.com>
References: <1611752257-150851-1-git-send-email-zhangxuezhi3@gmail.com>
 <YBFmg3yHlORg1mhf@kroah.com>
Organization: Tyzmig-ryrjum-8kedto
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 sbrivio@redhat.com, colin.king@canonical.com, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 27 Jan 2021 14:11:31 +0100
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Jan 27, 2021 at 08:57:37PM +0800, Carlis wrote:
> > From: zhangxuezhi <zhangxuezhi1@yulong.com>
> > 
> > For st7789v ic,add tearing signal detect to avoid screen tearing  
> 
> I need a much better changelog description here please.
> 
> > 
> > Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>
> > ---
> > v9: change pr_* to dev_*
> > ---  
> 
> What changed in all of your previous versions?  All of them should be
> listed here, right?
> 
> 
> 
> >  drivers/staging/fbtft/fb_st7789v.c | 132
> > ++++++++++++++++++++++++++++++++++++- drivers/staging/fbtft/fbtft.h
> >      |   1 + 2 files changed, 132 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/fbtft/fb_st7789v.c
> > b/drivers/staging/fbtft/fb_st7789v.c index 3a280cc..9aa2f36 100644
> > --- a/drivers/staging/fbtft/fb_st7789v.c
> > +++ b/drivers/staging/fbtft/fb_st7789v.c
> > @@ -9,9 +9,12 @@
> >  #include <linux/delay.h>
> >  #include <linux/init.h>
> >  #include <linux/kernel.h>
> > +#include <linux/mutex.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/completion.h>
> >  #include <linux/module.h>
> >  #include <video/mipi_display.h>
> > -
> > +#include <linux/gpio/consumer.h>
> >  #include "fbtft.h"
> >  
> >  #define DRVNAME "fb_st7789v"
> > @@ -66,6 +69,32 @@ enum st7789v_command {
> >  #define MADCTL_MX BIT(6) /* bitmask for column address order */
> >  #define MADCTL_MY BIT(7) /* bitmask for page address order */
> >  
> > +#define SPI_PANEL_TE_TIMEOUT	400  
> 
> What is the units here?  Where did this value come from?

hi,the units is msecs,and i got this value from a qcom mdp spi
drivers,and i will add the notes you need in the patch v10
> 
> > +static struct mutex te_mutex;/*mutex for tearing line*/  
> 
> Does that look correct???
> 
> thanks,
> 
> greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
