Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3710E11F7F3
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 14:23:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 881B885F4B;
	Sun, 15 Dec 2019 13:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uadNUDsGTtAW; Sun, 15 Dec 2019 13:23:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7503D85C05;
	Sun, 15 Dec 2019 13:23:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0C01BF2A5
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 13:23:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2665D85C1D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 13:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D5FW_4RufrLN for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 13:23:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4ACD585C05
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 13:23:34 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m6so3796598ljc.1
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 05:23:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wKN8mIsg/R7quM4J88wTjTIbvv7hHpY6p+oL8f957Ck=;
 b=UC42rf3lQzTM0mu9+eHx2ZvTCTbPR2k7vypuh1dWMaFKd+pVbjbdpFRSNlSlqL5Pcs
 aRedmBJve/PFWptyAZK0h4rQkZOg6qOauHwJjqxq1XrETKZNznBOsGn5CgphXK3QZPG1
 NELe6Cqbkl5d3SXXuFjOWnrYoGjzpl134ckql9/sx8+B4Tqq7VizQv9SY1ScVYvSwEDl
 G9YYwhSpPqTQf0w9YU3w8ZI9edXzPavPL+9mWuDlqrAvigrAX2p4I434S93hbHIlTJgP
 89deEbHcn4idJXArNiQrEbtYugHMAMeZToAQW85ihAXfLajAB5qMtjij1lCr3Ul7RN5/
 ShFQ==
X-Gm-Message-State: APjAAAV4PA5Hy1a0oz4MsKgwUH09GbqwvcG/9nPCiG4IKj2Bo8COUbR3
 M96MGW6rVoy/snJzWyQ2oG0=
X-Google-Smtp-Source: APXvYqzFdhKzSCWN74Hit25VXnCNnvPg9PoK+RYpGGMVaSkBshbVO8vSRMuOeJppCUledf6woj42vQ==
X-Received: by 2002:a2e:9987:: with SMTP id w7mr16205373lji.107.1576416212445; 
 Sun, 15 Dec 2019 05:23:32 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id q13sm9438126ljj.63.2019.12.15.05.23.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 05:23:31 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1igTru-00022d-5q; Sun, 15 Dec 2019 14:23:30 +0100
Date: Sun, 15 Dec 2019 14:23:30 +0100
From: Johan Hovold <johan@kernel.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: rtllib_module: Fix memory leak in
 alloc_rtllib
Message-ID: <20191215132330.GB10631@localhost>
References: <20191214230603.15603-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191214230603.15603-1-navid.emamdoost@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, Sandhya Bankar <bankarsandhya512@gmail.com>,
 Hildo Guillardi =?iso-8859-1?Q?J=FAnior?= <hildogjr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 14, 2019 at 05:05:58PM -0600, Navid Emamdoost wrote:
> In the implementation of alloc_rtllib() the allocated dev is leaked in
> case of ieee->pHTInfo allocation failure. Release via free_netdev(dev).
> 
> Fixes: 6869a11bff1d ("Staging: rtl8192e: Use !x instead of x == NULL")

This is not the commit that introduced this issue.

> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_module.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_module.c b/drivers/staging/rtl8192e/rtllib_module.c
> index 64d9feee1f39..18d898714c5c 100644
> --- a/drivers/staging/rtl8192e/rtllib_module.c
> +++ b/drivers/staging/rtl8192e/rtllib_module.c
> @@ -125,7 +125,7 @@ struct net_device *alloc_rtllib(int sizeof_priv)
>  
>  	ieee->pHTInfo = kzalloc(sizeof(struct rt_hi_throughput), GFP_KERNEL);
>  	if (!ieee->pHTInfo)
> -		return NULL;
> +		goto failed;

And you're still leaking ieee->networks and possibly a bunch of other
allocations here. You need to call at least rtllib_networks_free() in
the error path.

>  
>  	HTUpdateDefaultSetting(ieee);
>  	HTInitializeHTInfo(ieee);

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
