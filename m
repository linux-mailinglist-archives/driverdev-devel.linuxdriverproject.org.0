Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 238BC1599B8
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 20:26:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DB6DF20524;
	Tue, 11 Feb 2020 19:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3xw2qESCljgm; Tue, 11 Feb 2020 19:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 04B962051C;
	Tue, 11 Feb 2020 19:26:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0A651BF2F8
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 19:26:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D68D87A30
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 19:26:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SR0UPc7fg9rX for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 19:26:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DC6186D41
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 19:26:16 +0000 (UTC)
Received: from localhost (unknown [104.133.9.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59D8320637;
 Tue, 11 Feb 2020 19:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581449176;
 bh=BP1X49GBVhtO7J9Mxx4rEnC2+jALec49Ut+zDmtg/6U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GzVg36cvpotIo2pYXPWTFNNRLfCgZLYTwIYZkLi6ZbGVoBZtjOZ498AzvS5KyfVIA
 LcxMoMYp3XK3bePOVonxsPpNPUaaA6GnTeUszsLUo5Pno2ZcLaQ+ObcGD1x2vcTFlC
 qjsmCbKk98a6yqPdV0Zip823GubPQ8GC2CRZWRBU=
Date: Tue, 11 Feb 2020 11:26:15 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Pragat Pandya <pragat.pandya@gmail.com>
Subject: Re: [PATCH v2 00/19] Renaming some identifiers.
Message-ID: <20200211192615.GA1967960@kroah.com>
References: <20200207094612.GA562325@kroah.com>
 <20200210183558.11836-1-pragat.pandya@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210183558.11836-1-pragat.pandya@gmail.com>
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 11, 2020 at 12:05:39AM +0530, Pragat Pandya wrote:
> This patchset renames following nineteen variables in exfat.h
> Fix checkpatch warning: Avoid CamelCase
>  -Year->year
>  -Day->day
>  -Hour->hour
>  -Minute->minute
>  -Second->second
>  -Millisecond->millisecond
>  -FatType->fat_type
>  -ClusterSize->cluster_size
>  -NumClusters->num_clusters
>  -FreeClusters->free_clusters
>  -UsedClusters->used_clusters
>  -Name->name
>  -ShortName->short_name
>  -Attr->attr
>  -NumSubdirs->num_subdirs
>  -CreateTimestamp->create_timestamp
>  -ModifyTimestamp->modify_timestamp
>  -AccessTimestamp->access_timestamp
> 
> v2:
>  -Correct misplaced quatation character in subject line(s).
>  -Remove unnecessary '_'(underscore) character in renaming of identifier
>   MilliSecond.
>  -Drop commits renaming unused structure members.

Not all of these patches applied, so can you please rebase against my
testing tree and resend the remaining patches?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
