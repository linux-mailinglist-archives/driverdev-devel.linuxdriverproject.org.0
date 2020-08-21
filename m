Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DCD24CD3C
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 07:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43C068865B;
	Fri, 21 Aug 2020 05:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QBydwCT9xVpP; Fri, 21 Aug 2020 05:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D6EB81B36;
	Fri, 21 Aug 2020 05:23:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B88601BF2C4
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 05:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B3746203E4
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 05:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 22O6-5BRr2Ly for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 05:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 23E3C20397
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 05:23:16 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x6so451103pgx.12
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 22:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kIrZF45/BAvVQh8mbn5wXf5JnEyRG1slRn5cBPdhKss=;
 b=DfmN6vb4B8kr6tDcwzZIlusSYb6WCJA3RduM6NIddsXJ65ZCz0UVsNaSyZ/NUR94yX
 ad0zV3EMKOJ83IR0u+lHcjAwgFJDJKkeH8FmYfKUKTx8pEf/X9xczjahG5CklZRDaYt8
 LGWLqc39N+77WCD/ZUtlc0C2QUrBUbV/3Cp95Y2kGvBEF/Je37P3NW8CK/uZ0psozI2W
 Njup1s9Cp5s4PD4P24sGOxLs4YGeB9pgtv7xzwS9RKjuBetZSzMD8hENsgFAwHcyxgTD
 A/6NranznkC+nF4OyGfyN1j0af4E4UTcwGaAvyfxYW/tksZsXad+V5CDtj+USGPUUaNb
 5ruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kIrZF45/BAvVQh8mbn5wXf5JnEyRG1slRn5cBPdhKss=;
 b=F+JbHKQqfQRL+vg4TbvKYsEkBkuYfhfuBbs3wSNmZwkWkGTDT1/GTKHQg79NTqhpa3
 299Di96wvw43Fra6INBu8gT/ypI+GakgDGzl/ANu9Ph3e9i9FYpu69VGLuqhI/TWW3CT
 QKYRAFG5B8F1lYFfSbyJKNqS29yvuazpN/5rgYjRCMBmTrwbjJD6ClkoMG6slRqwm6OX
 aVmuDifa9wzYNpTTEsBSZQNk4G9wvi4KQTr+af9f4UjqSM3qjZKSjTGgagxMwGq+yCWr
 ITcCMyp6U2+r4tH3s3EU9c4fP4rn+nLzaa6cKI1DAMB/dPN8nglO+Q4VJswDarOJ6mf8
 0ZCw==
X-Gm-Message-State: AOAM5330yPjd3QW+nrIVDSb+NMTV8Avk4MMvZHtLwvQjr1KHsPds4GFK
 Cto0cYkikV4SVhralrgRTV0=
X-Google-Smtp-Source: ABdhPJwGMTHU2migh+Vtz36GIcyJKI0+/w+/wl9eaIpMSvJqvm5WwNJmFhE51zJndWVMYSVxv0mnRw==
X-Received: by 2002:a62:3583:: with SMTP id c125mr1136819pfa.1.1597987395542; 
 Thu, 20 Aug 2020 22:23:15 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id l7sm593466pjf.43.2020.08.20.22.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Aug 2020 22:23:14 -0700 (PDT)
Date: Fri, 21 Aug 2020 14:23:08 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [RFC 1/3] Initialize devlink health dump framework for the dlge
 driver
Message-ID: <20200821052308.GA12235@f3>
References: <20200814160601.901682-1-coiby.xu@gmail.com>
 <20200814160601.901682-2-coiby.xu@gmail.com>
 <20200816025640.GA27529@f3> <20200821030822.huyuxa5o5tcvtv2o@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200821030822.huyuxa5o5tcvtv2o@Rk>
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
Cc: Michal Kubecek <mkubecek@suse.cz>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-08-21 11:08 +0800, Coiby Xu wrote:
[...]
> > > diff --git a/drivers/staging/qlge/qlge_health.h b/drivers/staging/qlge/qlge_health.h
> > > new file mode 100644
> > > index 000000000000..07d3bafab845
> > > --- /dev/null
> > > +++ b/drivers/staging/qlge/qlge_health.h
> > > @@ -0,0 +1,2 @@
> > > +#include <net/devlink.h>
> > > +int qlge_health_create_reporters(struct qlge_devlink *priv);
> > 
> > I would suggest to put this in qlge.h instead of creating a new file.
> 
> Although there are only two lines for now, is it possible qlge will add
> more devlink code? If that's the case, a file to single out these code

I would say that if there's more content in the future, it can move to a
separate file in the future.

If you feel strongly about putting this in its own file right away, then
make sure to add the usual
#ifndef QLGE_HEALTH_H
#define QLGE_HEALTH_H
...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
