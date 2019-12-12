Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6309C11D06C
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 16:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 089048837C;
	Thu, 12 Dec 2019 15:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 45kP5pssIIaB; Thu, 12 Dec 2019 15:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3995F8836A;
	Thu, 12 Dec 2019 15:02:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CDD11BF4E2
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 15:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 16B8486F8F
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 15:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W3ItOi61alQe for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 15:02:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f68.google.com (mail-yw1-f68.google.com
 [209.85.161.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 743A886EDD
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 15:02:05 +0000 (UTC)
Received: by mail-yw1-f68.google.com with SMTP id z7so718280ywd.4
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 07:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=88P7hGgy6VEyhnH2Wu8BZSOUx6up5jv+cSRDPvY4HZ0=;
 b=JakaJ6iM4KJXl2DlVFFGI4PE6etmpjeL2JZmewo+mrHW+fESI9UnGKRlaqUkMrV/+1
 5geYwMDMu26/0rbn+bfE/oR3NAVtgCPv31N7eGtBdDVaWP2KTnTUMS1iHRowj0XnmpfX
 4UX0f1MCIspncFDFSH/TI7ykgrnMZp6peglbRdfCR6kjwpiiuXC4Vzx4VJrOj63+s2qL
 YJQvCVNEhTa/LlMVvadM8/RUdS1RDgic90ch6eFKU9RLN3IVnXHbXZFFb0APsmEJ0t14
 s5A+LsUZkE1UQVcMxAHRvGVBamtdC40IdzM1+QeH/3H5heYyRs2Y0E9WBj7T/+8LrAxO
 k4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=88P7hGgy6VEyhnH2Wu8BZSOUx6up5jv+cSRDPvY4HZ0=;
 b=aYtQQnhqXNGw1nb/8DP9TCAkJe7nKfOsl4E1nWd7Z79n9QbtoPUjAZxf4bhFcaGRmn
 BJECrzrhSXJGZ1PWOitx92t9DR8zeSCMqZUWJgsLjxPWuurCjQvYZ8ABW4bYklh4F0JZ
 26pEqLolFBJ13LfTyE+pE/UA7Er2gbjX6PFeTYtATZQBfJvfpSfh8lRLL5eoev67HceJ
 3aIMSfgehPQmf1eLD6mz+FlZF9pz8qWpKh19cso6+b9Cs/BXr9QVgo7l1E/tCYJD3Ao6
 iSTr0oaMp60rWGEXVqR9evKuY7BzB76037hI1dtt/TdssPsRJCcE59Fn4dz8W+cQQ/1G
 izqA==
X-Gm-Message-State: APjAAAXiMXD4KkpmmiNvA5jSRSE/77MnZcOiJ3EDKEXE5r9o3nwfTKqH
 cpwgJl5WrSGPvKqaFxrzwUs=
X-Google-Smtp-Source: APXvYqydAxoN3yhF+zDxMfTh+NSSfxq/O43aghaQWXqunOVFNvk6+Q0tCC/c3s8uXvk9ThyuszIshQ==
X-Received: by 2002:a25:70c1:: with SMTP id l184mr4322144ybc.463.1576162924271; 
 Thu, 12 Dec 2019 07:02:04 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:1549:e76:ca4c:6ce8])
 by smtp.gmail.com with ESMTPSA id s31sm2613870ywa.30.2019.12.12.07.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 07:02:03 -0800 (PST)
Date: Thu, 12 Dec 2019 09:02:00 -0600
From: Scott Schafer <schaferjscott@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 11/23] staging: qlge: Fix CHECK: braces {} should be
 used on all arms of this statement
Message-ID: <20191212150200.GA8219@karen>
References: <cover.1576086080.git.schaferjscott@gmail.com>
 <0e1fc1a16725094676fdab63d3a24a986309a759.1576086080.git.schaferjscott@gmail.com>
 <20191212121206.GB1895@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212121206.GB1895@kadam>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 12, 2019 at 03:12:06PM +0300, Dan Carpenter wrote:
> On Wed, Dec 11, 2019 at 12:12:40PM -0600, Scott Schafer wrote:
> > @@ -351,8 +352,9 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
> >  	mbcp->out_count = 6;
> >  
> >  	status = ql_get_mb_sts(qdev, mbcp);
> > -	if (status)
> > +	if (status) {
> >  		netif_err(qdev, drv, qdev->ndev, "Lost AEN broken!\n");
> > +	}
> >  	else {
> 
> The close } should be on the same line as the else.
> 
> >  		int i;
> >  
> 
> regards,
> dan carpenter

this was fixed in patch 22
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
