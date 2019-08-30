Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2808A3633
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 14:04:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01B6686BFE;
	Fri, 30 Aug 2019 12:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c_Wg8KT7gGwU; Fri, 30 Aug 2019 12:04:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1ED886AFD;
	Fri, 30 Aug 2019 12:04:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD1BA1BF473
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:04:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9E5D87EC2
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0a35s0Uzi6P4 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 12:04:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic312-23.consmr.mail.gq1.yahoo.com
 (sonic312-23.consmr.mail.gq1.yahoo.com [98.137.69.204])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ECF8E87EAE
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 12:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567166677; bh=3dnpKGsS+OuKzlzxbOlDQHhsBySeMNk6jgiZI/YORp4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=o0X8nnr3IP6v52GpCtlks05j1+LcaEgdmvj6zrHlVWy/L+ZM6T/Tbp+Qjn9LRIgsNdmlR+PJHpLqvF65dzxnnXE3vvmSEUFhcCK3f8DbRDV8qexbecd7xb/YD81zDboZ/xnXfMFWwsZg7CXZj3F0VJBQlTxWo5hWrr8zrurWykG0TwouRw09+rnH2q7yQMIGzvwFn70Z37Q2BFtyg8j77XS0qIIV4IGYi4/y2wyWrVl8FqLvTDUT0qdiBljFdFpMTpmLhKEZwyAKopYorPSUJ+/FL093SuUhgn1jV7sKqGkLN9D45SAjDuxVXvye19JogHdzGzZ/p5orLDDZAABAfg==
X-YMail-OSG: tLGm94MVM1lgTkycx0A6Qp6pt1TMIWZWvvQHgABks2L_KU5hq5j0MBLAvm86FVm
 _PoQEcB0IDeYv7JwOX9IrtYEnHiOGk6LfY0NbUmzWFAZOAyzBwhpRLNyySTrLuZyG1lKnc1SNucU
 DC.JLja.Dvf5KkeSZCGjJfsS3rC3t2q5w0JcPa.LyALbosKFQs_kQpIw8TtiA4FjOWE2j7gNJ0Ly
 7LfifrdQK1bvU0Kng3RgGo7WPUZD1fz9clYnzyto85QaBiAqySg.HUL_KdjILEt95egseUsXv2zF
 scQiG9PNhp.dHKfzATZesJ4ONNk1UqdaqtnIAJsABjPFuM1l6OzMykrn8hE8I3D4G64Y2jfHQMlA
 zUUq212474oBOIEi62rcN2V2z4Lau9XwKE_09COyHeXbgunFps6HcNjnCMxStmhqyUDzZ6du9L0t
 sSjAv7b85f34QjSjjGW9r_5Pe2J2AukSNXgyerZZXD3ckuehjrqDUZi84AdURZdLuzLLMkjRnLrS
 JBH7WFQti24pjL.brQiwlwB_s4TWR6pcJi1RTMwJTC_uueswZRH_RCWT47kYIW.98Ccxdi2tZmXA
 cJWZKkettpegBEk9YF3jzetclqEMO2OcflVVRF16D65K2B99LboFX9Osn2SGd3h6tGjrEKyUmnkl
 IlpaCjHD9.VIqKRuYCteRnP5V4b9fOkDGKQzVSMjyPkPds6jNtuffqX8d.Nhtiz4J18.14NTURdD
 YzBZsshxjlv3mvb3ooXKvxKsntlzUa5ZInINO43G6LFliOpDpNNhIV1JMTvSG8aN5WLqReOJeX1h
 U1_uF1X0gbbMVgW8XR8SmTZPl5fCaQMHsqRqsP7neiUSTV13jebXyEOD7qmKqo_FNp1E.R4lNFXC
 lZIo0VUaUOdBNHslkLHo5yIsUxiWBNwSmOI8ANqTIsAgBeFk0WNbuDZTMTBM4KmtVLHYDH.NF0ok
 XWDMCaoWuAOmovgPYnPY2PoghauA3q2QLP3HTIINQUa9JSEAMeD1jyOwmprcRXlx2NkE1nrDAMaD
 pSLekSp27R7uOGI7lN6OP6qSol.yndelbJJTZ9UPsd61zuiyE79fx8M2MyXi2srBYzJ1kgRtAOJ.
 p.CGDu3LXRrQw0mvXU8D2ax5PfJy8wy0C9e.Jx4.tnROvSVm0CPbKZ_3H6ZzlatvgwcxfZYiqUKS
 goASo8RToc2WLr6CbFmg8nmtRt9PxupcSNrXbdEjOVeRwO.HCi7RJQcgLYQu7bmieAjP6q1GbCrg
 cEqdErOMY9iUJkSRoqdKzkfr3Z6vi7hs-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.gq1.yahoo.com with HTTP; Fri, 30 Aug 2019 12:04:37 +0000
Received: by smtp428.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 7ab41f8c227fcd099f8ed0410cccad50; 
 Fri, 30 Aug 2019 12:04:33 +0000 (UTC)
Date: Fri, 30 Aug 2019 20:04:20 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830120419.GB10981@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com> <20190829151144.GJ23584@kadam>
 <20190829152757.GA125003@architecture4>
 <20190829154346.GK23584@kadam>
 <20190829155127.GA136563@architecture4>
 <20190829160441.GA141079@architecture4>
 <20190830083445.GL23584@kadam>
 <20190830084333.GA193084@architecture4>
 <20190830112612.GF8372@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830112612.GF8372@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <alexander.levin@microsoft.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 Valdis =?gbk?Q?Kl=A8=A5tnieks?= <valdis.kletnieks@vt.edu>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Fri, Aug 30, 2019 at 02:26:12PM +0300, Dan Carpenter wrote:
> On Fri, Aug 30, 2019 at 04:43:33PM +0800, Gao Xiang wrote:
> > Hi Dan,
> > 
> > On Fri, Aug 30, 2019 at 11:34:45AM +0300, Dan Carpenter wrote:
> > > On Fri, Aug 30, 2019 at 12:04:41AM +0800, Gao Xiang wrote:
> > > > Anyway, I'm fine to delete them all if you like, but I think majority of these
> > > > are meaningful.
> > > > 
> > > > data.c-		/* page is already locked */
> > > > data.c-		DBG_BUGON(PageUptodate(page));
> > > > data.c-
> > > > data.c:		if (unlikely(err))
> > > > data.c-			SetPageError(page);
> > > > data.c-		else
> > > > data.c-			SetPageUptodate(page);
> > > 
> > > If we cared about speed here then we would delete the DBG_BUGON() check
> > > because that's going to be expensive.  The likely/unlikely annotations
> > > should be used in places a reasonable person thinks it will make a
> > > difference to benchmarks.
> > 
> > DBG_BUGON will be a no-op ((void)x) in non-debugging mode,
> 
> It expands to:
> 
> 	((void)PageUptodate(page));
> 
> Calling PageUptodate() doesn't do anything, but it isn't free.  The
> time it takes to do that function call completely negates any speed up
> from using likely/unlikely.
> 
> I'm really not trying to be a jerk...

You are right, I recalled that PageUptodate is not as simple as it implys.
Yes, those are all removed now... I am ok with that,
thanks for your suggestion :)

Thanks,
Gao Xiang

> 
> regards,
> dan carpenter
>
 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
