Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0E69021E
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 14:59:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27A1420518;
	Fri, 16 Aug 2019 12:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8IBeS60fMOun; Fri, 16 Aug 2019 12:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7FC7F22EE7;
	Fri, 16 Aug 2019 12:59:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C07A81BF2C4
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 12:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B5293827CC
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 12:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7veLnN-RLaab for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 12:59:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC1CF82580
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 12:59:11 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7GCxA41187116;
 Fri, 16 Aug 2019 12:59:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=8gWs+u+6JYU5dTkRFG7ARmVcUTQ6sdbZeILII0JTob0=;
 b=rP0booCdi7hUKy654AF24BOfR6ybmks+sY8bXQFO6po8GXRfiGZZpcir+KG4ncykT1yW
 rWUCP8gwUWPMyopj4+0On/t+B6s+Cgi8IEY7+ziyMyEEwmaPQRR8e71LrJHREkuLI81S
 U/imYP7ve0FOeSqlQYmRA8dzmt114np45DqfJtYjIDfogRNdsVtgNJH0EMJIu1kTQD8l
 cfEyvWrkhuG6wPr03PGZJAXCpjtPT61mz34czS6Aqowyoaqd5kbRhqMSIxyvhjiwbEMU
 BbKzSL4/dNySESKiYBPJGUGFa0gLBKAi7dGFiyRXBaN1sL601QLP0rRo8Z2wYqVj1zPQ 2A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2u9pjr083h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 12:59:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7GCvtvA184364;
 Fri, 16 Aug 2019 12:59:09 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2udgqg3svj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 12:59:09 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7GCx7SP020542;
 Fri, 16 Aug 2019 12:59:08 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 16 Aug 2019 05:59:06 -0700
Date: Fri, 16 Aug 2019 15:58:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhao Yakui <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 08/15] drivers/acrn: add VM memory management for
 ACRN char device
Message-ID: <20190816124757.GW1974@kadam>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-9-git-send-email-yakui.zhao@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565922356-4488-9-git-send-email-yakui.zhao@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=940
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908160134
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=994 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908160134
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
Cc: devel@driverdev.osuosl.org, Li@osuosl.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, Jason Chen CJ <jason.cj.chen@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>, Fei <lei1.li@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 16, 2019 at 10:25:49AM +0800, Zhao Yakui wrote:
> +int hugepage_map_guest(struct acrn_vm *vm, struct vm_memmap *memmap)
> +{
> +	struct page *page = NULL, *regions_buf_pg = NULL;
> +	unsigned long len, guest_gpa, vma;
> +	struct vm_memory_region *region_array;
> +	struct set_regions *regions;
> +	int max_size = PAGE_SIZE / sizeof(struct vm_memory_region);
> +	int ret;
> +
> +	if (!vm || !memmap)
> +		return -EINVAL;
> +
> +	len = memmap->len;
> +	vma = memmap->vma_base;
> +	guest_gpa = memmap->gpa;
> +
> +	/* prepare set_memory_regions info */
> +	regions_buf_pg = alloc_page(GFP_KERNEL);
> +	if (!regions_buf_pg)
> +		return -ENOMEM;
> +
> +	regions = kzalloc(sizeof(*regions), GFP_KERNEL);
> +	if (!regions) {
> +		__free_page(regions_buf_pg);
> +		return -ENOMEM;

It's better to do a goto err_free_regions_buf here.  More comments
below.

> +	}
> +	regions->mr_num = 0;
> +	regions->vmid = vm->vmid;
> +	regions->regions_gpa = page_to_phys(regions_buf_pg);
> +	region_array = page_to_virt(regions_buf_pg);
> +
> +	while (len > 0) {
> +		unsigned long vm0_gpa, pagesize;
> +
> +		ret = get_user_pages_fast(vma, 1, 1, &page);
> +		if (unlikely(ret != 1) || (!page)) {
> +			pr_err("failed to pin huge page!\n");
> +			ret = -ENOMEM;
> +			goto err;

goto err is a red flag.  It's better if error labels do one specific
named thing like:

err_regions:
	kfree(regions);
err_free_regions_buf:
	__free_page(regions_buf_pg);

We should unwind in the opposite/mirror order from how things were
allocated.  Then we can remove the if statements in the error handling.

In this situation, say the user triggers an -EFAULT in
get_user_pages_fast() in the second iteration through the loop.  That
means that "page" is the non-NULL page from the previous iteration.  We
have already added it to add_guest_map().  But now we're freeing it
without removing it from the map so probably it leads to a use after
free.

The best way to write the error handling in a loop like this is to
clean up the partial iteration that has succeed (nothing here), and then
unwind all the successful iterations at the bottom of the function.
"goto unwind_loop;"

> +		}
> +
> +		vm0_gpa = page_to_phys(page);
> +		pagesize = PAGE_SIZE << compound_order(page);
> +
> +		ret = add_guest_map(vm, vm0_gpa, guest_gpa, pagesize);
> +		if (ret < 0) {
> +			pr_err("failed to add memseg for huge page!\n");
> +			goto err;

So then here, it would be:

			pr_err("failed to add memseg for huge page!\n");
			put_page(page);
			goto unwind_loop;

regards,
dan carpenter

> +		}
> +
> +		/* fill each memory region into region_array */
> +		region_array[regions->mr_num].type = MR_ADD;
> +		region_array[regions->mr_num].gpa = guest_gpa;
> +		region_array[regions->mr_num].vm0_gpa = vm0_gpa;
> +		region_array[regions->mr_num].size = pagesize;
> +		region_array[regions->mr_num].prot =
> +				(MEM_TYPE_WB & MEM_TYPE_MASK) |
> +				(memmap->prot & MEM_ACCESS_RIGHT_MASK);
> +		regions->mr_num++;
> +		if (regions->mr_num == max_size) {
> +			pr_debug("region buffer full, set & renew regions!\n");
> +			ret = set_memory_regions(regions);
> +			if (ret < 0) {
> +				pr_err("failed to set regions,ret=%d!\n", ret);
> +				goto err;
> +			}
> +			regions->mr_num = 0;
> +		}
> +
> +		len -= pagesize;
> +		vma += pagesize;
> +		guest_gpa += pagesize;
> +	}
> +
> +	ret = set_memory_regions(regions);
> +	if (ret < 0) {
> +		pr_err("failed to set regions, ret=%d!\n", ret);
> +		goto err;
> +	}
> +
> +	__free_page(regions_buf_pg);
> +	kfree(regions);
> +
> +	return 0;
> +err:
> +	if (regions_buf_pg)
> +		__free_page(regions_buf_pg);
> +	if (page)
> +		put_page(page);
> +	kfree(regions);
> +	return ret;
> +}
> +

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
