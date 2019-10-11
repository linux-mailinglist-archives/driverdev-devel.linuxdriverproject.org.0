Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FDED3677
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 02:44:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDB698504B;
	Fri, 11 Oct 2019 00:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mro9SdEZXamV; Fri, 11 Oct 2019 00:44:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 81A2D84828;
	Fri, 11 Oct 2019 00:44:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A68C91BF9C1
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 00:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A13ED8630A
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 00:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uTg1V+Sl+sXE for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 00:44:29 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.7.6
Received: from mx2.ucr.edu (mx2.ucr.edu [138.23.62.3])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF71D8758A
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 00:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1570754668; x=1602290668;
 h=mime-version:references:in-reply-to:from:date:message-id:
 subject:to:cc; bh=uXv2UQ3LODrzT9UfKJz+VhFwzGfiQWvz0Klpty0YInQ=;
 b=mtSrArx/S2WSp9V9RlU0j21gxZxxyhDpzaoB/HxrBh6WawpGOtXrSeq8
 M1xjdklK046RfU0RXzxghIKG9isGlmbbnVdaXEbHy7JrUJCAME4+EFiGG
 7eueMRDpjbJrRqz0Jt+N6yB4GSSW/nMndWkAt57CnNH5NUduXlI+I7/6J
 bP2aj4e9YQkjK0Sxgep3CLPLE2V0Jn0EK0TOrqZu1MiyuoRYgbOlKcx2h
 YpluieCC2qfVu3ZpXskcnllG+M7YG7x6dNmg921CO8wriegbBvSVgHcMK
 TgxJfbkFKE9wbR0odkGFx5NjwSnUdKgWLyo6TVRT1fS4EnZ7rwLGv4H7E g==;
IronPort-SDR: Ep4AO7tzrHjV9GcHte+2Ii4FUzBS62Ly8WYAFn2hTjFFvPUJi8v7W6YrqpnPCPHPhad8TDInQX
 8QtAUORq3go1kRyx4I2ggBcmnSUbif3OUNfy4CzlojTgKhxgH0shIz3c41iDxB/AP8S7Jf7MIo
 puIgjAgxVQuFbFTsswin0/znxhmbo2UkrNLPNbmJSN+PTu//OIxqdz9ROVrmIfLf0HdPbvRSdv
 eWocI7lnQ+7E3BVCawzRCeyM0bSa8IWn50QxxkAtLeKRo3LX/OwTLmQ5E8GFIHRctDLbH7cxzQ
 aZE=
IronPort-PHdr: =?us-ascii?q?9a23=3Ah7T9kR+M2Zel9/9uRHKM819IXTAuvvDOBiVQ1K?=
 =?us-ascii?q?B41O8cTK2v8tzYMVDF4r011RmVBN6dta4P0LeempujcFRI2YyGvnEGfc4EfD?=
 =?us-ascii?q?4+ouJSoTYdBtWYA1bwNv/gYn9yNs1DUFh44yPzahANS47xaFLIv3K98yMZFA?=
 =?us-ascii?q?nhOgppPOT1HZPZg9iq2+yo9JDffgtFiCC8bL59Ixm7owXcvdQKjIV/Lao81g?=
 =?us-ascii?q?HHqWZSdeRMwmNoK1OTnxLi6cq14ZVu7Sdete8/+sBZSan1cLg2QrJeDDQ9Lm?=
 =?us-ascii?q?A6/9brugXZTQuO/XQTTGMbmQdVDgff7RH6WpDxsjbmtud4xSKXM9H6QawyVD?=
 =?us-ascii?q?+/9KpgVgPmhzkbOD446GHXi9J/jKRHoBK6uhdzx5fYbJyJOPZie6/Qe84RS2?=
 =?us-ascii?q?hcUcZLTyFODY28YIkPAeQPPuhWspfzqEcVoBuiGQWhHv/jxiNUinL026Axzu?=
 =?us-ascii?q?QvERvB3AwlB98BsnXUrdT1NKcPVuC+0arHzTXZYPNXxDzw74jJcxEhof6WXL?=
 =?us-ascii?q?J8bdbdxEc0GgPYklqQs5bpMC2I2eQQqmWW6fdrW+G3i2M/tQ19vjyiyt0vh4?=
 =?us-ascii?q?TJnI4Z11HJ+CdjzIs0IdC1TlNwb8S+H5tKrS6aMpN7QsYlQ251pik30qYGuZ?=
 =?us-ascii?q?unfCgSz5Qn2gLfZ+SHc4eW5hLjU/6cITJii3JkfLKznhKy8Ua9xuHlWMm50V?=
 =?us-ascii?q?JHojBKktnLsXAN2BjT5dadRvRh+Ueh3C6D1wHV6u5aPUA5jbTXJ4Ilz7IqlZ?=
 =?us-ascii?q?cesV7PEjL3lUj0lqObd0Ep9vCt6+v9Y7XmopGcN5VzigH7Kqkvms2+AeQiPQ?=
 =?us-ascii?q?gPQ2SX5eqx2ab+/ULlWrVGlOM5nbTEsJzCP8QUura5AxNJ0oYk8xuwEimp0M?=
 =?us-ascii?q?oGknkDN19KZQiHj4n3O17QOvD3EOmwg0q2nDds3PDGI7rhAo7JLnTZl7fhZ7?=
 =?us-ascii?q?l9uAZgz18fxNYXzJtOErwHPP/pEhv9vdqeBRYjKwGy3+v9INJn34gaVCSEBa?=
 =?us-ascii?q?rPY43Itlrd1+M9I/SLLL0VsTe1f+k35/fv1SdisUIWZ++k0YZBOyPwJehvP0?=
 =?us-ascii?q?jMOSmkudwGC2pf+1NmFOE=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2F7AAAwzp9dh0WnVdFmHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYQQKoQjjl2CD5slAQgBAQEOLwEBhEACgl0jNwYOAgM?=
 =?us-ascii?q?JAQEFAQEBAQEFBAEBAhABAQEIDQkIKYVAgjopAYM9AQEBAxIRVhALCw0CAiY?=
 =?us-ascii?q?CAiISAQUBHAYTIoMAgnilS4EDPIsmgTKIYgEJDYFIEnooAYwNgheEIz6HUoJ?=
 =?us-ascii?q?eBIE5AQEBlS+WVwEGAoIQFIxUiEUbmUCnfA8jgUWBfDMaJX8GZ4FOUBAUgWm?=
 =?us-ascii?q?OTCQwkHYBAQ?=
