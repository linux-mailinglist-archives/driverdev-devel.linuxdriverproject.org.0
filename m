Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6D711CBAA
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 12:01:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88988882DE;
	Thu, 12 Dec 2019 11:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a8CFefADOB1v; Thu, 12 Dec 2019 11:01:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1173888280;
	Thu, 12 Dec 2019 11:01:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F1271BF3B0
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3B67488280
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BPsDxV+1PgFN for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 11:01:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com
 [209.85.219.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 943FE8818E
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 11:01:01 +0000 (UTC)
Received: by mail-yb1-f194.google.com with SMTP id 63so284340yba.2
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 03:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3NLogIIkrt/hmZd7hzl4otAejKTvhVHjvTAan3q/U3Q=;
 b=U/MDo+ExHjLwBASvVMUbmdOjymwLMERC0Omm57dulGMVXjJprLZdP52/rBvSla++6o
 ru1Qbajslbn/FBW5TScyEMt5Sa7Ov0nI1b8aqBO3py3EcrvK060GiHRonnPiEbyHMGUl
 3yx8oLd+pwvpvcYTraRwRqBpiLiZuXdpYruWtQQF7ZBfNbFafd/iWbF0b2xPYdbT8L7x
 T81hbkYPB7X32Au0J9bUALVri+YtCM/oKYra9NTtdz1ZNglqIagk4ax6vkkF3lppmM67
 nimZ+NlE8oL00yPrDrR82o3pLR5q6s9KQN8tGvO6QnXT7EvRWaTl6W+48Xaz+kZbXSXu
 UIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3NLogIIkrt/hmZd7hzl4otAejKTvhVHjvTAan3q/U3Q=;
 b=XCnluaWEFpfGx3ZPNW+oBwIT6hxf1RtN9nadstmu+kQuqQMAbLC56TuQmBRAXnGFXp
 EIAV5xfAHg/fAmOCuqU0Vy7aZXyzlsuI4wWk19/6j7gI3jugWiWfps9KGKp3WiqOrli+
 /nyVG+j3PRNuyQJ+90tJDax6azmYMS0x+sA3fxvunGWcyKwmbxxvCfHaH6FyboyTIk8x
 3AdiIeAoBo5uZ1KQ4lbCw1EV4oQrHunJvqEDmye7+y4DFkeRUuxqnoSoeQdosT4RKNn1
 aDGL486r8dApvztLFBSr92MEqp0Zsf/Hqo56lu6n43iXfDuqkLNC89OyGF0STBxrHlmu
 JE0A==
X-Gm-Message-State: APjAAAUrIcZXAA/EReCjfW3kwbLnQnpxSpmaTqhIg2OZEuJBXQubNS9O
 4raFc18A7dp7N+m3rIJ9K8c=
X-Google-Smtp-Source: APXvYqyCiWoYgW7gP5cqkOhfMLFAjSAYch+A+DHKKiWA9vs2WRbDV64ENGoizBVTkS6dMJh0fJ4+9w==
X-Received: by 2002:a25:6385:: with SMTP id x127mr3510081ybb.468.1576148460482; 
 Thu, 12 Dec 2019 03:01:00 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:1549:e76:ca4c:6ce8])
 by smtp.gmail.com with ESMTPSA id 199sm2383432ywn.52.2019.12.12.03.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 03:00:59 -0800 (PST)
Date: Thu, 12 Dec 2019 05:00:57 -0600
From: Scott Schafer <schaferjscott@gmail.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v2 20/23] staging: qlge: Fix CHECK: usleep_range is
 preferred over udelay
Message-ID: <20191212110057.GA7934@karen>
References: <cover.1576086080.git.schaferjscott@gmail.com>
 <a3f14b13d76102cd4e536152e09517a69ddbe9f9.1576086080.git.schaferjscott@gmail.com>
 <337af773-a1da-0c04-6180-aa3597372522@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <337af773-a1da-0c04-6180-aa3597372522@cogentembedded.com>
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

On Thu, Dec 12, 2019 at 01:45:57PM +0300, Sergei Shtylyov wrote:
> Hello!
> 
> On 11.12.2019 21:12, Scott Schafer wrote:
> 
> > chage udelay() to usleep_range()
> 
>    Change?
> 
> > Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
> > ---
> >   drivers/staging/qlge/qlge_main.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> > index e18aa335c899..9427386e4a1e 100644
> > --- a/drivers/staging/qlge/qlge_main.c
> > +++ b/drivers/staging/qlge/qlge_main.c
> > @@ -147,7 +147,7 @@ int ql_sem_spinlock(struct ql_adapter *qdev, u32 sem_mask)
> >   	do {
> >   		if (!ql_sem_trylock(qdev, sem_mask))
> >   			return 0;
> > -		udelay(100);
> > +		usleep_range(100, 200);
> 
>    I hope you're not in atomic context...
> 
> >   	} while (--wait_count);
> >   	return -ETIMEDOUT;
> >   }
> 
> MBR, Sergei

Im not quite what you mean by "I hope you're not in atomic context",
could you please explain why you said this? 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
