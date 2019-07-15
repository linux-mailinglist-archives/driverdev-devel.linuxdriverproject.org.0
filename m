Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B77F69EA8
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 00:04:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC35C85F66;
	Mon, 15 Jul 2019 22:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wf403pgnDjGH; Mon, 15 Jul 2019 22:04:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70D648499A;
	Mon, 15 Jul 2019 22:04:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 314801BF35C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:04:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D1B7844C0
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uAW7K1F5wNvD for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 22:04:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate16.nvidia.com (hqemgate16.nvidia.com [216.228.121.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F4D884344
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 22:04:12 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2cf85a0000>; Mon, 15 Jul 2019 15:04:10 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 15 Jul 2019 15:04:12 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 15 Jul 2019 15:04:12 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 15 Jul
 2019 22:04:11 +0000
Subject: Re: [PATCH] staging: kpc2000: Convert put_page() to put_user_page*()
From: John Hubbard <jhubbard@nvidia.com>
To: Matt Sickler <Matt.Sickler@daktronics.com>, Bharath Vedartham
 <linux.bhar@gmail.com>, "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jglisse@redhat.com" <jglisse@redhat.com>
References: <20190715195248.GA22495@bharath12345-Inspiron-5559>
 <2604fcd1-4829-d77e-9f7c-d4b731782ff9@nvidia.com>
 <SN6PR02MB4016687B605E3D97D699956EEECF0@SN6PR02MB4016.namprd02.prod.outlook.com>
 <82441723-f30e-5811-ab1c-dd9a4993d7df@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <2278975b-6ea5-5417-eb0c-9d7debdf68ce@nvidia.com>
Date: Mon, 15 Jul 2019 15:04:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <82441723-f30e-5811-ab1c-dd9a4993d7df@nvidia.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563228250; bh=7F+lrioE5/qbngjXwfnCWvzn3KWHU4WQV3R2Uk1MWm8=;
 h=X-PGP-Universal:Subject:From:To:CC:References:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=THHxjtsgf8LosY3HKog1RQ/BDV+9F/bTT64YX2I6T2AHWxoBAi0RLmklmhwM3ewuk
 OX2zlNOoGNrmox7hKvIBOIFmnJslo5CUp7RmxvNgFJCavNuCywtZwx9qel9OqBItAE
 P+rc1zZKXVbY8PZlPHkgV6xctZUI4ye2lqS+p5KgZRSDRw5AD1lZR4UfhS+ZKvl/jS
 hMQKOx3zzmXt5XuNUXh7mBFZcc4Z8kxcr7xPK49Hx+ate4QIV3mr/eky3l1SzDrtKS
 KSOMqk9cAXNlVUBhj/Q6LAOAOQVrgKk0xs5pROzdtxNCjzIBEvMLG7MeGOuyRaGQVd
 RMPff+4MqyInQ==
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/15/19 3:01 PM, John Hubbard wrote:
> On 7/15/19 2:47 PM, Matt Sickler wrote:
...
> I agree: the PageReserved check looks unnecessary here, from my outside-the-kpc_2000-team
> perspective, anyway. Assuming that your analysis above is correct, you could collapse that
> whole think into just:
> 
> @@ -211,17 +209,8 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
>         BUG_ON(acd->ldev == NULL);
>         BUG_ON(acd->ldev->pldev == NULL);
>  
> -       for (i = 0 ; i < acd->page_count ; i++) {
> -               if (!PageReserved(acd->user_pages[i])) {
> -                       set_page_dirty(acd->user_pages[i]);
> -               }
> -       }
> -
>         dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
> -
> -       for (i = 0 ; i < acd->page_count ; i++) {
> -               put_page(acd->user_pages[i]);
> -       }
> +       put_user_pages_dirty(&acd->user_pages[i], acd->page_count);

Ahem, I typed too quickly. :) Please make that:

    put_user_pages_dirty(acd->user_pages, acd->page_count);

thanks,
-- 
John Hubbard
NVIDIA

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