X-IPAS-Result: =?us-ascii?q?A2F7AAAwzp9dh0WnVdFmHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYQQKoQjjl2CD5slAQgBAQEOLwEBhEACgl0jNwYOAgMJAQEFAQEBAQEFB?=
 =?us-ascii?q?AEBAhABAQEIDQkIKYVAgjopAYM9AQEBAxIRVhALCw0CAiYCAiISAQUBHAYTI?=
 =?us-ascii?q?oMAgnilS4EDPIsmgTKIYgEJDYFIEnooAYwNgheEIz6HUoJeBIE5AQEBlS+WV?=
 =?us-ascii?q?wEGAoIQFIxUiEUbmUCnfA8jgUWBfDMaJX8GZ4FOUBAUgWmOTCQwkHYBAQ?=
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="14356900"
Received: from mail-lf1-f69.google.com ([209.85.167.69])
 by smtp2.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 10 Oct 2019 17:37:17 -0700
Received: by mail-lf1-f69.google.com with SMTP id x20so1693033lfe.14
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 17:37:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZcWxfPlnGPAO2yo7t6F26rix4NWYfye93UCn2ZNXKJ8=;
 b=BwUq5IK6UE3LH7rGbWvS/qNcb0sX+wnmN6xJWXeyvp0TvFL1sVLoDdKB2CC8g3MEGY
 LwoyYxMf0fuu3/5DsMFlNw+SX/nNoGOBe9iI9sWs8qYtMMEdcpYV3MFRQQWL2kGvbKvt
 Cl8TxRyGRAb6A8oO5kRGPvzZdhe4RcXMtpb4n4vaKx+gT8mAV2feumn8NuMc1rl3DHDj
 AkQkDZVCrOyEKAqRu3brVb0ec9PTAhcG3B+5Un+WkuzlqcPN/OSDfS1+tdy9cvmJn/R1
 y62eaZ2b/jHSpmatSu3GhhIfPpVgq8TD2kYh4KN4g4dL6DwemRDaX2XE0f1ESfRUR3gx
 TaNQ==
X-Gm-Message-State: APjAAAXD7A9JS50nDlx8eIQLxDmxZHlp+2YSIZsSxTPmLEg4mkGud2fq
 MBnpYW3NByZo6W1KC87jQo49Kx9Fg6BA3CmI7Cil6Bmv3pv9UYNtI5lnY5mdQHQN6AYZPph0d+y
 /M43Om3P7bzIwbA5ls/Kpq/kfnlXLHkSbOD7Osfg=
X-Received: by 2002:a19:ee08:: with SMTP id g8mr2680859lfb.117.1570754235351; 
 Thu, 10 Oct 2019 17:37:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwbqzp9i04wuktQmil7d0bMJlOGaeRnmQG5uBtRDRKLB00XbM3BrsBPCdcJjoQsH+RggVfxOXKBguWYLkvp+gg=
X-Received: by 2002:a19:ee08:: with SMTP id g8mr2680852lfb.117.1570754235067; 
 Thu, 10 Oct 2019 17:37:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191010043809.27594-1-yzhai003@ucr.edu>
 <20191010091834.GG20470@kadam>
In-Reply-To: <20191010091834.GG20470@kadam>
From: Yizhuo Zhai <yzhai003@ucr.edu>
Date: Thu, 10 Oct 2019 17:37:56 -0700
Message-ID: <CABvMjLQ+_rRJT_yeKE9AKJaxhSU5LbcZdenbOr8CdPoD+4Oprw@mail.gmail.com>
Subject: Re: [PATCH] staging: sm750fb: Potential uninitialized field in "pll"
To: Dan Carpenter <dan.carpenter@oracle.com>
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
 Teddy Wang <teddy.wang@siliconmotion.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sorry about that, let me resend it .

On Thu, Oct 10, 2019 at 2:53 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, Oct 09, 2019 at 09:38:08PM -0700, Yizhuo wrote:
> > Inside function set_chip_clock(), struct pll is supposed to be
> > initialized in sm750_calc_pll_value(), if condition
> > "diff < mini_diff" in sm750_calc_pll_value() cannot be fulfilled,
> > then some field of pll will not be initialized but used in
> > function sm750_format_pll_reg(), which is potentially unsafe.
> >
> > Signed-off-by: Yizhuo <yzhai003@ucr.edu>
>
> The patch is correct, but it doesn't apply to linux-next any more.  Can
> you re-write it on top of the most recent staging-next and resend?
>
> regards,
> dan carpenter
>


-- 
Kind Regards,

Yizhuo Zhai

Computer Science, Graduate Student
University of California, Riverside
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
