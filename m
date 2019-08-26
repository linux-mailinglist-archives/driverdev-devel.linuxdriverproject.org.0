Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 708969D1A0
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 16:26:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DF69220CA;
	Mon, 26 Aug 2019 14:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CBpu37RwQAl2; Mon, 26 Aug 2019 14:26:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07ABA22049;
	Mon, 26 Aug 2019 14:26:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7ECF81BF3DC
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 14:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A625860D2
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 14:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N+BX65KKchMi for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 14:26:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic304-22.consmr.mail.ir2.yahoo.com
 (sonic304-22.consmr.mail.ir2.yahoo.com [77.238.179.147])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4EE248328C
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 14:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566829598; bh=CUkBeBfgzLsQe0R+nv4XKH1MrZ/TAXoqFxsCZAILlnI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=bq3eED76epCDJIxamRYyr9sVqUGuOYMvQFQQFGqDNfecn5ql4Xy6BR2HXyEHIcWx4ooDVO4llNLPqn78ocoHN/Knm19DfR8B1r624qSp/8LPCAsYliyPDvL1DdqT6ZlGri4E9y3rhFFqWFaZlHsRsTcgUHwLRgt9Jj9+ImpW9YDTLSDIudai4a/MPpIDJ6+SMo2gHgE3ulEAraZnaN5cAkyfdjeU8zXVCsTb9fobbObE4gfiQ/p5qjMhSzfGTuYE9xSlqoV+iVZnrdjT50PQDUcjz4X7k5qxSNbkCqUCm7tAQAGivO7qNkizRHC2fqJgJpkEQ59wmRAl9bncS3/huw==
X-YMail-OSG: OgJk5BoVM1mL53bHC0NY6P6qwaZ9ctS1dz75ao.5HYcla4P0MsHPxuQL1_Ra54H
 TGKIkokmuTrdH9vc_7nHkGzdPHoeKfQ7yY1dKf00eCqVpKuqpwKoOyfPgFOCDA4Xq5cGTw23hhqB
 kgrTbL9p.oXiOqTPc8Ml1Al4RcTdkBmhmEhEe2eeE6OuKcIBzVh7LGXKQDo_hLJZ47YdpgvBh2He
 r0rBZZooM0wTXDXaaF8MMh1bd.fwoZImN.K8SyJWrG6f6amjl2rdf50_b.jl2Q3xfDR3adxlsaeL
 c5mKZHqtYGu_Sn3jFKBVOupqKjmAjCTJNo8y5oBLt5Qainv49b65GciX5HWXMsGdyP990Ob9bzQG
 W7YLWBaE_nFBzNRCLws49KWHqVxHI5RBDBqPqkHOFVhlYbpaOeNLwrSG2aLg6_cNNLaIq.dEtJpr
 uqNDeC1d1ndMUx8ugKjP0CCSZWQqDCRuCITev386kCzC2u9EwOh9F1GC71SC0Ohd19Yr_cV60zUE
 7LKkLo4CsaLqaBt5YbdiAuSqCUSnEG1EUPdius4JPYHydQcUn7WC0l6DD95D.SNBC9KohMfnGAQa
 FfHxDhV9hrY2nzForWUspe6311PcTJ2NIWcXBKB06fIuq5Lytvk1iB9Y2UuKl2zf.aNVOutZW1mr
 p33SiRmRAcxdzTYeWJ0yDxI_.AfSOhFmLis_20hj37g3wuW4pJrcohDycAJxKzy3C8UggHPVbLIv
 gIC4PoPmPHHgjAt6RRsCeKcqdGRkW2I38zhs.ioGYwuMYU5GUEyEbH2n818kUYvOjLpJ_twTVJnv
 e8.0qPsOoiac6wfgPbjI.1mGvc_ww.DAgIDWaPrcH9bBlIhN8ICQn3S8OuJsW1StWsaCCMj2uZ.E
 qkHkT4kFx3RHoRSPJUziJG.X8lUzAoJp.E.nZ.C33buUdsqHK8XGpJZPYveg4_dARColOQKF9ZCc
 x3di6Y.6S0eUfmew_fX3Nu9f3dokyd2y7cuwq_KAO7sITZnQzYA2FEpjFqr_CCJmWTsR8bOu_q5F
 Uu3V0_4aqjU4YOJe3zGx.I9.sjMImskhGhSfaHtlfRSQlPZy.koikLlUqFUP1e3GCjWoO07iud1e
 DekJJT5XCSu96mLI_N6ZjehRTEJKcsUBQt.L3MuKgFG37fh0KG_9BOoAP5CVpdnfSBWN2MCZOKse
 y.Kro6fIK1UzEbQMJ2REwHTp8hmsRN_TYauG3Yll95d3xhKIuwCVDKCZ1EIlTu4euyV3skioCDB7
 k7q.y.ZwuhZ6097iQU58tZc1Z9SftK39Qek2N0w7eQ4ni2esuqOur
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ir2.yahoo.com with HTTP; Mon, 26 Aug 2019 14:26:38 +0000
Received: by smtp417.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 1d766d3174bb217f1c7ce281052272e3; 
 Mon, 26 Aug 2019 14:26:36 +0000 (UTC)
Date: Mon, 26 Aug 2019 22:26:26 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <chao@kernel.org>
Subject: Re: [PATCH RESEND] erofs: fix compile warnings when moving out
 include/trace/events/erofs.h
Message-ID: <20190826142624.GA22424@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190826132234.96939-1-gaoxiang25@huawei.com>
 <20190826132653.100731-1-gaoxiang25@huawei.com>
 <50c3453c-a1be-3e79-da21-4d4c84d49fec@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50c3453c-a1be-3e79-da21-4d4c84d49fec@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chao,

On Mon, Aug 26, 2019 at 09:51:35PM +0800, Chao Yu wrote:
> On 2019-8-26 21:26, Gao Xiang wrote:

[]

> >  TRACE_EVENT(erofs_lookup,
> >  ^~~~~~~~~~~
> > include/trace/events/erofs.h:28:2: note: in expansion of macro 'TP_PROTO'
> >   TP_PROTO(struct inode *dir, struct dentry *dentry, unsigned int flags),
> >   ^~~~~~~~
> > 
> > That makes me very confused since most original EROFS tracepoint code
> > was taken from f2fs, and finally I found
> > 
> > commit 43c78d88036e ("kbuild: compile-test kernel headers to ensure they are self-contained")
> > 
> > It seems these warnings are generated from KERNEL_HEADER_TEST feature and
> > ext4/f2fs tracepoint files were in blacklist.
> 
> For f2fs.h, it will be only used by f2fs module, I guess it's okay to let it
> stay in blacklist...


Yes, it depends on you f2fs folks selection...
Anyway, this file is a new file, therefore it should be better not to add to
blacklist...


> 
> > 
> > Anyway, let's fix these issues for KERNEL_HEADER_TEST feature instead
> > of adding to blacklist...
> > 
> > [1] https://lore.kernel.org/lkml/20190826162432.11100665@canb.auug.org.au/
> > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> 
> Reviewed-by: Chao Yu <yuchao0@huawei.com>


Thanks for reviewing :)


Thanks,
Gao Xiang

> 
> Thanks,

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
