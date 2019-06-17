Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D712147C10
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 10:22:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD62E853F8;
	Mon, 17 Jun 2019 08:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V6Al675hTYkd; Mon, 17 Jun 2019 08:22:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0103985899;
	Mon, 17 Jun 2019 08:22:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C21411BF403
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 08:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BEA5E8735C
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 08:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HKEfFVsURcng for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 08:22:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B174587356
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 08:22:30 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5H8EDPq036975;
 Mon, 17 Jun 2019 08:22:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=FGXkU7eOmJXcfpTdOS3rFhVnp4//dWioBuU5JvbAozk=;
 b=HoOGFZ6IDRsf/WaCfXo2ZTPgY5pwDJWXjo1xX+qTvLOMlZocWpKu1Sf00Bmkx3VFzyma
 10WCt0cIJkIFz7mHW+wD9GUOEQ0ivHG8jDJ0t4TRvpEWC+TsmSyquhiRY045QRVvKMqd
 BIDabSi8xq4vX0L9MhRibAwTnUvf3DfPIk//8VY7MahBLoeLEZ2KraHUQ39ijiOHMNDT
 8ndBBvPX7iRqpB2l3z33gYX+RiPyyzfIf8yD1/MNNifpDFIZvAldxXl3FHTYVYXdGTMe
 /6jx2aoi8UlUxIMQRg+jUh/JipGQ+5QpEWrsTOM8x9vyDm7cYa5WG5PQ0L40CVIPJPpn iA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2t4r3td2pj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Jun 2019 08:22:24 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5H8LV8W126648;
 Mon, 17 Jun 2019 08:22:24 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2t59gd3q66-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Jun 2019 08:22:24 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5H8M5I4026605;
 Mon, 17 Jun 2019 08:22:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 17 Jun 2019 01:22:05 -0700
Date: Mon, 17 Jun 2019 11:21:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: use exact allocation for dma coherent memory
Message-ID: <20190617082148.GF28859@kadam>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9290
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=782
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906170078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9290
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=820 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906170078
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-rdma@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-media@vger.kernel.org, Intel Linux Wireless <linuxwifi@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I once wrote a Smatch check based on a commit message that said we can't
pass dma_alloc_coherent() pointers to virt_to_phys().  But then I never
felt like I understood the rules enough to actually report the warnings
as bugs.

drivers/platform/x86/dcdbas.c:108 smi_data_buf_realloc() error: 'buf' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/net/caif/caif_virtio.c:414 cfv_create_genpool() error: 'cfv->alloc_addr' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/infiniband/hw/cxgb4/qp.c:135 alloc_host_sq() error: 'sq->queue' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/infiniband/hw/cxgb4/qp.c:272 create_qp() error: 'wq->rq.queue' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/infiniband/hw/cxgb4/qp.c:2628 alloc_srq_queue() error: 'wq->queue' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/infiniband/hw/ocrdma/ocrdma_verbs.c:494 ocrdma_alloc_ucontext() error: 'ctx->ah_tbl.va' came from dma_alloc_coherent() so we can't do virt_to_phys()

drivers/infiniband/hw/cxgb4/qp.c
   129  static int alloc_host_sq(struct c4iw_rdev *rdev, struct t4_sq *sq)
   130  {
   131          sq->queue = dma_alloc_coherent(&(rdev->lldi.pdev->dev), sq->memsize,
   132                                         &(sq->dma_addr), GFP_KERNEL);
   133          if (!sq->queue)
   134                  return -ENOMEM;
   135          sq->phys_addr = virt_to_phys(sq->queue);
   136          dma_unmap_addr_set(sq, mapping, sq->dma_addr);
   137          return 0;
   138  }

Is this a bug?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
