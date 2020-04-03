Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 804EC19CE3F
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 03:42:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F7BF86E73;
	Fri,  3 Apr 2020 01:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yaEmRIiP2iTW; Fri,  3 Apr 2020 01:42:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4721E86E50;
	Fri,  3 Apr 2020 01:42:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AC0E1BF3C6
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 01:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 175A886E51
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 01:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NSETzx5PmN8s for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 01:42:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B3C2686E50
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 01:42:47 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id a6so5685266otb.10
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 18:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=4tU1ijP1oUMss+gZHdPAOpYayM4wwWRsIDBObxKGiVc=;
 b=jcNzEg9v7lRqKPNG1zObRdcQjh+gk/bUr/tEisbEtBl1s86IubloinTf3XxKH1pJ48
 MjFvtnWUc4FVghMd0K9IIenpvKmY9xJRkA2egW8LZ+LUUY9tckpWwmoo04mhVO8gHDhV
 SUzUrFy6U0Mn7jHtBlYogC+rMizjsYnn5t1IaCgnhBSJ6fMfoeBs/iY7UEcpa6hr707z
 UtNoR4N/9LmswlUU+NqsLQwPd+MphCGsdz+ezQPXx6Qxej1ggf5ZYg3H5U8848PxyTmQ
 vza2rb0NNr2iNeTGReJyDtVvixNzXmqiCsRyLI+k8tQmVi4zeskFKPMFFRswTaGL8fZa
 03/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=4tU1ijP1oUMss+gZHdPAOpYayM4wwWRsIDBObxKGiVc=;
 b=jjJV47NXjZXB4VY+5C3IB8P8HPP3wifQR+P61oqz1t4k2GejNNsLum1zhWm8+qOpIU
 dBvNtcu/tIalw0D9TDP6DMiBrpQ0FJWCbzSK7kuoEbqCEHzhjaN9GYiLmj6cgRH7iFHC
 a1w8nHfSjbYvKW3XzS9iIR4qMpHPwjcjE2XSTcJf+lGZBfZxvdIMnOqrzDcIdCrQFORu
 piTpgloJBiyut5Qy3j8sJJGuDvk+xeunRD89V6+UQZKtquttnd8Ndfkbaiz2+U2mgcdz
 3H0lqE83VKWN10Ht+4vk6mK3UwZlSWrsKQlOWwn4iHPRkKha/VdmrIYNNimX/CpcwUij
 LcjQ==
X-Gm-Message-State: AGi0PuZgD33EVJy3cXbC7w2DOOZObAyTniMDStMzbJwFEP8rBy7EN47S
 YdkrEBsCq0RGfSePpNFWf9g=
X-Google-Smtp-Source: APiQypIjc/3Kcx764w5UPeyBdHuFZB5UHNoMG0fMVVZwIaKCuUDWOWnh/81/cNN7S7CRo41v7K/A5g==
X-Received: by 2002:a4a:92cd:: with SMTP id j13mr5039878ooh.96.1585878166813; 
 Thu, 02 Apr 2020 18:42:46 -0700 (PDT)
Received: from OptiPlexFedora ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id t19sm1809875oih.52.2020.04.02.18.42.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 18:42:46 -0700 (PDT)
Message-ID: <4bd376a6db77ef779972f377cc2c3789d03668e7.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Remove unused code
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Date: Thu, 02 Apr 2020 18:42:44 -0700
In-Reply-To: <20200403015057.7a972c79@elisabeth>
References: <20200402021706.788533-1-jbwyatt4@gmail.com>
 <20200403015057.7a972c79@elisabeth>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Saiyam Doshi <saiyamdoshi.in@gmail.com>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-04-03 at 01:50 +0200, Stefano Brivio wrote:
> On Wed,  1 Apr 2020 19:17:06 -0700
> "John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:
> 
> > Remove unused code surrounded by an #if 0 block.
> > 
> > Code has not been altered since 2014 as reported by git blame.
> > 
> > Reported by checkpatch.
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.h | 6 ------
> >  1 file changed, 6 deletions(-)
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.h
> > b/drivers/staging/emxx_udc/emxx_udc.h
> > index 9c2671cb32f7..bbfebe331033 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > @@ -9,12 +9,6 @@
> >  #define _LINUX_EMXX_H
> >  
> >  /*--------------------------------------------------------------
> > -------------*/
> > -/*----------------- Default undef */
> > -#if 0
> > -#define DEBUG
> > -#define UDC_DEBUG_DUMP
> > -#endif
> > -
> >  /*----------------- Default define */
> >  #define	USE_DMA	1
> >  #define USE_SUSPEND_WAIT	1
> 
> Formally, this is fine. But... think about it: this driver might be
> rather buggy, so the first thing one might want to do with it is to
> "enable" those two defines.
> 
> In general, that stuff has to disappear, and proper debugging
> facilities have to be used, but with a driver in this state, as long
> as
> proper debugging facilities aren't there, you might be doing more
> harm
> than good.

DEBUG is not actually used as far as I can tell (I am still new to
kernel debugging systems to please correct me). There is only a pair of
.c and .h files for this small driver.

UDC_DEBUG_DUMP is only used twice in the entire kernel-both for if
statements.

Should we just set it to:

#define UDC_DEBUG_DUMP 0

And leave the other 3 lines out? Please let me know for a v2.

> 
> -- 
> Stefano
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
