Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D70D17D0
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 20:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9837A23492;
	Wed,  9 Oct 2019 18:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xog4D+RDieuz; Wed,  9 Oct 2019 18:53:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D45BD2340C;
	Wed,  9 Oct 2019 18:53:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 263891BF3FD
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 18:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1745C8841F
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 18:53:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xKBh9SqzMJnl for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 18:53:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D9C18836B
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 18:53:35 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99InC1R129243;
 Wed, 9 Oct 2019 18:53:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=QJPma1OkIbKt5epIKIB9FNekUDlByT3TewuVPlsRzTQ=;
 b=SUg/sdQb2S0NQd8Bhh2XGdzfX0jmUa56XIdiGQe9ybNdoCh0jdpgGqpHBQkqtPqrNFp/
 +za8xGRqIcFbDB9nZGUhyXXZLN4Eq0II+rak5SE7KiQA2HFuPOSs7sLxuvYl7KBoh1DX
 ybfCC6QnewfVKommtjm667YuTvVX9oMOkRij/9WlMCWF9JoQImAUOSgvDOhtNXPDBe/n
 eAuweRJhnC+6juVlgacND08L2t8HGDsMZ6qhl7w31EbXyFQ3yhqxiY01fzF+lmfC1RP9
 +IIcuTKR/SncFI36u1jbX3AFxqsFDllOzTc4trOBoauJqMLBvcyV/thJW0XYvFYIHT4E UQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2vektrpdr0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 18:53:32 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99Im31n190825;
 Wed, 9 Oct 2019 18:53:32 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2vh5cba087-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 18:53:32 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x99IrVVv023878;
 Wed, 9 Oct 2019 18:53:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 11:53:30 -0700
Date: Wed, 9 Oct 2019 21:53:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alexander Gordeev <a.gordeev.box@gmail.com>
Subject: Re: [PATCH v2 1/2] dmaengine: avalon: Intel Avalon-MM DMA Interface
 for PCIe
Message-ID: <20191009185323.GG13286@kadam>
References: <cover.1570558807.git.a.gordeev.box@gmail.com>
 <3ed3c016b7fbe69e36023e7ee09c53acac8a064c.1570558807.git.a.gordeev.box@gmail.com>
 <20191009121441.GM25098@kadam>
 <20191009145811.GA3823@AlexGordeev-DPT-VI0092>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009145811.GA3823@AlexGordeev-DPT-VI0092>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090153
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090153
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

On Wed, Oct 09, 2019 at 04:58:12PM +0200, Alexander Gordeev wrote:
> On Wed, Oct 09, 2019 at 03:14:41PM +0300, Dan Carpenter wrote:
> > > +config AVALON_DMA_PCI_VENDOR_ID
> > > +	hex "PCI vendor ID"
> > > +	default "0x1172"
> > > +
> > > +config AVALON_DMA_PCI_DEVICE_ID
> > > +	hex "PCI device ID"
> > > +	default "0xe003"
> > 
> > This feels wrong.  Why isn't it known in advance.
> 
> Because device designers would likely use they own IDs. The ones I
> put are just defaults inherited from the (Altera) reference design.
> 
> > > +	u32 *rd_flags = hw->dma_desc_table_rd.cpu_addr->flags;
> > > +	u32 *wr_flags = hw->dma_desc_table_wr.cpu_addr->flags;
> > > +	struct avalon_dma_desc *desc;
> > > +	struct virt_dma_desc *vdesc;
> > > +	bool rd_done;
> > > +	bool wr_done;
> > > +
> > > +	spin_lock(lock);
> > > +
> > > +	rd_done = (hw->h2d_last_id < 0);
> > > +	wr_done = (hw->d2h_last_id < 0);
> > > +
> > > +	if (rd_done && wr_done) {
> > > +		spin_unlock(lock);
> > > +		return IRQ_NONE;
> > > +	}
> > > +
> > > +	do {
> > > +		if (!rd_done && rd_flags[hw->h2d_last_id])
> > > +			rd_done = true;
> > > +
> > > +		if (!wr_done && wr_flags[hw->d2h_last_id])
> > > +			wr_done = true;
> > > +	} while (!rd_done || !wr_done);
> > 
> > This loop is very strange.  It feels like the last_id indexes needs
> > to atomic or protected from racing somehow so we don't do an out of
> > bounds read.
> 
> My bad. I should have put a comment on this. This polling comes from my
> reading of the Intel documentation:
> 
> "The MSI interrupt notifies the host when a DMA operation has completed.
> After the host receives this interrupt, it can poll the DMA read or write
> status table to determine which entry or entries have the done bit set."
> 
> "The Descriptor Controller writes a 1 to the done bit of the status DWORD
> to indicate successful completion. The Descriptor Controller also sends
> an MSI interrupt for the final descriptor. After receiving this MSI,
> host software can poll the done bit to determine status."
> 
> I sense an ambiguity above. It sounds possible an MSI interrupt could be
> delivered before corresponding done bit is set. May be imperfect wording..
> Anyway, the loop does look weird and in reality I doubt I observed the
> done bit unset even once. So I put this polling just in case.

You're missing my point.  When we set
hw->d2h_last_id = 1;
...
hw->d2h_last_id = 2;

There is a tiny moment where ->d2h_last_id is transitioning from 1 to 2
where its value is unknown.  We're in a busy loop here so we have a
decent chance of hitting that 1/1000,000th of a second.  If we happen to
hit it at exactly the right time then we're reading from a random
address and it will cause an oops.

We have to use atomic_t types or something to handle race conditions.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
