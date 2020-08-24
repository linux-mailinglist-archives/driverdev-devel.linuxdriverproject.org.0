Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D2E24FFB8
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 16:21:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C363C87885;
	Mon, 24 Aug 2020 14:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GJC5AsU+mpQp; Mon, 24 Aug 2020 14:21:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6A58877A7;
	Mon, 24 Aug 2020 14:21:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AAE031BF2B9
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 14:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5641877A7
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 14:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MmXxQ-RTQQXn for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 14:21:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB7BB877A6
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 14:21:26 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07OEJgtT092557;
 Mon, 24 Aug 2020 14:21:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=HwyzP3BrIjRGurvk4sL4pP5D0vuXSEUSmH1lf+euvtA=;
 b=DZJdbbk7rOQFViVK4u6ciuDSfU/+SEVJLgqLjVukVHDL8QKvfTNQbzqR6wGXW/C3l5kH
 TX8U3e5x0+ixHC9R1T1Q6CXfv0xr3HVV3os8dkJ3kdoOTJAnlAFroubGVPMhsUCJmrne
 W8mx+cixF9FToZY7qRyciUw0/tb/FqjB5i/kz98NfCnPwFWOFPPvNoQ2DTycRdUlSnFg
 Y8fqPsALPGWTnc28FK40YpmNQDGPKQiOVduE4yrHUE62L0bYMCqW4/c84nH11m6XcMk6
 bDA4cMNXtDEEXgDQkXStawpqwrRk61cdr9cFLnJpemHjx+TCDV5oeexZZgBdoI9tLuwi Ww== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 333dbrmu6p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Aug 2020 14:21:25 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07OEK9kw035148;
 Mon, 24 Aug 2020 14:21:25 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 333ru4xt5p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Aug 2020 14:21:25 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 07OELO40024721;
 Mon, 24 Aug 2020 14:21:24 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Aug 2020 07:21:23 -0700
Date: Mon, 24 Aug 2020 17:21:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: alex.dewar90@gmail.com
Subject: [bug report] staging: emxx_udc: Allow for building on !ARM
Message-ID: <20200824142118.GA223827@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9722
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=487
 phishscore=0
 bulkscore=0 suspectscore=3 spamscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008240115
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9722
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1011
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0
 mlxlogscore=480 spamscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=3
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008240115
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Alex Dewar,

The patch fbcfdfab4a2c: "staging: emxx_udc: Allow for building on
!ARM" from Aug 18, 2020, leads to the following static checker
warning:

drivers/staging/emxx_udc/emxx_udc.c:2167 _nbu2ss_enable_controller() warn: inconsistent indenting
drivers/staging/emxx_udc/emxx_udc.c:2179 _nbu2ss_enable_controller() warn: inconsistent indenting
drivers/staging/emxx_udc/emxx_udc.c:2277 _nbu2ss_check_vbus() warn: 'reg_dt' can be either negative or positive
drivers/staging/emxx_udc/emxx_udc.c:2352 _nbu2ss_udc_irq() warn: 'gpiod_get_value(vbus_gpio)' returns positive and negative
drivers/staging/emxx_udc/emxx_udc.c:2361 _nbu2ss_udc_irq() warn: 'gpiod_get_value(vbus_gpio)' returns positive and negative
drivers/staging/emxx_udc/emxx_udc.c:2324 _nbu2ss_int_usb_suspend() warn: 'reg_dt' can be either negative or positive
drivers/staging/emxx_udc/emxx_udc.c:2596 nbu2ss_ep_queue() error: NULL dereference inside function
drivers/staging/emxx_udc/emxx_udc.c:2795 nbu2ss_ep_fifo_flush() warn: 'data' can be either negative or positive
drivers/staging/emxx_udc/emxx_udc.c:3151 nbu2ss_drv_remove() error: NULL dereference inside function

drivers/staging/emxx_udc/emxx_udc.c
  2580          if (unlikely(!udc->driver)) {
  2581                  dev_err(udc->dev, "%s, bogus device state %p\n", __func__,
  2582                          udc->driver);
  2583                  return -ESHUTDOWN;
  2584          }
  2585  
  2586          spin_lock_irqsave(&udc->lock, flags);
  2587  
  2588  #ifdef USE_DMA
  2589          if ((uintptr_t)req->req.buf & 0x3)
  2590                  req->unaligned = true;
  2591          else
  2592                  req->unaligned = false;
  2593  
  2594          if (req->unaligned) {
  2595                  if (!ep->virt_buf)
  2596                          ep->virt_buf = dma_alloc_coherent(NULL, PAGE_SIZE,
                                                                  ^^^^
This will oops.

  2597                                                            &ep->phys_buf,
  2598                                                            GFP_ATOMIC | GFP_DMA);
  2599                  if (ep->epnum > 0)  {
  2600                          if (ep->direct == USB_DIR_IN)
  2601                                  memcpy(ep->virt_buf, req->req.buf,
  2602                                         req->req.length);
  2603                  }
  2604          }
  2605  
  2606          if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT) &&
  2607              (req->req.dma != 0))
  2608                  _nbu2ss_dma_map_single(udc, ep, req, USB_DIR_OUT);
  2609  #endif
  2610  

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
