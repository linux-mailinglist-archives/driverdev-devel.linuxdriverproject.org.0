Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 596B491693
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 14:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C3C202153E;
	Sun, 18 Aug 2019 12:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRNW8LCjL5cf; Sun, 18 Aug 2019 12:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A64562078D;
	Sun, 18 Aug 2019 12:33:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 352EB1BF3C5
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 12:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2EF62203E6
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 12:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NVZv4hq7cTgt for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 12:33:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id A2EF320387
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 12:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xzB0N5KXoocholH/YOkGDtfICAB0yGZ8RmgdPY4pQBk=; b=D8+f2WvkG3p4WYc9upT4VTsHh
 f5SeQ1l6W8TPkD72cRq3W/6BHXnBllsfy1ZRsOACKqpIfcdUUAeByjXNJlgPSq9O6kKyUS/vDaaB4
 TMH0oiTgiT4gbsjz/lmiTBkQV/X1Ifiq/f5X6PXYemIACo1rf3KK5yxYaJhdlgAXXPwEktdLrNdly
 3vYZcGes35B0aRNrWAwQ16HHXF/hiODC26eK1gpfhSbGTlhsZcluX2QuzZAsAYbte77evggr1Piz0
 UKbu6+itGXx4A24C1YJJc27Hgbnu4ZqXCrZ0eNPmmHhmA+VZctKuXUPyxYACWV2lHw2uck+Y+2NYi
 qkVoejm9Q==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hzKN0-0004ZF-AZ; Sun, 18 Aug 2019 12:33:14 +0000
Date: Sun, 18 Aug 2019 05:33:14 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v3 RESEND] staging: erofs: fix an error handling in
 erofs_readdir()
Message-ID: <20190818123314.GA29733@bombadil.infradead.org>
References: <20190818030109.GA8225@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818032111.9862-1-hsiangkao@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818032111.9862-1-hsiangkao@aol.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 Richard Weinberger <richard@nod.at>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 11:21:11AM +0800, Gao Xiang wrote:
> +		if (dentry_page == ERR_PTR(-ENOMEM)) {
> +			errln("no memory to readdir of logical block %u of nid %llu",
> +			      i, EROFS_V(dir)->nid);

I don't think you need the error message.  If we get a memory allocation
failure, there's already going to be a lot of spew in the logs from the
mm system.  And if we do fail to allocate memory, we don't need to know
the logical block number or the nid -- it has nothiing to do with those;
the system simply ran out of memory.

> +			err = -ENOMEM;
> +			break;
> +		} else if (IS_ERR(dentry_page)) {
> +			errln("fail to readdir of logical block %u of nid %llu",
> +			      i, EROFS_V(dir)->nid);
> +			err = -EFSCORRUPTED;
> +			break;
> +		}
>  
>  		de = (struct erofs_dirent *)kmap(dentry_page);
>  
> -- 
> 2.17.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
