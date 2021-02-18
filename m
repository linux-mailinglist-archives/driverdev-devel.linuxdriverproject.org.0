Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F1F31E88B
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 11:48:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89A6B86463;
	Thu, 18 Feb 2021 10:48:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNWs_BaE1obF; Thu, 18 Feb 2021 10:48:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6168D86433;
	Thu, 18 Feb 2021 10:48:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B76491BF2B9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:48:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B321D872FD
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnWVkmVWu--A for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 10:48:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E227872ED
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:48:02 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id lw17so2697003pjb.0
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 02:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+4Ty2EC198TjRC3tjzE5cKKjZBp6T/djTh3O24sLzhI=;
 b=i//we/OJgxeAvuLnkMneVfbe0TSZd+ReXSLdt5P9W0bmimlWZu7mOgTtijigZM70i7
 caUQbROjdTHl77DWGZlWxPd1aEyJ6od8s7ynMoS6dZD6LT5mKYr+jWahEp5nhNsgk3Hg
 p+Yc+MoGOx6CtCAJMFRto5Nt0yU8rE5wnhBBggwRrijJufSpLyJ6zrYpW1QVb3FIBpg5
 p7RUIFrPjgP7P6GHMA5dGLorwyz+S0ypHk6BvBhm2Zv8grjmIYYbipV2ahwBX2bq27o3
 yj+c3qS6SzoAwbfatCfM8JiDgnUW8vW1dleN+I8PoGuj9o4U3El+aBgCpNoGehlSk1zi
 bnYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+4Ty2EC198TjRC3tjzE5cKKjZBp6T/djTh3O24sLzhI=;
 b=unwS99JTFW49Xbd0o74DUcozFeuDD3ReD9MIFYBJvxTlsuUp9vPAxCEMlaO2ZZgOOM
 X3CyX0/jlI7SbyHjz7j3vbBoVcMSmnMTHVCY6L+mg6kid7qtN5G//sjwvGOxLUr3eDg9
 SbP/L4RCElDIYVGm1HFHC7upDpzgKRuYDQA2i3gbnmlDcd0/K352XFVMaUyxYqarJ9WS
 EVvOENnK9hV6vs0qsqAaP9a+MvNd3ZKmLOoO3pnZbszNDlnyEc/0GJjoSqXpe08YMqEs
 aLYiWuaIPf/0iw69S00oZwqFnIg9aIUfF4Vy4K0Yllq9/cHIz/wH6flwbd3soXdbjap7
 A5ug==
X-Gm-Message-State: AOAM5336cF5/NGiIhmqOZDEfn2/N992/oVCU1Uwd34MAaTiXH7wCtkdm
 jlSdz88Lm/dWfWCBYGO6Ebo=
X-Google-Smtp-Source: ABdhPJxeHdRECmk1nueMkn3Ncc6IrRQ+cTGJWx1gNCT2bKlWeEOSxOAikP+7f90KUsYupKKGD3YEgA==
X-Received: by 2002:a17:90a:d48c:: with SMTP id
 s12mr3548307pju.123.1613645281914; 
 Thu, 18 Feb 2021 02:48:01 -0800 (PST)
Received: from atulu-nitro ([2401:4900:3155:553b:559f:4399:2a05:67d4])
 by smtp.gmail.com with ESMTPSA id t15sm5097592pjy.37.2021.02.18.02.47.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 02:48:01 -0800 (PST)
Date: Thu, 18 Feb 2021 16:17:55 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>, gregkh@linuxfoundation.org
Subject: Re: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Message-ID: <20210218104755.GA7571@atulu-nitro>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
 <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
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

On Thu, Feb 18, 2021 at 10:31:15AM +0000, Ian Abbott wrote:
> On 18/02/2021 08:44, Atul Gopinathan wrote:
> > Fix the following warning generated by sparse:
> > 
> > drivers/staging//comedi/comedi_fops.c:2956:23: warning: incorrect type in assignment (different address spaces)
> > drivers/staging//comedi/comedi_fops.c:2956:23:    expected unsigned int *chanlist
> > drivers/staging//comedi/comedi_fops.c:2956:23:    got void [noderef] <asn:1> *
> > 
> > compat_ptr() has a return type of "void __user *"
> > as defined in "include/linux/compat.h"
> > 
> > cmd->chanlist is of type "unsigned int *" as defined
> > in drivers/staging/comedi/comedi.h" in struct
> > comedi_cmd.
> > 
> > Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> > ---
> >   drivers/staging/comedi/comedi_fops.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > index e85a99b68f31..fc4ec38012b4 100644
> > --- a/drivers/staging/comedi/comedi_fops.c
> > +++ b/drivers/staging/comedi/comedi_fops.c
> > @@ -2953,7 +2953,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> >   	cmd->scan_end_arg = v32.scan_end_arg;
> >   	cmd->stop_src = v32.stop_src;
> >   	cmd->stop_arg = v32.stop_arg;
> > -	cmd->chanlist = compat_ptr(v32.chanlist);
> > +	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
> >   	cmd->chanlist_len = v32.chanlist_len;
> >   	cmd->data = compat_ptr(v32.data);
> >   	cmd->data_len = v32.data_len;
> > 
> 
> This patch and the other one in your series clash with commit 9d5d041eebe3
> ("staging: comedi: comedi_fops.c: added casts to get rid of sparse
> warnings") by B K Karthik.

Oh I see. Not sure if this is the right place to ask, but which tree and
branch should one work with when messing with the code in staging/
directory? (wanted to avoid such clashes in future)

Thanks,
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
