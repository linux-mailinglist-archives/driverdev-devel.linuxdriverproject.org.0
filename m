Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B500B313621
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 16:06:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DD1D869A9;
	Mon,  8 Feb 2021 15:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqDg6gk4nzBu; Mon,  8 Feb 2021 15:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65BE286963;
	Mon,  8 Feb 2021 15:06:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDFA61BF396
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 15:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D9D4986963
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 15:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFTx8qYzClCh for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 15:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E3BEA867B2
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 15:06:30 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1l987K-00034y-2B; Mon, 08 Feb 2021 16:06:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1l987G-0001VY-3n; Mon, 08 Feb 2021 16:06:18 +0100
Date: Mon, 8 Feb 2021 16:06:18 +0100
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: fix ignoring return value warning
Message-ID: <20210208150618.GI8233@pengutronix.de>
References: <1612689808-30985-1-git-send-email-tangyouling@loongson.cn>
 <20210208134517.GG2696@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210208134517.GG2696@kadam>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:57:09 up 68 days,  2:24, 102 users,  load average: 0.06, 0.08,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Youling Tang <tangyouling@loongson.cn>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Mon, Feb 08, 2021 at 04:45:17PM +0300, Dan Carpenter wrote:
> On Sun, Feb 07, 2021 at 05:23:28PM +0800, Youling Tang wrote:
> > Fix the below ignoring return value warning for device_reset.
> > 
> > drivers/staging/mt7621-dma/mtk-hsdma.c:685:2: warning: ignoring return value
> > of function declared with 'warn_unused_result' attribute [-Wunused-result]
> >         device_reset(&pdev->dev);
> >         ^~~~~~~~~~~~ ~~~~~~~~~~
> > drivers/staging/ralink-gdma/ralink-gdma.c:836:2: warning: ignoring return value
> > of function declared with 'warn_unused_result' attribute [-Wunused-result]
> >         device_reset(&pdev->dev);
> >         ^~~~~~~~~~~~ ~~~~~~~~~~
> > 
> 
> We can't really do this sort of fix without the hardware to test it.
> This could be the correct fix or perhaps switching to device_reset_optional()
> is the correct fix.  We can't know unless we have the hardware to test.

When device_reset() is the wrong function then adding a return value
check will turn this into a runtime error for those who have the
hardware which will hopefully trigger them to tell us why reset_device
is wrong for them.
At least for a staging driver I find this procedure opportune.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
