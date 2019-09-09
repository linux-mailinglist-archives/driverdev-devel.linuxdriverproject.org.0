Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CBEAE27E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 05:16:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BEEBD21513;
	Tue, 10 Sep 2019 03:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBLqVeZBIc-L; Tue, 10 Sep 2019 03:16:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC40D20442;
	Tue, 10 Sep 2019 03:16:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2C801BF97F
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 03:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EFBD285617
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 03:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i2P2q-trqy9D for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 03:16:22 +0000 (UTC)
X-Greylist: delayed 01:10:02 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0229.hostedemail.com
 [216.40.44.229])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 055A484C29
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 03:16:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 68ACF18021DB3
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 22:30:46 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 93C21180A6325;
 Mon,  9 Sep 2019 22:30:43 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2915:3138:3139:3140:3141:3142:3353:3622:3865:3867:3868:3872:3873:4321:5007:6119:6691:7903:8527:9040:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12297:12438:12679:12740:12760:12895:13069:13161:13229:13311:13357:13439:14181:14659:14721:21080:21627:30012:30054:30069:30070:30079:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:30,
 LUA_SUMMARY:none
X-HE-Tag: brush24_2342836b7ea35
X-Filterd-Recvd-Size: 2792
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Mon,  9 Sep 2019 22:30:42 +0000 (UTC)
Message-ID: <348e946eb5e90c1af3971fd50b5678668cc1a3d3.camel@perches.com>
Subject: Re: [PATCH] Staging: gasket: Use temporaries to reduce line length.
From: Joe Perches <joe@perches.com>
To: Sandro Volery <sandro@volery.com>, rspringer@google.com, 
 toddpoynor@google.com, benchan@chromium.org, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Mon, 09 Sep 2019 15:30:41 -0700
In-Reply-To: <20190909202820.GA5060@volery>
References: <20190909202820.GA5060@volery>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-09-09 at 22:28 +0200, Sandro Volery wrote:
> Using temporaries for gasket_page_table entries to remove scnprintf()
> statements and reduce line length, as suggested by Joe Perches. Thanks!

nak.  Slow down.  You broke the code.

Please be _way_ more careful and verify for yourself
the code you submit _before_ you submit it.

compile/test/verify, twice if necessary.

You also should have cc'd me on this patch.

> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
[]
> @@ -524,29 +526,25 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
>  	}
>  
>  	type = (enum sysfs_attribute_type)gasket_attr->data.attr_type;
> +	gpt = gasket_dev->page_table[0];
>  	switch (type) {
>  	case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
> -		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> -				gasket_page_table_num_entries(
> -					gasket_dev->page_table[0]));
> +		val = gasket_page_table_num_simple_entries(gpt);

You likely duplicated this line via copy/paste.
This should be:
		val = gasket_page_table_num_entries(gpt);

>  		break;
>  	case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
> -		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> -				gasket_page_table_num_simple_entries(
> -					gasket_dev->page_table[0]));
> +		val = gasket_page_table_num_simple_entries(gpt);

 		break;
>  	case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
> -		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> -				gasket_page_table_num_active_pages(
> -					gasket_dev->page_table[0]));
> +		val = gasket_page_table_num_active_pages(gpt);
>  		break;
>  	default:
>  		dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
>  			attr->attr.name);
>  		ret = 0;
> -		break;
> +		goto exit;
>  	}
> -
> +	ret = scnprintf(buf, PAGE_SIZE, "%u\n", val);
> +exit:
>  	gasket_sysfs_put_attr(device, gasket_attr);
>  	gasket_sysfs_put_device_data(device, gasket_dev);
>  	return ret;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
