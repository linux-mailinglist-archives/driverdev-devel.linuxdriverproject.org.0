Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 088BCD7754
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 15:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2B355204A5;
	Tue, 15 Oct 2019 13:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id elmv2Yj8jDNn; Tue, 15 Oct 2019 13:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 01E762042C;
	Tue, 15 Oct 2019 13:20:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB54A1BF4D5
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 13:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E5C768602E
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 13:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OcuHjmO2akvc for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 13:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5A46285567
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 13:20:09 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9FDDloE033460;
 Tue, 15 Oct 2019 13:20:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=XydGK+DnXk+HJwtjcNs2n1Ce29OSzKN9TF1Ft61aa2s=;
 b=Z5GmOLq/mRJgLZh6Hg95jHqOKzywJChEbilo19CWRjZJEb1zN1F8qHK/RDSK/UxJoNAJ
 uuzPtP5T6H+QjbQK+BAmw1b+4boHC9g9VVQgzxRxJF18MJ8ijaBx0yBKnXOyu6ctj5Zg
 yyilFbWT704s4AaBXg7dMVpWKY3+vsv8heJ2m58Ci9rpePN/g1WUQPYmSAsX21AvSTiS
 IUs02776R9zU4YuqR8FQMG5o0+/e0xThxcd98k06rhpox5Cbz4//Mo+CDjN1pAIMTGU2
 zvI8OyE3OpKceDeqiEP9DQRTFI64JdGufloVhcwoOl6l149evvIZEmfcEsGEFr5KHHJI 6A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vk68ufxmt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 15 Oct 2019 13:20:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9FDDHOt018164;
 Tue, 15 Oct 2019 13:20:06 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2vks08ukt2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 15 Oct 2019 13:20:06 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9FDK3Re005456;
 Tue, 15 Oct 2019 13:20:03 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 15 Oct 2019 13:20:03 +0000
Date: Tue, 15 Oct 2019 16:19:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alexander Gordeev <a.gordeev.box@gmail.com>
Subject: Re: [PATCH v2 1/2] dmaengine: avalon: Intel Avalon-MM DMA Interface
 for PCIe
Message-ID: <20191015131955.GH4774@kadam>
References: <cover.1570558807.git.a.gordeev.box@gmail.com>
 <3ed3c016b7fbe69e36023e7ee09c53acac8a064c.1570558807.git.a.gordeev.box@gmail.com>
 <20191009121441.GM25098@kadam>
 <20191009145811.GA3823@AlexGordeev-DPT-VI0092>
 <20191009185323.GG13286@kadam>
 <20191010085144.GA14197@AlexGordeev-DPT-VI0092>
 <20191010113034.GN13286@kadam>
 <20191015112449.GA28852@AlexGordeev-DPT-VI0092>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015112449.GA28852@AlexGordeev-DPT-VI0092>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9410
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910150121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9410
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910150121
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
Cc: devel@driverdev.osuosl.org, Michael Chen <micchen@altera.com>,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 15, 2019 at 01:24:50PM +0200, Alexander Gordeev wrote:
> On Thu, Oct 10, 2019 at 02:30:34PM +0300, Dan Carpenter wrote:
> > On Thu, Oct 10, 2019 at 10:51:45AM +0200, Alexander Gordeev wrote:
> > > On Wed, Oct 09, 2019 at 09:53:23PM +0300, Dan Carpenter wrote:
> > > > > > > +	u32 *rd_flags = hw->dma_desc_table_rd.cpu_addr->flags;
> > > > > > > +	u32 *wr_flags = hw->dma_desc_table_wr.cpu_addr->flags;
> > > > > > > +	struct avalon_dma_desc *desc;
> > > > > > > +	struct virt_dma_desc *vdesc;
> > > > > > > +	bool rd_done;
> > > > > > > +	bool wr_done;
> > > > > > > +
> > > > > > > +	spin_lock(lock);
> 
> [*]
> 
> > > > > > > +
> > > > > > > +	rd_done = (hw->h2d_last_id < 0);
> > > > > > > +	wr_done = (hw->d2h_last_id < 0);
> > > > > > > +
> > > > > > > +	if (rd_done && wr_done) {
> > > > > > > +		spin_unlock(lock);
> > > > > > > +		return IRQ_NONE;
> > > > > > > +	}
> > > > > > > +
> > > > > > > +	do {
> > > > > > > +		if (!rd_done && rd_flags[hw->h2d_last_id])
> > > > > > > +			rd_done = true;
> > > > > > > +
> > > > > > > +		if (!wr_done && wr_flags[hw->d2h_last_id])
> > > > > > > +			wr_done = true;
> > > > > > > +	} while (!rd_done || !wr_done);


Thinking about this some more, my initial instinct was still correct
actually.  If we're holding the lock to prevent the CPU from writing
to it then how is hw->d2h_last_id updated in the other thread?  Either
it must deadlock or it must be a race condition.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
